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
                                  (letrec ((real/c
                                            (lambda (g7160 g7161 g7162)
                                              (letrec ((g7467
                                                        (letrec ((x-cnd7468
                                                                  (real?
                                                                   g7162)))
                                                          (if x-cnd7468
                                                            g7162
                                                            (blame
                                                             g7160
                                                             'real?)))))
                                                g7467)))
                                           (boolean?/c
                                            (lambda (g7163 g7164 g7165)
                                              (letrec ((g7469
                                                        (letrec ((x-cnd7470
                                                                  (boolean?
                                                                   g7165)))
                                                          (if x-cnd7470
                                                            g7165
                                                            (blame
                                                             g7163
                                                             'boolean?)))))
                                                g7469)))
                                           (number?/c
                                            (lambda (g7166 g7167 g7168)
                                              (letrec ((g7471
                                                        (letrec ((x-cnd7472
                                                                  (number?
                                                                   g7168)))
                                                          (if x-cnd7472
                                                            g7168
                                                            (blame
                                                             g7166
                                                             'number?)))))
                                                g7471)))
                                           (any/c
                                            (lambda (g7169 g7170 g7171)
                                              (letrec ((g7473
                                                        (letrec ((x-cnd7474
                                                                  ((lambda (v)
                                                                     (letrec ((g7475
                                                                               #t))
                                                                       g7475))
                                                                   g7171)))
                                                          (if x-cnd7474
                                                            g7171
                                                            (blame
                                                             g7169
                                                             '(lambda (v)
                                                                #t))))))
                                                g7473)))
                                           (any?/c
                                            (lambda (g7172 g7173 g7174)
                                              (letrec ((g7476
                                                        (letrec ((x-cnd7477
                                                                  ((lambda (v)
                                                                     (letrec ((g7478
                                                                               #t))
                                                                       g7478))
                                                                   g7174)))
                                                          (if x-cnd7477
                                                            g7174
                                                            (blame
                                                             g7172
                                                             '(lambda (v)
                                                                #t))))))
                                                g7476)))
                                           (image? any/c)
                                           (cons?/c
                                            (lambda (g7175 g7176 g7177)
                                              (letrec ((g7479
                                                        (letrec ((x-cnd7480
                                                                  (pair?
                                                                   g7177)))
                                                          (if x-cnd7480
                                                            g7177
                                                            (blame
                                                             g7175
                                                             'pair?)))))
                                                g7479)))
                                           (pair?/c
                                            (lambda (g7178 g7179 g7180)
                                              (letrec ((g7481
                                                        (letrec ((x-cnd7482
                                                                  (pair?
                                                                   g7180)))
                                                          (if x-cnd7482
                                                            g7180
                                                            (blame
                                                             g7178
                                                             'pair?)))))
                                                g7481)))
                                           (integer?/c
                                            (lambda (g7181 g7182 g7183)
                                              (letrec ((g7483
                                                        (letrec ((x-cnd7484
                                                                  (integer?
                                                                   g7183)))
                                                          (if x-cnd7484
                                                            g7183
                                                            (blame
                                                             g7181
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
                                                                          (cons
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
                                            (lambda (g7184 g7185 g7186)
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
                                                                   g7186)))
                                                          (if x-cnd7500
                                                            g7186
                                                            (blame
                                                             g7184
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7499)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7503 v)) g7503)))
                                           (+
                                            ((lambda (j7189 k7190 f7191)
                                               (letrec ((g7505
                                                         (lambda (g7187 g7188)
                                                           (letrec ((g7506
                                                                     (letrec ((x7507
                                                                               (letrec ((x7509
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7187))
                                                                                        (x7508
                                                                                         (number?/c
                                                                                          j7189
                                                                                          k7190
                                                                                          g7188)))
                                                                                 (f7191
                                                                                  x7509
                                                                                  x7508))))
                                                                       (number?/c
                                                                        j7189
                                                                        k7190
                                                                        x7507))))
                                                             g7506))))
                                                 g7505))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7504 (orig-+ a b)))
                                                 g7504))))
                                           (-
                                            ((lambda (j7194 k7195 f7196)
                                               (letrec ((g7511
                                                         (lambda (g7192 g7193)
                                                           (letrec ((g7512
                                                                     (letrec ((x7513
                                                                               (letrec ((x7515
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7192))
                                                                                        (x7514
                                                                                         (number?/c
                                                                                          j7194
                                                                                          k7195
                                                                                          g7193)))
                                                                                 (f7196
                                                                                  x7515
                                                                                  x7514))))
                                                                       (number?/c
                                                                        j7194
                                                                        k7195
                                                                        x7513))))
                                                             g7512))))
                                                 g7511))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7510 (orig-- a b)))
                                                 g7510))))
                                           (*
                                            ((lambda (j7199 k7200 f7201)
                                               (letrec ((g7517
                                                         (lambda (g7197 g7198)
                                                           (letrec ((g7518
                                                                     (letrec ((x7519
                                                                               (letrec ((x7521
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7197))
                                                                                        (x7520
                                                                                         (number?/c
                                                                                          j7199
                                                                                          k7200
                                                                                          g7198)))
                                                                                 (f7201
                                                                                  x7521
                                                                                  x7520))))
                                                                       (number?/c
                                                                        j7199
                                                                        k7200
                                                                        x7519))))
                                                             g7518))))
                                                 g7517))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7516 (orig-* a b)))
                                                 g7516))))
                                           (/
                                            ((lambda (j7204 k7205 f7206)
                                               (letrec ((g7523
                                                         (lambda (g7202 g7203)
                                                           (letrec ((g7524
                                                                     (letrec ((x7525
                                                                               (letrec ((x7527
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7202))
                                                                                        (x7526
                                                                                         (number?/c
                                                                                          j7204
                                                                                          k7205
                                                                                          g7203)))
                                                                                 (f7206
                                                                                  x7527
                                                                                  x7526))))
                                                                       (number?/c
                                                                        j7204
                                                                        k7205
                                                                        x7525))))
                                                             g7524))))
                                                 g7523))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7522 (orig-/ a b)))
                                                 g7522))))
                                           (car
                                            ((lambda (j7208 k7209 f7210)
                                               (letrec ((g7529
                                                         (lambda (g7207)
                                                           (letrec ((g7530
                                                                     (letrec ((x7531
                                                                               (letrec ((x7532
                                                                                         (pair?/c
                                                                                          j7208
                                                                                          k7209
                                                                                          g7207)))
                                                                                 (f7210
                                                                                  x7532))))
                                                                       (any/c
                                                                        j7208
                                                                        k7209
                                                                        x7531))))
                                                             g7530))))
                                                 g7529))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7528 (orig-car p)))
                                                 g7528))))
                                           (cdr
                                            ((lambda (j7212 k7213 f7214)
                                               (letrec ((g7534
                                                         (lambda (g7211)
                                                           (letrec ((g7535
                                                                     (letrec ((x7536
                                                                               (letrec ((x7537
                                                                                         (pair?/c
                                                                                          j7212
                                                                                          k7213
                                                                                          g7211)))
                                                                                 (f7214
                                                                                  x7537))))
                                                                       (any/c
                                                                        j7212
                                                                        k7213
                                                                        x7536))))
                                                             g7535))))
                                                 g7534))
                                             'server
                                             'client
                                             (lambda (p)
                                               (letrec ((g7533 (orig-cdr p)))
                                                 g7533))))
                                           (cons
                                            ((lambda (j7217 k7218 f7219)
                                               (letrec ((g7539
                                                         (lambda (g7215 g7216)
                                                           (letrec ((g7540
                                                                     (letrec ((x7541
                                                                               (letrec ((x7543
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7215))
                                                                                        (x7542
                                                                                         (any/c
                                                                                          j7217
                                                                                          k7218
                                                                                          g7216)))
                                                                                 (f7219
                                                                                  x7543
                                                                                  x7542))))
                                                                       (pair?/c
                                                                        j7217
                                                                        k7218
                                                                        x7541))))
                                                             g7540))))
                                                 g7539))
                                             'server
                                             'client
                                             (lambda (a b)
                                               (letrec ((g7538 (cons a b)))
                                                 g7538))))
                                           (vector-ref
                                            ((lambda (j7221 k7222 f7223)
                                               (letrec ((g7545
                                                         (lambda (g7220)
                                                           (letrec ((g7546
                                                                     (letrec ((x7547
                                                                               (letrec ((x7548
                                                                                         (vector?/c
                                                                                          j7221
                                                                                          k7222
                                                                                          g7220)))
                                                                                 (f7223
                                                                                  x7548))))
                                                                       (integer?/c
                                                                        j7221
                                                                        k7222
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
                                            ((lambda (j7226 k7227 f7228)
                                               (letrec ((g7550
                                                         (lambda (g7224 g7225)
                                                           (letrec ((g7551
                                                                     (letrec ((x7552
                                                                               (letrec ((x7554
                                                                                         (vector?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7224))
                                                                                        (x7553
                                                                                         (integer?/c
                                                                                          j7226
                                                                                          k7227
                                                                                          g7225)))
                                                                                 (f7228
                                                                                  x7554
                                                                                  x7553))))
                                                                       (any/c
                                                                        j7226
                                                                        k7227
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
                                              (letrec ((g7555 #t)) g7555)))
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
                                                        (letrec ((val7143
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7615
                                                                    (if val7143
                                                                      val7143
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
                                                                  (numer?)))
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
                                                        (letrec ((val7144
                                                                  (< x y)))
                                                          (letrec ((g7636
                                                                    (if val7144
                                                                      val7144
                                                                      (letrec ((val7145
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7637
                                                                                  (if val7145
                                                                                    val7145
                                                                                    #f)))
                                                                          g7637)))))
                                                            g7636))))
                                                g7634)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7638
                                                        (letrec ((val7146
                                                                  (letrec ((x7639
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7639
                                                                     9))))
                                                          (letrec ((g7640
                                                                    (if val7146
                                                                      val7146
                                                                      (letrec ((val7147
                                                                                (letrec ((x7641
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7641
                                                                                   10))))
                                                                        (letrec ((g7642
                                                                                  (if val7147
                                                                                    val7147
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
                                                        (letrec ((val7148
                                                                  (eq? a b)))
                                                          (letrec ((g7658
                                                                    (if val7148
                                                                      val7148
                                                                      (letrec ((val7149
                                                                                (letrec ((x7660
                                                                                          (null?
                                                                                           a))
                                                                                         (x7659
                                                                                          (null?
                                                                                           b)))
                                                                                  (and x7660
                                                                                       x7659))))
                                                                        (letrec ((g7661
                                                                                  (if val7149
                                                                                    val7149
                                                                                    (letrec ((val7150
                                                                                              (letrec ((x7664
                                                                                                        (string?
                                                                                                         a))
                                                                                                       (x7663
                                                                                                        (string?
                                                                                                         b))
                                                                                                       (x7662
                                                                                                        (string=?
                                                                                                         a
                                                                                                         b)))
                                                                                                (and x7664
                                                                                                     x7663
                                                                                                     x7662))))
                                                                                      (letrec ((g7665
                                                                                                (if val7150
                                                                                                  val7150
                                                                                                  (letrec ((val7151
                                                                                                            (letrec ((x7673
                                                                                                                      (pair?
                                                                                                                       a))
                                                                                                                     (x7672
                                                                                                                      (pair?
                                                                                                                       b))
                                                                                                                     (x7669
                                                                                                                      (letrec ((x7671
                                                                                                                                (car
                                                                                                                                 a))
                                                                                                                               (x7670
                                                                                                                                (car
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7671
                                                                                                                         x7670)))
                                                                                                                     (x7666
                                                                                                                      (letrec ((x7668
                                                                                                                                (cdr
                                                                                                                                 a))
                                                                                                                               (x7667
                                                                                                                                (cdr
                                                                                                                                 b)))
                                                                                                                        (equal?
                                                                                                                         x7668
                                                                                                                         x7667))))
                                                                                                              (and x7673
                                                                                                                   x7672
                                                                                                                   x7669
                                                                                                                   x7666))))
                                                                                                    (letrec ((g7674
                                                                                                              (if val7151
                                                                                                                val7151
                                                                                                                (letrec ((x7693
                                                                                                                          (vector?
                                                                                                                           a))
                                                                                                                         (x7692
                                                                                                                          (vector?
                                                                                                                           b))
                                                                                                                         (x7675
                                                                                                                          (letrec ((x7689
                                                                                                                                    (letrec ((x7690
                                                                                                                                              (letrec ((x7691
                                                                                                                                                        (vector-length
                                                                                                                                                         a)))
                                                                                                                                                (n
                                                                                                                                                 x7691))))
                                                                                                                                      (x7690)))
                                                                                                                                   (x7676
                                                                                                                                    (letrec ((x7687
                                                                                                                                              (letrec ((x7688
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7688
                                                                                                                                                 n)))
                                                                                                                                             (x7677
                                                                                                                                              (letrec ((loop
                                                                                                                                                        (lambda (i)
                                                                                                                                                          (letrec ((g7678
                                                                                                                                                                    (letrec ((x7685
                                                                                                                                                                              (=
                                                                                                                                                                               i
                                                                                                                                                                               n))
                                                                                                                                                                             (x7679
                                                                                                                                                                              (letrec ((x7682
                                                                                                                                                                                        (letrec ((x7684
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   a
                                                                                                                                                                                                   i))
                                                                                                                                                                                                 (x7683
                                                                                                                                                                                                  (vector-ref
                                                                                                                                                                                                   b
                                                                                                                                                                                                   i)))
                                                                                                                                                                                          (equal?
                                                                                                                                                                                           x7684
                                                                                                                                                                                           x7683)))
                                                                                                                                                                                       (x7680
                                                                                                                                                                                        (letrec ((x7681
                                                                                                                                                                                                  (+
                                                                                                                                                                                                   i
                                                                                                                                                                                                   1)))
                                                                                                                                                                                          (loop
                                                                                                                                                                                           x7681))))
                                                                                                                                                                                (and x7682
                                                                                                                                                                                     x7680))))
                                                                                                                                                                      (or x7685
                                                                                                                                                                          x7679))))
                                                                                                                                                            g7678))))
                                                                                                                                                (letrec ((g7686
                                                                                                                                                          (loop
                                                                                                                                                           0)))
                                                                                                                                                  g7686))))
                                                                                                                                      (and x7687
                                                                                                                                           x7677))))
                                                                                                                            (let x7689 x7676))))
                                                                                                                  (and x7693
                                                                                                                       x7692
                                                                                                                       x7675)))))
                                                                                                      g7674)))))
                                                                                        g7665)))))
                                                                          g7661)))))
                                                            g7658))))
                                                g7657)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7694
                                                        (letrec ((x7695
                                                                  (letrec ((x7696
                                                                            (letrec ((x7697
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7697))))
                                                                    (car
                                                                     x7696))))
                                                          (cdr x7695))))
                                                g7694)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7698
                                                        (letrec ((x7699
                                                                  (letrec ((x7700
                                                                            (letrec ((x7701
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7701))))
                                                                    (car
                                                                     x7700))))
                                                          (car x7699))))
                                                g7698)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7702 (eq? x y)))
                                                g7702)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7703
                                                        (letrec ((x7705
                                                                  (number? x)))
                                                          (assert x7705)))
                                                       (g7704
                                                        (letrec ((val7152
                                                                  (> x y)))
                                                          (letrec ((g7706
                                                                    (if val7152
                                                                      val7152
                                                                      (letrec ((val7153
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7707
                                                                                  (if val7153
                                                                                    val7153
                                                                                    #f)))
                                                                          g7707)))))
                                                            g7706))))
                                                g7704)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7708
                                                        (letrec ((x7711
                                                                  (string?
                                                                   filename)))
                                                          (assert x7711)))
                                                       (g7709
                                                        (letrec ((x7712
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7712)))
                                                       (g7710
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7713
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7714 res))
                                                            g7714))))
                                                g7710)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7715 (cons x '())))
                                                g7715)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7716
                                                        (letrec ((x7719
                                                                  (char? c1)))
                                                          (assert x7719)))
                                                       (g7717
                                                        (letrec ((x7720
                                                                  (char? c2)))
                                                          (assert x7720)))
                                                       (g7718
                                                        (letrec ((val7154
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7721
                                                                    (if val7154
                                                                      val7154
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7721))))
                                                g7718)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7722
                                                        (letrec ((x7723
                                                                  (letrec ((x7724
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7724))))
                                                          (cdr x7723))))
                                                g7722)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7725
                                                        (letrec ((x7726
                                                                  (letrec ((x7727
                                                                            (letrec ((x7728
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7728))))
                                                                    (car
                                                                     x7727))))
                                                          (cdr x7726))))
                                                g7725)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7729
                                                        (letrec ((x7730
                                                                  (letrec ((x7731
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7731))))
                                                          (car x7730))))
                                                g7729)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7732
                                                        (letrec ((x7733
                                                                  (letrec ((x7734
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7734))))
                                                          (car x7733))))
                                                g7732)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7735
                                                        (letrec ((x7738
                                                                  (char? c1)))
                                                          (assert x7738)))
                                                       (g7736
                                                        (letrec ((x7739
                                                                  (char? c2)))
                                                          (assert x7739)))
                                                       (g7737
                                                        (letrec ((x7740
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7740))))
                                                g7737)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7741
                                                        (letrec ((x7742
                                                                  (letrec ((x7743
                                                                            (letrec ((x7744
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7744))))
                                                                    (car
                                                                     x7743))))
                                                          (car x7742))))
                                                g7741)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7745
                                                        (letrec ((x7747
                                                                  (number? x)))
                                                          (assert x7747)))
                                                       (g7746 (< x 0)))
                                                g7746)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7748 (memq e l)))
                                                g7748)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7749
                                                        (letrec ((x7750
                                                                  (letrec ((x7751
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7751))))
                                                          (car x7750))))
                                                g7749)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7752 '())) g7752)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7753
                                                        (letrec ((x7755
                                                                  (list? l)))
                                                          (assert x7755)))
                                                       (g7754
                                                        (letrec ((x-cnd7756
                                                                  (null? l)))
                                                          (if x-cnd7756
                                                            '()
                                                            (letrec ((x7759
                                                                      (letrec ((x7760
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7760)))
                                                                     (x7757
                                                                      (letrec ((x7758
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7758))))
                                                              (append
                                                               x7759
                                                               x7757))))))
                                                g7754)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7761
                                                        (letrec ((x7762
                                                                  (letrec ((x7763
                                                                            (letrec ((x7764
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7764))))
                                                                    (car
                                                                     x7763))))
                                                          (car x7762))))
                                                g7761)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7765
                                                        (letrec ((x7766
                                                                  (letrec ((x7767
                                                                            (letrec ((x7768
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7768))))
                                                                    (cdr
                                                                     x7767))))
                                                          (cdr x7766))))
                                                g7765)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7769
                                                        (letrec ((x7771
                                                                  (number? x)))
                                                          (assert x7771)))
                                                       (g7770
                                                        (letrec ((x7772
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7772))))
                                                g7770)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7773
                                                        (letrec ((x7774
                                                                  (letrec ((x7775
                                                                            (letrec ((x7776
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7776))))
                                                                    (car
                                                                     x7775))))
                                                          (car x7774))))
                                                g7773)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7777
                                                        (letrec ((x7780
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7780)))
                                                       (g7778
                                                        (letrec ((x7781
                                                                  (list?
                                                                   args)))
                                                          (assert x7781)))
                                                       (g7779
                                                        (if cnd
                                                          (letrec ((g7782
                                                                    (proc)))
                                                            g7782)
                                                          (if cnd
                                                            (letrec ((g7783
                                                                      (letrec ((x7784
                                                                                (car
                                                                                 args)))
                                                                        (proc
                                                                         x7784))))
                                                              g7783)
                                                            (if cnd
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
                                                              (if cnd
                                                                (letrec ((g7788
                                                                          (letrec ((x7791
                                                                                    (car
                                                                                     args))
                                                                                   (x7790
                                                                                    (cadr
                                                                                     args))
                                                                                   (x7789
                                                                                    (caddr
                                                                                     args)))
                                                                            (proc
                                                                             x7791
                                                                             x7790
                                                                             x7789))))
                                                                  g7788)
                                                                (if cnd
                                                                  (letrec ((g7792
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
                                                                                       args)))
                                                                              (proc
                                                                               x7796
                                                                               x7795
                                                                               x7794
                                                                               x7793))))
                                                                    g7792)
                                                                  (if cnd
                                                                    (letrec ((g7797
                                                                              (letrec ((x7803
                                                                                        (car
                                                                                         args))
                                                                                       (x7802
                                                                                        (cadr
                                                                                         args))
                                                                                       (x7801
                                                                                        (caddr
                                                                                         args))
                                                                                       (x7800
                                                                                        (cadddr
                                                                                         args))
                                                                                       (x7798
                                                                                        (letrec ((x7799
                                                                                                  (cddddr
                                                                                                   args)))
                                                                                          (car
                                                                                           x7799))))
                                                                                (proc
                                                                                 x7803
                                                                                 x7802
                                                                                 x7801
                                                                                 x7800
                                                                                 x7798))))
                                                                      g7797)
                                                                    (if cnd
                                                                      (letrec ((g7804
                                                                                (letrec ((x7812
                                                                                          (car
                                                                                           args))
                                                                                         (x7811
                                                                                          (cadr
                                                                                           args))
                                                                                         (x7810
                                                                                          (caddr
                                                                                           args))
                                                                                         (x7809
                                                                                          (cadddr
                                                                                           args))
                                                                                         (x7807
                                                                                          (letrec ((x7808
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (car
                                                                                             x7808)))
                                                                                         (x7805
                                                                                          (letrec ((x7806
                                                                                                    (cddddr
                                                                                                     args)))
                                                                                            (cadr
                                                                                             x7806))))
                                                                                  (proc
                                                                                   x7812
                                                                                   x7811
                                                                                   x7810
                                                                                   x7809
                                                                                   x7807
                                                                                   x7805))))
                                                                        g7804)
                                                                      (if cnd
                                                                        (letrec ((g7813
                                                                                  (letrec ((x7823
                                                                                            (car
                                                                                             args))
                                                                                           (x7822
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7821
                                                                                            (caddr
                                                                                             args))
                                                                                           (x7820
                                                                                            (cadddr
                                                                                             args))
                                                                                           (x7818
                                                                                            (letrec ((x7819
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (car
                                                                                               x7819)))
                                                                                           (x7816
                                                                                            (letrec ((x7817
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (cadr
                                                                                               x7817)))
                                                                                           (x7814
                                                                                            (letrec ((x7815
                                                                                                      (cddddr
                                                                                                       args)))
                                                                                              (caddr
                                                                                               x7815))))
                                                                                    (proc
                                                                                     x7823
                                                                                     x7822
                                                                                     x7821
                                                                                     x7820
                                                                                     x7818
                                                                                     x7816
                                                                                     x7814))))
                                                                          g7813)
                                                                        (letrec ((g7824
                                                                                  (error
                                                                                   "Unsupported call.")))
                                                                          g7824)))))))))))
                                                g7779)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g7825
                                                        (letrec ((x7827
                                                                  (list? l)))
                                                          (assert x7827)))
                                                       (g7826
                                                        (letrec ((x-cnd7828
                                                                  (null? l)))
                                                          (if x-cnd7828
                                                            #f
                                                            (letrec ((x-cnd7829
                                                                      (letrec ((x7830
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x7830
                                                                         e))))
                                                              (if x-cnd7829
                                                                l
                                                                (letrec ((x7831
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x7831))))))))
                                                g7826)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g7832
                                                        (letrec ((x7833
                                                                  (letrec ((x7834
                                                                            (letrec ((x7835
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7835))))
                                                                    (cdr
                                                                     x7834))))
                                                          (cdr x7833))))
                                                g7832)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g7836
                                                        (letrec ((x7837
                                                                  (letrec ((x7838
                                                                            (letrec ((x7839
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7839))))
                                                                    (cdr
                                                                     x7838))))
                                                          (car x7837))))
                                                g7836)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g7840 (random 42)))
                                                g7840)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g7841
                                                        (letrec ((x7843
                                                                  (number? x)))
                                                          (assert x7843)))
                                                       (g7842 (= x 0)))
                                                g7842)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g7844
                                                        (letrec ((val7155
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7845
                                                                    (if val7155
                                                                      val7155
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7845))))
                                                g7844)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g7846
                                                        (letrec ((x7847
                                                                  (cdr x)))
                                                          (car x7847))))
                                                g7846)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g7848
                                                        (letrec ((val7156
                                                                  (letrec ((x7851
                                                                            (pair?
                                                                             l))
                                                                           (x7849
                                                                            (letrec ((x7850
                                                                                      (cdr
                                                                                       l)))
                                                                              (list?
                                                                               x7850))))
                                                                    (and x7851
                                                                         x7849))))
                                                          (letrec ((g7852
                                                                    (if val7156
                                                                      val7156
                                                                      (null?
                                                                       l))))
                                                            g7852))))
                                                g7848)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g7853
                                                        (letrec ((x7854
                                                                  (letrec ((x7855
                                                                            (letrec ((x7856
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7856))))
                                                                    (cdr
                                                                     x7855))))
                                                          (cdr x7854))))
                                                g7853)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g7857
                                                        (letrec ((x-cnd7858
                                                                  (letrec ((x7859
                                                                            #\0))
                                                                    (char<=?
                                                                     x7859
                                                                     c))))
                                                          (if x-cnd7858
                                                            (letrec ((x7860
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x7860))
                                                            #f))))
                                                g7857)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g7861
                                                        (letrec ((x7863
                                                                  (list? l)))
                                                          (assert x7863)))
                                                       (g7862
                                                        (letrec ((x-cnd7864
                                                                  (null? l)))
                                                          (if x-cnd7864
                                                            #f
                                                            (letrec ((x-cnd7865
                                                                      (letrec ((x7866
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x7866
                                                                         k))))
                                                              (if x-cnd7865
                                                                (car l)
                                                                (letrec ((x7867
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7867))))))))
                                                g7862)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g7868 (if x #f #t)))
                                                g7868)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g7869 (append l1 l2)))
                                                g7869)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g7870
                                                        (letrec ((x7872
                                                                  (list? l)))
                                                          (assert x7872)))
                                                       (g7871
                                                        (letrec ((x-cnd7873
                                                                  (null? l)))
                                                          (if x-cnd7873
                                                            #f
                                                            (letrec ((x-cnd7874
                                                                      (letrec ((x7875
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x7875
                                                                         e))))
                                                              (if x-cnd7874
                                                                l
                                                                (letrec ((x7876
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x7876))))))))
                                                g7871)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g7877
                                                        (letrec ((x7878
                                                                  (letrec ((x7879
                                                                            (letrec ((x7880
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7880))))
                                                                    (cdr
                                                                     x7879))))
                                                          (car x7878))))
                                                g7877)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g7881
                                                        (letrec ((x7883
                                                                  (list? l)))
                                                          (assert x7883)))
                                                       (g7882
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g7884
                                                                              (letrec ((x-cnd7885
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd7885
                                                                                  0
                                                                                  (letrec ((x7886
                                                                                            (letrec ((x7887
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x7887))))
                                                                                    (+
                                                                                     1
                                                                                     x7886))))))
                                                                      g7884))))
                                                          (letrec ((g7888
                                                                    (rec l)))
                                                            g7888))))
                                                g7882)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7889
                                                        (letrec ((x7892
                                                                  (char? c1)))
                                                          (assert x7892)))
                                                       (g7890
                                                        (letrec ((x7893
                                                                  (char? c2)))
                                                          (assert x7893)))
                                                       (g7891
                                                        (letrec ((val7157
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7894
                                                                    (if val7157
                                                                      val7157
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7894))))
                                                g7891)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g7895
                                                        (letrec ((x7896
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x7896))))
                                                g7895)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g7897
                                                        (letrec ((x7898
                                                                  (letrec ((x7899
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7899))))
                                                          (cdr x7898))))
                                                g7897)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g7900
                                                        (letrec ((x7902
                                                                  (list? l)))
                                                          (assert x7902)))
                                                       (g7901
                                                        (letrec ((x-cnd7903
                                                                  (null? l)))
                                                          (if x-cnd7903
                                                            #f
                                                            (letrec ((x-cnd7904
                                                                      (letrec ((x7905
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x7905
                                                                         k))))
                                                              (if x-cnd7904
                                                                (car l)
                                                                (letrec ((x7906
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x7906))))))))
                                                g7901)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g7907
                                                        (letrec ((x7908
                                                                  (car x)))
                                                          (car x7908))))
                                                g7907)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g7909
                                                        (letrec ((x7912
                                                                  (char? c1)))
                                                          (assert x7912)))
                                                       (g7910
                                                        (letrec ((x7913
                                                                  (char? c2)))
                                                          (assert x7913)))
                                                       (g7911
                                                        (letrec ((x7914
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7914))))
                                                g7911)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g7915
                                                        (letrec ((val7158
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g7916
                                                                    (if val7158
                                                                      val7158
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g7916))))
                                                g7915)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g7917
                                                        (letrec ((x7920
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7920)))
                                                       (g7918
                                                        (letrec ((x7921
                                                                  (list? l)))
                                                          (assert x7921)))
                                                       (g7919
                                                        (letrec ((x-cnd7922
                                                                  (null? l)))
                                                          (if x-cnd7922
                                                            #t
                                                            (letrec ((x-cnd7923
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd7923
                                                                (letrec ((g7924
                                                                          (letrec ((x7926
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x7926)))
                                                                         (g7925
                                                                          (letrec ((x7927
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x7927))))
                                                                  g7925)
                                                                '()))))))
                                                g7919)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7928
                                                        (letrec ((x7930
                                                                  (number? x)))
                                                          (assert x7930)))
                                                       (g7929
                                                        (letrec ((x-cnd7931
                                                                  (< x 0)))
                                                          (if x-cnd7931
                                                            (- 0 x)
                                                            x))))
                                                g7929)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7932
                                                        (letrec ((x7935
                                                                  (char? c1)))
                                                          (assert x7935)))
                                                       (g7933
                                                        (letrec ((x7936
                                                                  (char? c2)))
                                                          (assert x7936)))
                                                       (g7934
                                                        (letrec ((val7159
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7937
                                                                    (if val7159
                                                                      val7159
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g7937))))
                                                g7934)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g7938
                                                        (letrec ((x7939
                                                                  (letrec ((x7940
                                                                            (letrec ((x7941
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7941))))
                                                                    (cdr
                                                                     x7940))))
                                                          (car x7939))))
                                                g7938)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g7942 #f)) g7942)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g7943
                                                        (letrec ((x7945
                                                                  (letrec ((x7946
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x7946)))
                                                                 (x7944
                                                                  (gcd m n)))
                                                          (/ x7945 x7944))))
                                                g7943)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g7947
                                                        (letrec ((x7949
                                                                  (number? x)))
                                                          (assert x7949)))
                                                       (g7948
                                                        (letrec ((x7950
                                                                  (<= x y)))
                                                          (not x7950))))
                                                g7948)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g7951
                                                        (letrec ((x7955
                                                                  (list? l)))
                                                          (assert x7955)))
                                                       (g7952
                                                        (letrec ((x7956
                                                                  (number?
                                                                   index)))
                                                          (assert x7956)))
                                                       (g7953
                                                        (letrec ((x7957
                                                                  (letrec ((x7958
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x7958))))
                                                          (assert x7957)))
                                                       (g7954
                                                        (letrec ((x-cnd7959
                                                                  (= index 0)))
                                                          (if x-cnd7959
                                                            (car l)
                                                            (letrec ((x7961
                                                                      (cdr l))
                                                                     (x7960
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x7961
                                                               x7960))))))
                                                g7954)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g7962
                                                        (letrec ((x-cnd7963
                                                                  (= b 0)))
                                                          (if x-cnd7963
                                                            a
                                                            (letrec ((x7964
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x7964))))))
                                                g7962)))
                                           (image
                                            (lambda ()
                                              (letrec ((g7965
                                                        (cons 'image '())))
                                                g7965)))
                                           (image?
                                            (lambda (image7452)
                                              (letrec ((g7966
                                                        (letrec ((x7967
                                                                  (car
                                                                   image7452)))
                                                          (eq? x7967 'image))))
                                                g7966)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g7968 (image)))
                                                g7968)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g7969 (image)))
                                                g7969)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g7970 (image)))
                                                g7970)))
                                           (min
                                            (lambda (x y)
                                              (letrec ((g7971
                                                        (letrec ((x-cnd7972
                                                                  (<= x y)))
                                                          (if x-cnd7972 x y))))
                                                g7971)))
                                           (max
                                            (lambda (x y)
                                              (letrec ((g7973
                                                        (letrec ((x-cnd7974
                                                                  (>= x y)))
                                                          (if x-cnd7974 x y))))
                                                g7973)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g7975
                                                        (letrec ((x-cnd7976
                                                                  (>= x 0)))
                                                          (if x-cnd7976
                                                            x
                                                            (- 0 x)))))
                                                g7975)))
                                           (sqr
                                            (lambda (x)
                                              (letrec ((g7977 (* x x)))
                                                g7977)))
                                           (WIDTH 400)
                                           (HEIGHT 400)
                                           (MT-SCENE
                                            (empty-scene WIDTH HEIGHT))
                                           (PLAYER-SPEED 4)
                                           (ZOMBIE-SPEED 2)
                                           (ZOMBIE-RADIUS 20)
                                           (PLAYER-RADIUS 20)
                                           (PLAYER-IMG
                                            (circle
                                             PLAYER-RADIUS
                                             "solid"
                                             "green"))
                                           (posn/c
                                            (lambda (j7230 k7231 f7232)
                                              (letrec ((g7978
                                                        (lambda (g7229)
                                                          (letrec ((g7979
                                                                    (letrec ((x7233
                                                                              ((lambda (g7237
                                                                                        g7238
                                                                                        g7239)
                                                                                 (letrec ((g7980
                                                                                           (letrec ((x-cnd7981
                                                                                                     ((lambda (v7236)
                                                                                                        (letrec ((g7982
                                                                                                                  (letrec ((x-cnd7983
                                                                                                                            (eq?
                                                                                                                             'x
                                                                                                                             v7236)))
                                                                                                                    (if x-cnd7983
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd7984
                                                                                                                                (eq?
                                                                                                                                 'y
                                                                                                                                 v7236)))
                                                                                                                        (if x-cnd7984
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd7985
                                                                                                                                    (eq?
                                                                                                                                     'posn
                                                                                                                                     v7236)))
                                                                                                                            (if x-cnd7985
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd7986
                                                                                                                                        (eq?
                                                                                                                                         'move-toward/speed
                                                                                                                                         v7236)))
                                                                                                                                (if x-cnd7986
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd7987
                                                                                                                                            (eq?
                                                                                                                                             'draw-on/image
                                                                                                                                             v7236)))
                                                                                                                                    (if x-cnd7987
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'dist
                                                                                                                                       v7236)))))))))))))
                                                                                                          g7982))
                                                                                                      g7239)))
                                                                                             (if x-cnd7981
                                                                                               g7239
                                                                                               (blame
                                                                                                g7237
                                                                                                '(lambda (v7236)
                                                                                                   (if (eq?
                                                                                                        'x
                                                                                                        v7236)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'y
                                                                                                          v7236)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'posn
                                                                                                            v7236)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'move-toward/speed
                                                                                                              v7236)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'draw-on/image
                                                                                                                v7236)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'dist
                                                                                                              v7236))))))))))))
                                                                                   g7980))
                                                                               j7230
                                                                               k7231
                                                                               g7229)))
                                                                      (letrec ((g7988
                                                                                (letrec ((x7990
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g7991
                                                                                                       (if cnd
                                                                                                         (letrec ((g7992
                                                                                                                   (lambda (j7240
                                                                                                                            k7241
                                                                                                                            f7242)
                                                                                                                     (letrec ((g7993
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g7994
                                                                                                                                           (letrec ((x7995
                                                                                                                                                     (f7242)))
                                                                                                                                             (real?
                                                                                                                                              j7240
                                                                                                                                              k7241
                                                                                                                                              x7995))))
                                                                                                                                   g7994))))
                                                                                                                       g7993))))
                                                                                                           g7992)
                                                                                                         (if cnd
                                                                                                           (letrec ((g7996
                                                                                                                     (lambda (j7243
                                                                                                                              k7244
                                                                                                                              f7245)
                                                                                                                       (letrec ((g7997
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g7998
                                                                                                                                             (letrec ((x7999
                                                                                                                                                       (f7245)))
                                                                                                                                               (real?
                                                                                                                                                j7243
                                                                                                                                                k7244
                                                                                                                                                x7999))))
                                                                                                                                     g7998))))
                                                                                                                         g7997))))
                                                                                                             g7996)
                                                                                                           (if cnd
                                                                                                             (letrec ((g8000
                                                                                                                       (lambda (j7246
                                                                                                                                k7247
                                                                                                                                f7248)
                                                                                                                         (letrec ((g8001
                                                                                                                                   (lambda ()
                                                                                                                                     (letrec ((g8002
                                                                                                                                               (letrec ((x8003
                                                                                                                                                         (f7248)))
                                                                                                                                                 (posn/c
                                                                                                                                                  j7246
                                                                                                                                                  k7247
                                                                                                                                                  x8003))))
                                                                                                                                       g8002))))
                                                                                                                           g8001))))
                                                                                                               g8000)
                                                                                                             (if cnd
                                                                                                               (letrec ((g8004
                                                                                                                         (lambda (j7251
                                                                                                                                  k7252
                                                                                                                                  f7253)
                                                                                                                           (letrec ((g8005
                                                                                                                                     (lambda (g7249
                                                                                                                                              g7250)
                                                                                                                                       (letrec ((g8006
                                                                                                                                                 (letrec ((x8007
                                                                                                                                                           (letrec ((x8009
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7251
                                                                                                                                                                      k7252
                                                                                                                                                                      g7249))
                                                                                                                                                                    (x8008
                                                                                                                                                                     (real?
                                                                                                                                                                      j7251
                                                                                                                                                                      k7252
                                                                                                                                                                      g7250)))
                                                                                                                                                             (f7253
                                                                                                                                                              x8009
                                                                                                                                                              x8008))))
                                                                                                                                                   (posn/c
                                                                                                                                                    j7251
                                                                                                                                                    k7252
                                                                                                                                                    x8007))))
                                                                                                                                         g8006))))
                                                                                                                             g8005))))
                                                                                                                 g8004)
                                                                                                               (if cnd
                                                                                                                 (letrec ((g8010
                                                                                                                           (lambda (j7256
                                                                                                                                    k7257
                                                                                                                                    f7258)
                                                                                                                             (letrec ((g8011
                                                                                                                                       (lambda (g7254
                                                                                                                                                g7255)
                                                                                                                                         (letrec ((g8012
                                                                                                                                                   (letrec ((x8013
                                                                                                                                                             (letrec ((x8015
                                                                                                                                                                       (image?
                                                                                                                                                                        j7256
                                                                                                                                                                        k7257
                                                                                                                                                                        g7254))
                                                                                                                                                                      (x8014
                                                                                                                                                                       (image?
                                                                                                                                                                        j7256
                                                                                                                                                                        k7257
                                                                                                                                                                        g7255)))
                                                                                                                                                               (f7258
                                                                                                                                                                x8015
                                                                                                                                                                x8014))))
                                                                                                                                                     (image?
                                                                                                                                                      j7256
                                                                                                                                                      k7257
                                                                                                                                                      x8013))))
                                                                                                                                           g8012))))
                                                                                                                               g8011))))
                                                                                                                   g8010)
                                                                                                                 (if cnd
                                                                                                                   (letrec ((g8016
                                                                                                                             (lambda (j7260
                                                                                                                                      k7261
                                                                                                                                      f7262)
                                                                                                                               (letrec ((g8017
                                                                                                                                         (lambda (g7259)
                                                                                                                                           (letrec ((g8018
                                                                                                                                                     (letrec ((x8019
                                                                                                                                                               (letrec ((x8020
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7260
                                                                                                                                                                          k7261
                                                                                                                                                                          g7259)))
                                                                                                                                                                 (f7262
                                                                                                                                                                  x8020))))
                                                                                                                                                       (real?
                                                                                                                                                        j7260
                                                                                                                                                        k7261
                                                                                                                                                        x8019))))
                                                                                                                                             g8018))))
                                                                                                                                 g8017))))
                                                                                                                     g8016)
                                                                                                                   (letrec ((g8021
                                                                                                                             "error"))
                                                                                                                     g8021)))))))))
                                                                                               g7991))
                                                                                           x7233))
                                                                                         (x7989
                                                                                          (f7232
                                                                                           x7233)))
                                                                                  (x7990
                                                                                   j7230
                                                                                   k7231
                                                                                   x7989))))
                                                                        g7988))))
                                                            g7979))))
                                                g7978)))
                                           (player/c
                                            (lambda (j7264 k7265 f7266)
                                              (letrec ((g8022
                                                        (lambda (g7263)
                                                          (letrec ((g8023
                                                                    (letrec ((x7267
                                                                              ((lambda (g7271
                                                                                        g7272
                                                                                        g7273)
                                                                                 (letrec ((g8024
                                                                                           (letrec ((x-cnd8025
                                                                                                     ((lambda (v7270)
                                                                                                        (letrec ((g8026
                                                                                                                  (letrec ((x-cnd8027
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7270)))
                                                                                                                    (if x-cnd8027
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8028
                                                                                                                                (eq?
                                                                                                                                 'move-toward
                                                                                                                                 v7270)))
                                                                                                                        (if x-cnd8028
                                                                                                                          #t
                                                                                                                          (eq?
                                                                                                                           'draw-on
                                                                                                                           v7270)))))))
                                                                                                          g8026))
                                                                                                      g7273)))
                                                                                             (if x-cnd8025
                                                                                               g7273
                                                                                               (blame
                                                                                                g7271
                                                                                                '(lambda (v7270)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7270)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'move-toward
                                                                                                          v7270)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'draw-on
                                                                                                        v7270)))))))))
                                                                                   g8024))
                                                                               j7264
                                                                               k7265
                                                                               g7263)))
                                                                      (letrec ((g8029
                                                                                (letrec ((x8031
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8032
                                                                                                       (if cnd
                                                                                                         (letrec ((g8033
                                                                                                                   (lambda (j7274
                                                                                                                            k7275
                                                                                                                            f7276)
                                                                                                                     (letrec ((g8034
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g8035
                                                                                                                                           (letrec ((x8036
                                                                                                                                                     (f7276)))
                                                                                                                                             (posn/c
                                                                                                                                              j7274
                                                                                                                                              k7275
                                                                                                                                              x8036))))
                                                                                                                                   g8035))))
                                                                                                                       g8034))))
                                                                                                           g8033)
                                                                                                         (if cnd
                                                                                                           (letrec ((g8037
                                                                                                                     (lambda (j7278
                                                                                                                              k7279
                                                                                                                              f7280)
                                                                                                                       (letrec ((g8038
                                                                                                                                 (lambda (g7277)
                                                                                                                                   (letrec ((g8039
                                                                                                                                             (letrec ((x8040
                                                                                                                                                       (letrec ((x8041
                                                                                                                                                                 (posn/c
                                                                                                                                                                  j7278
                                                                                                                                                                  k7279
                                                                                                                                                                  g7277)))
                                                                                                                                                         (f7280
                                                                                                                                                          x8041))))
                                                                                                                                               (player/c
                                                                                                                                                j7278
                                                                                                                                                k7279
                                                                                                                                                x8040))))
                                                                                                                                     g8039))))
                                                                                                                         g8038))))
                                                                                                             g8037)
                                                                                                           (if cnd
                                                                                                             (letrec ((g8042
                                                                                                                       (lambda (j7282
                                                                                                                                k7283
                                                                                                                                f7284)
                                                                                                                         (letrec ((g8043
                                                                                                                                   (lambda (g7281)
                                                                                                                                     (letrec ((g8044
                                                                                                                                               (letrec ((x8045
                                                                                                                                                         (letrec ((x8046
                                                                                                                                                                   (image?
                                                                                                                                                                    j7282
                                                                                                                                                                    k7283
                                                                                                                                                                    g7281)))
                                                                                                                                                           (f7284
                                                                                                                                                            x8046))))
                                                                                                                                                 (image?
                                                                                                                                                  j7282
                                                                                                                                                  k7283
                                                                                                                                                  x8045))))
                                                                                                                                       g8044))))
                                                                                                                           g8043))))
                                                                                                               g8042)
                                                                                                             (letrec ((g8047
                                                                                                                       "error"))
                                                                                                               g8047))))))
                                                                                               g8032))
                                                                                           x7267))
                                                                                         (x8030
                                                                                          (f7266
                                                                                           x7267)))
                                                                                  (x8031
                                                                                   j7264
                                                                                   k7265
                                                                                   x8030))))
                                                                        g8029))))
                                                            g8023))))
                                                g8022)))
                                           (zombie/c
                                            (lambda (j7286 k7287 f7288)
                                              (letrec ((g8048
                                                        (lambda (g7285)
                                                          (letrec ((g8049
                                                                    (letrec ((x7289
                                                                              ((lambda (g7293
                                                                                        g7294
                                                                                        g7295)
                                                                                 (letrec ((g8050
                                                                                           (letrec ((x-cnd8051
                                                                                                     ((lambda (v7292)
                                                                                                        (letrec ((g8052
                                                                                                                  (letrec ((x-cnd8053
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7292)))
                                                                                                                    (if x-cnd8053
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8054
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7292)))
                                                                                                                        (if x-cnd8054
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8055
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7292)))
                                                                                                                            (if x-cnd8055
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'move-toward
                                                                                                                               v7292)))))))))
                                                                                                          g8052))
                                                                                                      g7295)))
                                                                                             (if x-cnd8051
                                                                                               g7295
                                                                                               (blame
                                                                                                g7293
                                                                                                '(lambda (v7292)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7292)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7292)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7292)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'move-toward
                                                                                                          v7292))))))))))
                                                                                   g8050))
                                                                               j7286
                                                                               k7287
                                                                               g7285)))
                                                                      (letrec ((g8056
                                                                                (letrec ((x8058
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8059
                                                                                                       (if cnd
                                                                                                         (letrec ((g8060
                                                                                                                   (lambda (j7296
                                                                                                                            k7297
                                                                                                                            f7298)
                                                                                                                     (letrec ((g8061
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g8062
                                                                                                                                           (letrec ((x8063
                                                                                                                                                     (f7298)))
                                                                                                                                             (posn/c
                                                                                                                                              j7296
                                                                                                                                              k7297
                                                                                                                                              x8063))))
                                                                                                                                   g8062))))
                                                                                                                       g8061))))
                                                                                                           g8060)
                                                                                                         (if cnd
                                                                                                           (letrec ((g8064
                                                                                                                     (lambda (j7301
                                                                                                                              k7302
                                                                                                                              f7303)
                                                                                                                       (letrec ((g8065
                                                                                                                                 (lambda (g7299
                                                                                                                                          g7300)
                                                                                                                                   (letrec ((g8066
                                                                                                                                             (letrec ((x8067
                                                                                                                                                       (letrec ((x8069
                                                                                                                                                                 (string?
                                                                                                                                                                  j7301
                                                                                                                                                                  k7302
                                                                                                                                                                  g7299))
                                                                                                                                                                (x8068
                                                                                                                                                                 (image?
                                                                                                                                                                  j7301
                                                                                                                                                                  k7302
                                                                                                                                                                  g7300)))
                                                                                                                                                         (f7303
                                                                                                                                                          x8069
                                                                                                                                                          x8068))))
                                                                                                                                               (image?
                                                                                                                                                j7301
                                                                                                                                                k7302
                                                                                                                                                x8067))))
                                                                                                                                     g8066))))
                                                                                                                         g8065))))
                                                                                                             g8064)
                                                                                                           (if cnd
                                                                                                             (letrec ((g8070
                                                                                                                       (lambda (j7305
                                                                                                                                k7306
                                                                                                                                f7307)
                                                                                                                         (letrec ((g8071
                                                                                                                                   (lambda (g7304)
                                                                                                                                     (letrec ((g8072
                                                                                                                                               (letrec ((x8073
                                                                                                                                                         (letrec ((x8074
                                                                                                                                                                   (posn/c
                                                                                                                                                                    j7305
                                                                                                                                                                    k7306
                                                                                                                                                                    g7304)))
                                                                                                                                                           (f7307
                                                                                                                                                            x8074))))
                                                                                                                                                 (boolean?
                                                                                                                                                  j7305
                                                                                                                                                  k7306
                                                                                                                                                  x8073))))
                                                                                                                                       g8072))))
                                                                                                                           g8071))))
                                                                                                               g8070)
                                                                                                             (if cnd
                                                                                                               (letrec ((g8075
                                                                                                                         (lambda (j7309
                                                                                                                                  k7310
                                                                                                                                  f7311)
                                                                                                                           (letrec ((g8076
                                                                                                                                     (lambda (g7308)
                                                                                                                                       (letrec ((g8077
                                                                                                                                                 (letrec ((x8078
                                                                                                                                                           (letrec ((x8079
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7309
                                                                                                                                                                      k7310
                                                                                                                                                                      g7308)))
                                                                                                                                                             (f7311
                                                                                                                                                              x8079))))
                                                                                                                                                   (zombie/c
                                                                                                                                                    j7309
                                                                                                                                                    k7310
                                                                                                                                                    x8078))))
                                                                                                                                         g8077))))
                                                                                                                             g8076))))
                                                                                                                 g8075)
                                                                                                               (letrec ((g8080
                                                                                                                         "error"))
                                                                                                                 g8080)))))))
                                                                                               g8059))
                                                                                           x7289))
                                                                                         (x8057
                                                                                          (f7288
                                                                                           x7289)))
                                                                                  (x8058
                                                                                   j7286
                                                                                   k7287
                                                                                   x8057))))
                                                                        g8056))))
                                                            g8049))))
                                                g8048)))
                                           (horde/c
                                            (lambda (j7313 k7314 f7315)
                                              (letrec ((g8081
                                                        (lambda (g7312)
                                                          (letrec ((g8082
                                                                    (letrec ((x7316
                                                                              ((lambda (g7320
                                                                                        g7321
                                                                                        g7322)
                                                                                 (letrec ((g8083
                                                                                           (letrec ((x-cnd8084
                                                                                                     ((lambda (v7319)
                                                                                                        (letrec ((g8085
                                                                                                                  (letrec ((x-cnd8086
                                                                                                                            (eq?
                                                                                                                             'dead
                                                                                                                             v7319)))
                                                                                                                    (if x-cnd8086
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8087
                                                                                                                                (eq?
                                                                                                                                 'undead
                                                                                                                                 v7319)))
                                                                                                                        (if x-cnd8087
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8088
                                                                                                                                    (eq?
                                                                                                                                     'draw-on
                                                                                                                                     v7319)))
                                                                                                                            (if x-cnd8088
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8089
                                                                                                                                        (eq?
                                                                                                                                         'touching?
                                                                                                                                         v7319)))
                                                                                                                                (if x-cnd8089
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8090
                                                                                                                                            (eq?
                                                                                                                                             'move-toward
                                                                                                                                             v7319)))
                                                                                                                                    (if x-cnd8090
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'eat-brains
                                                                                                                                       v7319)))))))))))))
                                                                                                          g8085))
                                                                                                      g7322)))
                                                                                             (if x-cnd8084
                                                                                               g7322
                                                                                               (blame
                                                                                                g7320
                                                                                                '(lambda (v7319)
                                                                                                   (if (eq?
                                                                                                        'dead
                                                                                                        v7319)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'undead
                                                                                                          v7319)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'draw-on
                                                                                                            v7319)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'touching?
                                                                                                              v7319)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'move-toward
                                                                                                                v7319)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'eat-brains
                                                                                                              v7319))))))))))))
                                                                                   g8083))
                                                                               j7313
                                                                               k7314
                                                                               g7312)))
                                                                      (letrec ((g8091
                                                                                (letrec ((x8093
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8094
                                                                                                       (if cnd
                                                                                                         (letrec ((g8095
                                                                                                                   (lambda (j7323
                                                                                                                            k7324
                                                                                                                            f7325)
                                                                                                                     (letrec ((g8096
                                                                                                                               (lambda ()
                                                                                                                                 (letrec ((g8097
                                                                                                                                           (letrec ((x8098
                                                                                                                                                     (f7325)))
                                                                                                                                             (zombies/c
                                                                                                                                              j7323
                                                                                                                                              k7324
                                                                                                                                              x8098))))
                                                                                                                                   g8097))))
                                                                                                                       g8096))))
                                                                                                           g8095)
                                                                                                         (if cnd
                                                                                                           (letrec ((g8099
                                                                                                                     (lambda (j7326
                                                                                                                              k7327
                                                                                                                              f7328)
                                                                                                                       (letrec ((g8100
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8101
                                                                                                                                             (letrec ((x8102
                                                                                                                                                       (f7328)))
                                                                                                                                               (zombies/c
                                                                                                                                                j7326
                                                                                                                                                k7327
                                                                                                                                                x8102))))
                                                                                                                                     g8101))))
                                                                                                                         g8100))))
                                                                                                             g8099)
                                                                                                           (if cnd
                                                                                                             (letrec ((g8103
                                                                                                                       (lambda (j7330
                                                                                                                                k7331
                                                                                                                                f7332)
                                                                                                                         (letrec ((g8104
                                                                                                                                   (lambda (g7329)
                                                                                                                                     (letrec ((g8105
                                                                                                                                               (letrec ((x8106
                                                                                                                                                         (letrec ((x8107
                                                                                                                                                                   (image?
                                                                                                                                                                    j7330
                                                                                                                                                                    k7331
                                                                                                                                                                    g7329)))
                                                                                                                                                           (f7332
                                                                                                                                                            x8107))))
                                                                                                                                                 (image?
                                                                                                                                                  j7330
                                                                                                                                                  k7331
                                                                                                                                                  x8106))))
                                                                                                                                       g8105))))
                                                                                                                           g8104))))
                                                                                                               g8103)
                                                                                                             (if cnd
                                                                                                               (letrec ((g8108
                                                                                                                         (lambda (j7334
                                                                                                                                  k7335
                                                                                                                                  f7336)
                                                                                                                           (letrec ((g8109
                                                                                                                                     (lambda (g7333)
                                                                                                                                       (letrec ((g8110
                                                                                                                                                 (letrec ((x8111
                                                                                                                                                           (letrec ((x8112
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7334
                                                                                                                                                                      k7335
                                                                                                                                                                      g7333)))
                                                                                                                                                             (f7336
                                                                                                                                                              x8112))))
                                                                                                                                                   (boolean?
                                                                                                                                                    j7334
                                                                                                                                                    k7335
                                                                                                                                                    x8111))))
                                                                                                                                         g8110))))
                                                                                                                             g8109))))
                                                                                                                 g8108)
                                                                                                               (if cnd
                                                                                                                 (letrec ((g8113
                                                                                                                           (lambda (j7338
                                                                                                                                    k7339
                                                                                                                                    f7340)
                                                                                                                             (letrec ((g8114
                                                                                                                                       (lambda (g7337)
                                                                                                                                         (letrec ((g8115
                                                                                                                                                   (letrec ((x8116
                                                                                                                                                             (letrec ((x8117
                                                                                                                                                                       (posn/c
                                                                                                                                                                        j7338
                                                                                                                                                                        k7339
                                                                                                                                                                        g7337)))
                                                                                                                                                               (f7340
                                                                                                                                                                x8117))))
                                                                                                                                                     (horde/c
                                                                                                                                                      j7338
                                                                                                                                                      k7339
                                                                                                                                                      x8116))))
                                                                                                                                           g8115))))
                                                                                                                               g8114))))
                                                                                                                   g8113)
                                                                                                                 (if cnd
                                                                                                                   (letrec ((g8118
                                                                                                                             (lambda (j7341
                                                                                                                                      k7342
                                                                                                                                      f7343)
                                                                                                                               (letrec ((g8119
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8120
                                                                                                                                                     (letrec ((x8121
                                                                                                                                                               (f7343)))
                                                                                                                                                       (horde/c
                                                                                                                                                        j7341
                                                                                                                                                        k7342
                                                                                                                                                        x8121))))
                                                                                                                                             g8120))))
                                                                                                                                 g8119))))
                                                                                                                     g8118)
                                                                                                                   (letrec ((g8122
                                                                                                                             "error"))
                                                                                                                     g8122)))))))))
                                                                                               g8094))
                                                                                           x7316))
                                                                                         (x8092
                                                                                          (f7315
                                                                                           x7316)))
                                                                                  (x8093
                                                                                   j7313
                                                                                   k7314
                                                                                   x8092))))
                                                                        g8091))))
                                                            g8082))))
                                                g8081)))
                                           (zombies/c
                                            (lambda (j7345 k7346 f7347)
                                              (letrec ((g8123
                                                        (lambda (g7344)
                                                          (letrec ((g8124
                                                                    (letrec ((x7348
                                                                              ((lambda (g7352
                                                                                        g7353
                                                                                        g7354)
                                                                                 (letrec ((g8125
                                                                                           (letrec ((x-cnd8126
                                                                                                     ((lambda (v7351)
                                                                                                        (letrec ((g8127
                                                                                                                  (letrec ((x-cnd8128
                                                                                                                            (eq?
                                                                                                                             'move-toward
                                                                                                                             v7351)))
                                                                                                                    (if x-cnd8128
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8129
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7351)))
                                                                                                                        (if x-cnd8129
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8130
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7351)))
                                                                                                                            (if x-cnd8130
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'kill-all
                                                                                                                               v7351)))))))))
                                                                                                          g8127))
                                                                                                      g7354)))
                                                                                             (if x-cnd8126
                                                                                               g7354
                                                                                               (blame
                                                                                                g7352
                                                                                                '(lambda (v7351)
                                                                                                   (if (eq?
                                                                                                        'move-toward
                                                                                                        v7351)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7351)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7351)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'kill-all
                                                                                                          v7351))))))))))
                                                                                   g8125))
                                                                               j7345
                                                                               k7346
                                                                               g7344)))
                                                                      (letrec ((g8131
                                                                                (letrec ((x8133
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8134
                                                                                                       (if cnd
                                                                                                         (letrec ((g8135
                                                                                                                   (lambda (j7356
                                                                                                                            k7357
                                                                                                                            f7358)
                                                                                                                     (letrec ((g8136
                                                                                                                               (lambda (g7355)
                                                                                                                                 (letrec ((g8137
                                                                                                                                           (letrec ((x8138
                                                                                                                                                     (letrec ((x8139
                                                                                                                                                               (posn/c
                                                                                                                                                                j7356
                                                                                                                                                                k7357
                                                                                                                                                                g7355)))
                                                                                                                                                       (f7358
                                                                                                                                                        x8139))))
                                                                                                                                             (zombies/c
                                                                                                                                              j7356
                                                                                                                                              k7357
                                                                                                                                              x8138))))
                                                                                                                                   g8137))))
                                                                                                                       g8136))))
                                                                                                           g8135)
                                                                                                         (if cnd
                                                                                                           (letrec ((g8140
                                                                                                                     (lambda (j7361
                                                                                                                              k7362
                                                                                                                              f7363)
                                                                                                                       (letrec ((g8141
                                                                                                                                 (lambda (g7359
                                                                                                                                          g7360)
                                                                                                                                   (letrec ((g8142
                                                                                                                                             (letrec ((x8143
                                                                                                                                                       (letrec ((x8145
                                                                                                                                                                 (string?
                                                                                                                                                                  j7361
                                                                                                                                                                  k7362
                                                                                                                                                                  g7359))
                                                                                                                                                                (x8144
                                                                                                                                                                 (image?
                                                                                                                                                                  j7361
                                                                                                                                                                  k7362
                                                                                                                                                                  g7360)))
                                                                                                                                                         (f7363
                                                                                                                                                          x8145
                                                                                                                                                          x8144))))
                                                                                                                                               (image?
                                                                                                                                                j7361
                                                                                                                                                k7362
                                                                                                                                                x8143))))
                                                                                                                                     g8142))))
                                                                                                                         g8141))))
                                                                                                             g8140)
                                                                                                           (if cnd
                                                                                                             (letrec ((g8146
                                                                                                                       (lambda (j7365
                                                                                                                                k7366
                                                                                                                                f7367)
                                                                                                                         (letrec ((g8147
                                                                                                                                   (lambda (g7364)
                                                                                                                                     (letrec ((g8148
                                                                                                                                               (letrec ((x8149
                                                                                                                                                         (letrec ((x8150
                                                                                                                                                                   (posn/c
                                                                                                                                                                    j7365
                                                                                                                                                                    k7366
                                                                                                                                                                    g7364)))
                                                                                                                                                           (f7367
                                                                                                                                                            x8150))))
                                                                                                                                                 (boolean?
                                                                                                                                                  j7365
                                                                                                                                                  k7366
                                                                                                                                                  x8149))))
                                                                                                                                       g8148))))
                                                                                                                           g8147))))
                                                                                                               g8146)
                                                                                                             (if cnd
                                                                                                               (letrec ((g8151
                                                                                                                         (lambda (j7369
                                                                                                                                  k7370
                                                                                                                                  f7371)
                                                                                                                           (letrec ((g8152
                                                                                                                                     (lambda (g7368)
                                                                                                                                       (letrec ((g8153
                                                                                                                                                 (letrec ((x8154
                                                                                                                                                           (letrec ((x8155
                                                                                                                                                                     (zombies/c
                                                                                                                                                                      j7369
                                                                                                                                                                      k7370
                                                                                                                                                                      g7368)))
                                                                                                                                                             (f7371
                                                                                                                                                              x8155))))
                                                                                                                                                   (horde/c
                                                                                                                                                    j7369
                                                                                                                                                    k7370
                                                                                                                                                    x8154))))
                                                                                                                                         g8153))))
                                                                                                                             g8152))))
                                                                                                                 g8151)
                                                                                                               (letrec ((g8156
                                                                                                                         "error"))
                                                                                                                 g8156)))))))
                                                                                               g8134))
                                                                                           x7348))
                                                                                         (x8132
                                                                                          (f7347
                                                                                           x7348)))
                                                                                  (x8133
                                                                                   j7345
                                                                                   k7346
                                                                                   x8132))))
                                                                        g8131))))
                                                            g8124))))
                                                g8123)))
                                           (world/c
                                            (lambda (j7373 k7374 f7375)
                                              (letrec ((g8157
                                                        (lambda (g7372)
                                                          (letrec ((g8158
                                                                    (letrec ((x7376
                                                                              ((lambda (g7380
                                                                                        g7381
                                                                                        g7382)
                                                                                 (letrec ((g8159
                                                                                           (letrec ((x-cnd8160
                                                                                                     ((lambda (v7379)
                                                                                                        (letrec ((g8161
                                                                                                                  (letrec ((x-cnd8162
                                                                                                                            (eq?
                                                                                                                             'on-mouse
                                                                                                                             v7379)))
                                                                                                                    (if x-cnd8162
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8163
                                                                                                                                (eq?
                                                                                                                                 'on-tick
                                                                                                                                 v7379)))
                                                                                                                        (if x-cnd8163
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8164
                                                                                                                                    (eq?
                                                                                                                                     'to-draw
                                                                                                                                     v7379)))
                                                                                                                            (if x-cnd8164
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'stop-when
                                                                                                                               v7379)))))))))
                                                                                                          g8161))
                                                                                                      g7382)))
                                                                                             (if x-cnd8160
                                                                                               g7382
                                                                                               (blame
                                                                                                g7380
                                                                                                '(lambda (v7379)
                                                                                                   (if (eq?
                                                                                                        'on-mouse
                                                                                                        v7379)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'on-tick
                                                                                                          v7379)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'to-draw
                                                                                                            v7379)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'stop-when
                                                                                                          v7379))))))))))
                                                                                   g8159))
                                                                               j7373
                                                                               k7374
                                                                               g7372)))
                                                                      (letrec ((g8165
                                                                                (letrec ((x8167
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8168
                                                                                                       (if cnd
                                                                                                         (letrec ((g8169
                                                                                                                   (lambda (j7386
                                                                                                                            k7387
                                                                                                                            f7388)
                                                                                                                     (letrec ((g8170
                                                                                                                               (lambda (g7383
                                                                                                                                        g7384
                                                                                                                                        g7385)
                                                                                                                                 (letrec ((g8171
                                                                                                                                           (letrec ((x8172
                                                                                                                                                     (letrec ((x8175
                                                                                                                                                               (real?
                                                                                                                                                                j7386
                                                                                                                                                                k7387
                                                                                                                                                                g7383))
                                                                                                                                                              (x8174
                                                                                                                                                               (real?
                                                                                                                                                                j7386
                                                                                                                                                                k7387
                                                                                                                                                                g7384))
                                                                                                                                                              (x8173
                                                                                                                                                               (string?
                                                                                                                                                                j7386
                                                                                                                                                                k7387
                                                                                                                                                                g7385)))
                                                                                                                                                       (f7388
                                                                                                                                                        x8175
                                                                                                                                                        x8174
                                                                                                                                                        x8173))))
                                                                                                                                             (world/c
                                                                                                                                              j7386
                                                                                                                                              k7387
                                                                                                                                              x8172))))
                                                                                                                                   g8171))))
                                                                                                                       g8170))))
                                                                                                           g8169)
                                                                                                         (if cnd
                                                                                                           (letrec ((g8176
                                                                                                                     (lambda (j7389
                                                                                                                              k7390
                                                                                                                              f7391)
                                                                                                                       (letrec ((g8177
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8178
                                                                                                                                             (letrec ((x8179
                                                                                                                                                       (f7391)))
                                                                                                                                               (world/c
                                                                                                                                                j7389
                                                                                                                                                k7390
                                                                                                                                                x8179))))
                                                                                                                                     g8178))))
                                                                                                                         g8177))))
                                                                                                             g8176)
                                                                                                           (if cnd
                                                                                                             (letrec ((g8180
                                                                                                                       (lambda (j7392
                                                                                                                                k7393
                                                                                                                                f7394)
                                                                                                                         (letrec ((g8181
                                                                                                                                   (lambda ()
                                                                                                                                     (letrec ((g8182
                                                                                                                                               (letrec ((x8183
                                                                                                                                                         (f7394)))
                                                                                                                                                 (image?
                                                                                                                                                  j7392
                                                                                                                                                  k7393
                                                                                                                                                  x8183))))
                                                                                                                                       g8182))))
                                                                                                                           g8181))))
                                                                                                               g8180)
                                                                                                             (if cnd
                                                                                                               (letrec ((g8184
                                                                                                                         (lambda (j7395
                                                                                                                                  k7396
                                                                                                                                  f7397)
                                                                                                                           (letrec ((g8185
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8186
                                                                                                                                                 (letrec ((x8187
                                                                                                                                                           (f7397)))
                                                                                                                                                   (boolean?
                                                                                                                                                    j7395
                                                                                                                                                    k7396
                                                                                                                                                    x8187))))
                                                                                                                                         g8186))))
                                                                                                                             g8185))))
                                                                                                                 g8184)
                                                                                                               (letrec ((g8188
                                                                                                                         "error"))
                                                                                                                 g8188)))))))
                                                                                               g8168))
                                                                                           x7376))
                                                                                         (x8166
                                                                                          (f7375
                                                                                           x7376)))
                                                                                  (x8167
                                                                                   j7373
                                                                                   k7374
                                                                                   x8166))))
                                                                        g8165))))
                                                            g8158))))
                                                g8157)))
                                           (new-world
                                            (lambda (player mouse zombies)
                                              (letrec ((g8189
                                                        (letrec ((x8218 (msg))
                                                                 (x8190
                                                                  (if cnd
                                                                    (letrec ((g8191
                                                                              (letrec ((x8196
                                                                                        (x
                                                                                         y
                                                                                         me))
                                                                                       (x8192
                                                                                        (letrec ((x8193
                                                                                                  (letrec ((x-cnd8194
                                                                                                            (equal?
                                                                                                             me
                                                                                                             "leave")))
                                                                                                    (if x-cnd8194
                                                                                                      (letrec ((x8195
                                                                                                                (player
                                                                                                                 'posn)))
                                                                                                        (x8195))
                                                                                                      (new-posn
                                                                                                       x
                                                                                                       y)))))
                                                                                          (new-world
                                                                                           player
                                                                                           x8193
                                                                                           zombies))))
                                                                                (λ x8196
                                                                                  x8192))))
                                                                      g8191)
                                                                    (if cnd
                                                                      (letrec ((g8197
                                                                                (letrec ((x8198
                                                                                          (letrec ((x8205
                                                                                                    (letrec ((x8206
                                                                                                              (player
                                                                                                               'move-toward)))
                                                                                                      (x8206
                                                                                                       mouse)))
                                                                                                   (x8199
                                                                                                    (letrec ((x8202
                                                                                                              (letrec ((x8203
                                                                                                                        (letrec ((x8204
                                                                                                                                  (zombies
                                                                                                                                   'eat-brains)))
                                                                                                                          (x8204))))
                                                                                                                (x8203
                                                                                                                 'move-toward)))
                                                                                                             (x8200
                                                                                                              (letrec ((x8201
                                                                                                                        (player
                                                                                                                         'posn)))
                                                                                                                (x8201))))
                                                                                                      (x8202
                                                                                                       x8200))))
                                                                                            (new-world
                                                                                             x8205
                                                                                             mouse
                                                                                             x8199))))
                                                                                  (λ ()
                                                                                    x8198))))
                                                                        g8197)
                                                                      (if cnd
                                                                        (letrec ((g8207
                                                                                  (letrec ((x8208
                                                                                            (letrec ((x8211
                                                                                                      (player
                                                                                                       'draw-on))
                                                                                                     (x8209
                                                                                                      (letrec ((x8210
                                                                                                                (zombies
                                                                                                                 'draw-on)))
                                                                                                        (x8210
                                                                                                         MT-SCENE))))
                                                                                              (x8211
                                                                                               x8209))))
                                                                                    (λ ()
                                                                                      x8208))))
                                                                          g8207)
                                                                        (if cnd
                                                                          (letrec ((g8212
                                                                                    (letrec ((x8213
                                                                                              (letrec ((x8216
                                                                                                        (zombies
                                                                                                         'touching?))
                                                                                                       (x8214
                                                                                                        (letrec ((x8215
                                                                                                                  (player
                                                                                                                   'posn)))
                                                                                                          (x8215))))
                                                                                                (x8216
                                                                                                 x8214))))
                                                                                      (λ ()
                                                                                        x8213))))
                                                                            g8212)
                                                                          (letrec ((g8217
                                                                                    "unknown message"))
                                                                            g8217)))))))
                                                          (λ x8218 x8190))))
                                                g8189)))
                                           (new-player
                                            (lambda (p)
                                              (letrec ((g8219
                                                        (letrec ((x8232 (msg))
                                                                 (x8220
                                                                  (if cnd
                                                                    (letrec ((g8221
                                                                              (λ ()
                                                                                p)))
                                                                      g8221)
                                                                    (if cnd
                                                                      (letrec ((g8222
                                                                                (letrec ((x8226
                                                                                          (q))
                                                                                         (x8223
                                                                                          (letrec ((x8224
                                                                                                    (letrec ((x8225
                                                                                                              (p
                                                                                                               'move-toward/speed)))
                                                                                                      (x8225
                                                                                                       q
                                                                                                       PLAYER-SPEED))))
                                                                                            (new-player
                                                                                             x8224))))
                                                                                  (λ x8226
                                                                                    x8223))))
                                                                        g8222)
                                                                      (if cnd
                                                                        (letrec ((g8227
                                                                                  (letrec ((x8230
                                                                                            (scn))
                                                                                           (x8228
                                                                                            (letrec ((x8229
                                                                                                      (p
                                                                                                       'draw-on/image)))
                                                                                              (x8229
                                                                                               PLAYER-IMG
                                                                                               scn))))
                                                                                    (λ x8230
                                                                                      x8228))))
                                                                          g8227)
                                                                        (letrec ((g8231
                                                                                  "unknown message"))
                                                                          g8231))))))
                                                          (λ x8232 x8220))))
                                                g8219)))
                                           (new-horde
                                            (lambda (undead dead)
                                              (letrec ((g8233
                                                        (letrec ((x8259 (msg))
                                                                 (x8234
                                                                  (if cnd
                                                                    (letrec ((g8235
                                                                              (λ ()
                                                                                dead)))
                                                                      g8235)
                                                                    (if cnd
                                                                      (letrec ((g8236
                                                                                (λ ()
                                                                                  undead)))
                                                                        g8236)
                                                                      (if cnd
                                                                        (letrec ((g8237
                                                                                  (letrec ((x8242
                                                                                            (scn))
                                                                                           (x8238
                                                                                            (letrec ((x8241
                                                                                                      (undead
                                                                                                       'draw-on/color))
                                                                                                     (x8239
                                                                                                      (letrec ((x8240
                                                                                                                (dead
                                                                                                                 'draw-on/color)))
                                                                                                        (x8240
                                                                                                         "black"
                                                                                                         scn))))
                                                                                              (x8241
                                                                                               "yellow"
                                                                                               x8239))))
                                                                                    (λ x8242
                                                                                      x8238))))
                                                                          g8237)
                                                                        (if cnd
                                                                          (letrec ((g8243
                                                                                    (letrec ((x8249
                                                                                              (p))
                                                                                             (x8244
                                                                                              (letrec ((x8247
                                                                                                        (letrec ((x8248
                                                                                                                  (undead
                                                                                                                   'touching?)))
                                                                                                          (x8248
                                                                                                           p)))
                                                                                                       (x8245
                                                                                                        (letrec ((x8246
                                                                                                                  (dead
                                                                                                                   'touching?)))
                                                                                                          (x8246
                                                                                                           p))))
                                                                                                (or x8247
                                                                                                    x8245))))
                                                                                      (λ x8249
                                                                                        x8244))))
                                                                            g8243)
                                                                          (if cnd
                                                                            (letrec ((g8250
                                                                                      (letrec ((x8254
                                                                                                (p))
                                                                                               (x8251
                                                                                                (letrec ((x8252
                                                                                                          (letrec ((x8253
                                                                                                                    (undead
                                                                                                                     'move-toward)))
                                                                                                            (x8253
                                                                                                             p))))
                                                                                                  (new-horde
                                                                                                   x8252
                                                                                                   dead))))
                                                                                        (λ x8254
                                                                                          x8251))))
                                                                              g8250)
                                                                            (if cnd
                                                                              (letrec ((g8255
                                                                                        (letrec ((x8256
                                                                                                  (letrec ((x8257
                                                                                                            (undead
                                                                                                             'kill-all)))
                                                                                                    (x8257
                                                                                                     dead))))
                                                                                          (λ ()
                                                                                            x8256))))
                                                                                g8255)
                                                                              (letrec ((g8258
                                                                                        "unknown message"))
                                                                                g8258)))))))))
                                                          (λ x8259 x8234))))
                                                g8233)))
                                           (new-cons-zombies
                                            (lambda (z r)
                                              (letrec ((g8260
                                                        (letrec ((x8311 (msg))
                                                                 (x8261
                                                                  (if cnd
                                                                    (letrec ((g8262
                                                                              (letrec ((x8268
                                                                                        (p))
                                                                                       (x8263
                                                                                        (letrec ((x8266
                                                                                                  (letrec ((x8267
                                                                                                            (z
                                                                                                             'move-toward)))
                                                                                                    (x8267
                                                                                                     p)))
                                                                                                 (x8264
                                                                                                  (letrec ((x8265
                                                                                                            (r
                                                                                                             'move-toward)))
                                                                                                    (x8265
                                                                                                     p))))
                                                                                          (new-cons-zombies
                                                                                           x8266
                                                                                           x8264))))
                                                                                (λ x8268
                                                                                  x8263))))
                                                                      g8262)
                                                                    (if cnd
                                                                      (letrec ((g8269
                                                                                (letrec ((x8274
                                                                                          (c
                                                                                           s))
                                                                                         (x8270
                                                                                          (letrec ((x8273
                                                                                                    (z
                                                                                                     'draw-on/color))
                                                                                                   (x8271
                                                                                                    (letrec ((x8272
                                                                                                              (r
                                                                                                               'draw-on/color)))
                                                                                                      (x8272
                                                                                                       c
                                                                                                       s))))
                                                                                            (x8273
                                                                                             c
                                                                                             x8271))))
                                                                                  (λ x8274
                                                                                    x8270))))
                                                                        g8269)
                                                                      (if cnd
                                                                        (letrec ((g8275
                                                                                  (letrec ((x8281
                                                                                            (p))
                                                                                           (x8276
                                                                                            (letrec ((x8279
                                                                                                      (letrec ((x8280
                                                                                                                (z
                                                                                                                 'touching?)))
                                                                                                        (x8280
                                                                                                         p)))
                                                                                                     (x8277
                                                                                                      (letrec ((x8278
                                                                                                                (r
                                                                                                                 'touching?)))
                                                                                                        (x8278
                                                                                                         p))))
                                                                                              (or x8279
                                                                                                  x8277))))
                                                                                    (λ x8281
                                                                                      x8276))))
                                                                          g8275)
                                                                        (if cnd
                                                                          (letrec ((g8282
                                                                                    (letrec ((x8309
                                                                                              (dead))
                                                                                             (x8283
                                                                                              (letrec ((x8296
                                                                                                        (letrec ((x8300
                                                                                                                  (letrec ((x8305
                                                                                                                            (letrec ((x8308
                                                                                                                                      (r
                                                                                                                                       'touching?))
                                                                                                                                     (x8306
                                                                                                                                      (letrec ((x8307
                                                                                                                                                (z
                                                                                                                                                 'posn)))
                                                                                                                                        (x8307))))
                                                                                                                              (x8308
                                                                                                                               x8306)))
                                                                                                                           (x8301
                                                                                                                            (letrec ((x8304
                                                                                                                                      (dead
                                                                                                                                       'touching?))
                                                                                                                                     (x8302
                                                                                                                                      (letrec ((x8303
                                                                                                                                                (z
                                                                                                                                                 'posn)))
                                                                                                                                        (x8303))))
                                                                                                                              (x8304
                                                                                                                               x8302))))
                                                                                                                    (or x8305
                                                                                                                        x8301)))
                                                                                                                 (x8297
                                                                                                                  (letrec ((x8299
                                                                                                                            (r
                                                                                                                             'kill-all))
                                                                                                                           (x8298
                                                                                                                            (new-cons-zombies
                                                                                                                             z
                                                                                                                             dead)))
                                                                                                                    (x8299
                                                                                                                     x8298))))
                                                                                                          (x8300
                                                                                                           x8297)))
                                                                                                       (x8284
                                                                                                        (letrec ((x8285
                                                                                                                  (letrec ((x8292
                                                                                                                            (letrec ((x8293
                                                                                                                                      (letrec ((x8294
                                                                                                                                                (letrec ((x8295
                                                                                                                                                          (r
                                                                                                                                                           'kill-all)))
                                                                                                                                                  (x8295
                                                                                                                                                   dead))))
                                                                                                                                        (res
                                                                                                                                         x8294))))
                                                                                                                              (x8293)))
                                                                                                                           (x8286
                                                                                                                            (letrec ((x8289
                                                                                                                                      (letrec ((x8290
                                                                                                                                                (letrec ((x8291
                                                                                                                                                          (res
                                                                                                                                                           'undead)))
                                                                                                                                                  (x8291))))
                                                                                                                                        (new-cons-zombies
                                                                                                                                         z
                                                                                                                                         x8290)))
                                                                                                                                     (x8287
                                                                                                                                      (letrec ((x8288
                                                                                                                                                (res
                                                                                                                                                 'dead)))
                                                                                                                                        (x8288))))
                                                                                                                              (new-horde
                                                                                                                               x8289
                                                                                                                               x8287))))
                                                                                                                    (let x8292 x8286))))
                                                                                                          (else
                                                                                                           x8285))))
                                                                                                (cond
                                                                                                 x8296
                                                                                                 x8284))))
                                                                                      (λ x8309
                                                                                        x8283))))
                                                                            g8282)
                                                                          (letrec ((g8310
                                                                                    "unknown message"))
                                                                            g8310)))))))
                                                          (λ x8311 x8261))))
                                                g8260)))
                                           (new-mt-zombies
                                            (lambda ()
                                              (letrec ((g8312
                                                        (letrec ((x8326 (msg))
                                                                 (x8313
                                                                  (if cnd
                                                                    (letrec ((g8314
                                                                              (letrec ((x8316
                                                                                        (p))
                                                                                       (x8315
                                                                                        (new-mt-zombies)))
                                                                                (λ x8316
                                                                                  x8315))))
                                                                      g8314)
                                                                    (if cnd
                                                                      (letrec ((g8317
                                                                                (letrec ((x8318
                                                                                          (c
                                                                                           s)))
                                                                                  (λ x8318
                                                                                    s))))
                                                                        g8317)
                                                                      (if cnd
                                                                        (letrec ((g8319
                                                                                  (letrec ((x8320
                                                                                            (p)))
                                                                                    (λ x8320
                                                                                      #f))))
                                                                          g8319)
                                                                        (if cnd
                                                                          (letrec ((g8321
                                                                                    (letrec ((x8324
                                                                                              (dead))
                                                                                             (x8322
                                                                                              (letrec ((x8323
                                                                                                        (new-mt-zombies)))
                                                                                                (new-horde
                                                                                                 x8323
                                                                                                 dead))))
                                                                                      (λ x8324
                                                                                        x8322))))
                                                                            g8321)
                                                                          (letrec ((g8325
                                                                                    "unknown message"))
                                                                            g8325)))))))
                                                          (λ x8326 x8313))))
                                                g8312)))
                                           (new-zombie
                                            (lambda (p)
                                              (letrec ((g8327
                                                        (letrec ((x8346 (msg))
                                                                 (x8328
                                                                  (if cnd
                                                                    (letrec ((g8329
                                                                              (λ ()
                                                                                p)))
                                                                      g8329)
                                                                    (if cnd
                                                                      (letrec ((g8330
                                                                                (letrec ((x8334
                                                                                          (c
                                                                                           s))
                                                                                         (x8331
                                                                                          (letrec ((x8333
                                                                                                    (p
                                                                                                     'draw-on/image))
                                                                                                   (x8332
                                                                                                    (circle
                                                                                                     ZOMBIE-RADIUS
                                                                                                     "solid"
                                                                                                     c)))
                                                                                            (x8333
                                                                                             x8332
                                                                                             s))))
                                                                                  (λ x8334
                                                                                    x8331))))
                                                                        g8330)
                                                                      (if cnd
                                                                        (letrec ((g8335
                                                                                  (letrec ((x8339
                                                                                            (q))
                                                                                           (x8336
                                                                                            (letrec ((x8337
                                                                                                      (letrec ((x8338
                                                                                                                (p
                                                                                                                 'dist)))
                                                                                                        (x8338
                                                                                                         q))))
                                                                                              (<=
                                                                                               x8337
                                                                                               ZOMBIE-RADIUS))))
                                                                                    (λ x8339
                                                                                      x8336))))
                                                                          g8335)
                                                                        (if cnd
                                                                          (letrec ((g8340
                                                                                    (letrec ((x8344
                                                                                              (q))
                                                                                             (x8341
                                                                                              (letrec ((x8342
                                                                                                        (letrec ((x8343
                                                                                                                  (p
                                                                                                                   'move-toward/speed)))
                                                                                                          (x8343
                                                                                                           q
                                                                                                           ZOMBIE-SPEED))))
                                                                                                (new-zombie
                                                                                                 x8342))))
                                                                                      (λ x8344
                                                                                        x8341))))
                                                                            g8340)
                                                                          (letrec ((g8345
                                                                                    "unknown message"))
                                                                            g8345)))))))
                                                          (λ x8346 x8328))))
                                                g8327)))
                                           (new-posn
                                            (lambda (x y)
                                              (letrec ((g8347
                                                        (letrec ((this
                                                                  (letrec ((x8404
                                                                            (msg))
                                                                           (x8348
                                                                            (if cnd
                                                                              (letrec ((g8349
                                                                                        (λ ()
                                                                                          x)))
                                                                                g8349)
                                                                              (if cnd
                                                                                (letrec ((g8350
                                                                                          (λ ()
                                                                                            y)))
                                                                                  g8350)
                                                                                (if cnd
                                                                                  (letrec ((g8351
                                                                                            (λ ()
                                                                                              this)))
                                                                                    g8351)
                                                                                  (if cnd
                                                                                    (letrec ((g8352
                                                                                              (letrec ((x8382
                                                                                                        (p
                                                                                                         speed))
                                                                                                       (x8353
                                                                                                        (letrec ((x8368
                                                                                                                  (letrec ((x8378
                                                                                                                            (letrec ((x8379
                                                                                                                                      (letrec ((x8380
                                                                                                                                                (letrec ((x8381
                                                                                                                                                          (p
                                                                                                                                                           'x)))
                                                                                                                                                  (x8381))))
                                                                                                                                        (-
                                                                                                                                         x8380
                                                                                                                                         x))))
                                                                                                                              (δx
                                                                                                                               x8379)))
                                                                                                                           (x8374
                                                                                                                            (letrec ((x8375
                                                                                                                                      (letrec ((x8376
                                                                                                                                                (letrec ((x8377
                                                                                                                                                          (p
                                                                                                                                                           'y)))
                                                                                                                                                  (x8377))))
                                                                                                                                        (-
                                                                                                                                         x8376
                                                                                                                                         y))))
                                                                                                                              (δy
                                                                                                                               x8375)))
                                                                                                                           (x8369
                                                                                                                            (letrec ((x8370
                                                                                                                                      (letrec ((x8371
                                                                                                                                                (letrec ((x8373
                                                                                                                                                          (abs
                                                                                                                                                           δx))
                                                                                                                                                         (x8372
                                                                                                                                                          (abs
                                                                                                                                                           δy)))
                                                                                                                                                  (max
                                                                                                                                                   x8373
                                                                                                                                                   x8372))))
                                                                                                                                        (min
                                                                                                                                         speed
                                                                                                                                         x8371))))
                                                                                                                              (move-distance
                                                                                                                               x8370))))
                                                                                                                    (x8378
                                                                                                                     x8374
                                                                                                                     x8369)))
                                                                                                                 (x8354
                                                                                                                  (letrec ((x8360
                                                                                                                            (letrec ((x8365
                                                                                                                                      (letrec ((x8367
                                                                                                                                                (abs
                                                                                                                                                 δx))
                                                                                                                                               (x8366
                                                                                                                                                (abs
                                                                                                                                                 δy)))
                                                                                                                                        (<
                                                                                                                                         x8367
                                                                                                                                         x8366)))
                                                                                                                                     (x8361
                                                                                                                                      (letrec ((x8364
                                                                                                                                                (this
                                                                                                                                                 'move))
                                                                                                                                               (x8362
                                                                                                                                                (letrec ((x-cnd8363
                                                                                                                                                          (positive?
                                                                                                                                                           δy)))
                                                                                                                                                  (if x-cnd8363
                                                                                                                                                    move-distance
                                                                                                                                                    (-
                                                                                                                                                     0
                                                                                                                                                     move-distance)))))
                                                                                                                                        (x8364
                                                                                                                                         0
                                                                                                                                         x8362))))
                                                                                                                              (x8365
                                                                                                                               x8361)))
                                                                                                                           (x8355
                                                                                                                            (letrec ((x8356
                                                                                                                                      (letrec ((x8359
                                                                                                                                                (this
                                                                                                                                                 'move))
                                                                                                                                               (x8357
                                                                                                                                                (letrec ((x-cnd8358
                                                                                                                                                          (positive?
                                                                                                                                                           δx)))
                                                                                                                                                  (if x-cnd8358
                                                                                                                                                    move-distance
                                                                                                                                                    (-
                                                                                                                                                     0
                                                                                                                                                     move-distance)))))
                                                                                                                                        (x8359
                                                                                                                                         x8357
                                                                                                                                         0))))
                                                                                                                              (else
                                                                                                                               x8356))))
                                                                                                                    (cond
                                                                                                                     x8360
                                                                                                                     x8355))))
                                                                                                          (let* x8368 x8354))))
                                                                                                (λ x8382
                                                                                                  x8353))))
                                                                                      g8352)
                                                                                    (if cnd
                                                                                      (letrec ((g8383
                                                                                                (letrec ((x8387
                                                                                                          (δx
                                                                                                           δy))
                                                                                                         (x8384
                                                                                                          (letrec ((x8386
                                                                                                                    (+
                                                                                                                     x
                                                                                                                     δx))
                                                                                                                   (x8385
                                                                                                                    (+
                                                                                                                     y
                                                                                                                     δy)))
                                                                                                            (new-posn
                                                                                                             x8386
                                                                                                             x8385))))
                                                                                                  (λ x8387
                                                                                                    x8384))))
                                                                                        g8383)
                                                                                      (if cnd
                                                                                        (letrec ((g8388
                                                                                                  (letrec ((x8390
                                                                                                            (img
                                                                                                             scn))
                                                                                                           (x8389
                                                                                                            (place-image
                                                                                                             img
                                                                                                             x
                                                                                                             y
                                                                                                             scn)))
                                                                                                    (λ x8390
                                                                                                      x8389))))
                                                                                          g8388)
                                                                                        (if cnd
                                                                                          (letrec ((g8391
                                                                                                    (letrec ((x8402
                                                                                                              (p))
                                                                                                             (x8392
                                                                                                              (letrec ((x8393
                                                                                                                        (letrec ((x8398
                                                                                                                                  (letrec ((x8399
                                                                                                                                            (letrec ((x8400
                                                                                                                                                      (letrec ((x8401
                                                                                                                                                                (p
                                                                                                                                                                 'y)))
                                                                                                                                                        (x8401))))
                                                                                                                                              (-
                                                                                                                                               x8400
                                                                                                                                               y))))
                                                                                                                                    (sqr
                                                                                                                                     x8399)))
                                                                                                                                 (x8394
                                                                                                                                  (letrec ((x8395
                                                                                                                                            (letrec ((x8396
                                                                                                                                                      (letrec ((x8397
                                                                                                                                                                (p
                                                                                                                                                                 'x)))
                                                                                                                                                        (x8397))))
                                                                                                                                              (-
                                                                                                                                               x8396
                                                                                                                                               x))))
                                                                                                                                    (sqr
                                                                                                                                     x8395))))
                                                                                                                          (+
                                                                                                                           x8398
                                                                                                                           x8394))))
                                                                                                                (sqrt
                                                                                                                 x8393))))
                                                                                                      (λ x8402
                                                                                                        x8392))))
                                                                                            g8391)
                                                                                          (letrec ((g8403
                                                                                                    "unknown message"))
                                                                                            g8403))))))))))
                                                                    (λ x8404
                                                                      x8348))))
                                                          (letrec ((g8405
                                                                    this))
                                                            g8405))))
                                                g8347)))
                                           (w0
                                            (letrec ((x8419
                                                      (letrec ((x8420
                                                                (new-posn
                                                                 0
                                                                 0)))
                                                        (new-player x8420)))
                                                     (x8418 (new-posn 0 0))
                                                     (x8406
                                                      (letrec ((x8411
                                                                (letrec ((x8416
                                                                          (letrec ((x8417
                                                                                    (new-posn
                                                                                     100
                                                                                     300)))
                                                                            (new-zombie
                                                                             x8417)))
                                                                         (x8412
                                                                          (letrec ((x8414
                                                                                    (letrec ((x8415
                                                                                              (new-posn
                                                                                               100
                                                                                               200)))
                                                                                      (new-zombie
                                                                                       x8415)))
                                                                                   (x8413
                                                                                    (new-mt-zombies)))
                                                                            (new-cons-zombies
                                                                             x8414
                                                                             x8413))))
                                                                  (new-cons-zombies
                                                                   x8416
                                                                   x8412)))
                                                               (x8407
                                                                (letrec ((x8409
                                                                          (letrec ((x8410
                                                                                    (new-posn
                                                                                     200
                                                                                     200)))
                                                                            (new-zombie
                                                                             x8410)))
                                                                         (x8408
                                                                          (new-mt-zombies)))
                                                                  (new-cons-zombies
                                                                   x8409
                                                                   x8408))))
                                                        (new-horde
                                                         x8411
                                                         x8407))))
                                              (new-world x8419 x8418 x8406))))
                                    (letrec ((g8421
                                              (letrec ((x8434
                                                        ((lambda (j7399
                                                                  k7400
                                                                  f7401)
                                                           (letrec ((g8435
                                                                     (lambda (g7398)
                                                                       (letrec ((g8436
                                                                                 (letrec ((x8437
                                                                                           (letrec ((x8438
                                                                                                     (any/c
                                                                                                      j7399
                                                                                                      k7400
                                                                                                      g7398)))
                                                                                             (f7401
                                                                                              x8438))))
                                                                                   (boolean?/c
                                                                                    j7399
                                                                                    k7400
                                                                                    x8437))))
                                                                         g8436))))
                                                             g8435))
                                                         'module
                                                         'importer
                                                         image?))
                                                       (x8433 (input)))
                                                (x8434 x8433)))
                                             (g8422
                                              (letrec ((x8441
                                                        ((lambda (j7404
                                                                  k7405
                                                                  f7406)
                                                           (letrec ((g8442
                                                                     (lambda (g7402
                                                                              g7403)
                                                                       (letrec ((g8443
                                                                                 (letrec ((x8444
                                                                                           (letrec ((x8446
                                                                                                     (real?/c
                                                                                                      j7404
                                                                                                      k7405
                                                                                                      g7402))
                                                                                                    (x8445
                                                                                                     (real?/c
                                                                                                      j7404
                                                                                                      k7405
                                                                                                      g7403)))
                                                                                             (f7406
                                                                                              x8446
                                                                                              x8445))))
                                                                                   (image?
                                                                                    j7404
                                                                                    k7405
                                                                                    x8444))))
                                                                         g8443))))
                                                             g8442))
                                                         'module
                                                         'importer
                                                         empty-scene))
                                                       (x8440 (input))
                                                       (x8439 (input)))
                                                (x8441 x8440 x8439)))
                                             (g8423
                                              (letrec ((x8451
                                                        ((lambda (j7411
                                                                  k7412
                                                                  f7413)
                                                           (letrec ((g8452
                                                                     (lambda (g7407
                                                                              g7408
                                                                              g7409
                                                                              g7410)
                                                                       (letrec ((g8453
                                                                                 (letrec ((x8454
                                                                                           (letrec ((x8458
                                                                                                     (image?/c
                                                                                                      j7411
                                                                                                      k7412
                                                                                                      g7407))
                                                                                                    (x8457
                                                                                                     (real?/c
                                                                                                      j7411
                                                                                                      k7412
                                                                                                      g7408))
                                                                                                    (x8456
                                                                                                     (real?/c
                                                                                                      j7411
                                                                                                      k7412
                                                                                                      g7409))
                                                                                                    (x8455
                                                                                                     (image?
                                                                                                      j7411
                                                                                                      k7412
                                                                                                      g7410)))
                                                                                             (f7413
                                                                                              x8458
                                                                                              x8457
                                                                                              x8456
                                                                                              x8455))))
                                                                                   (image?
                                                                                    j7411
                                                                                    k7412
                                                                                    x8454))))
                                                                         g8453))))
                                                             g8452))
                                                         'module
                                                         'importer
                                                         place-image))
                                                       (x8450 (input))
                                                       (x8449 (input))
                                                       (x8448 (input))
                                                       (x8447 (input)))
                                                (x8451
                                                 x8450
                                                 x8449
                                                 x8448
                                                 x8447)))
                                             (g8424
                                              (letrec ((x8462
                                                        ((lambda (j7417
                                                                  k7418
                                                                  f7419)
                                                           (letrec ((g8463
                                                                     (lambda (g7414
                                                                              g7415
                                                                              g7416)
                                                                       (letrec ((g8464
                                                                                 (letrec ((x8465
                                                                                           (letrec ((x8468
                                                                                                     (real?/c
                                                                                                      j7417
                                                                                                      k7418
                                                                                                      g7414))
                                                                                                    (x8467
                                                                                                     (string?/c
                                                                                                      j7417
                                                                                                      k7418
                                                                                                      g7415))
                                                                                                    (x8466
                                                                                                     (string?/c
                                                                                                      j7417
                                                                                                      k7418
                                                                                                      g7416)))
                                                                                             (f7419
                                                                                              x8468
                                                                                              x8467
                                                                                              x8466))))
                                                                                   (image?
                                                                                    j7417
                                                                                    k7418
                                                                                    x8465))))
                                                                         g8464))))
                                                             g8463))
                                                         'module
                                                         'importer
                                                         circle))
                                                       (x8461 (input))
                                                       (x8460 (input))
                                                       (x8459 (input)))
                                                (x8462 x8461 x8460 x8459)))
                                             (g8425
                                              (letrec ((x8472
                                                        ((lambda (j7423
                                                                  k7424
                                                                  f7425)
                                                           (letrec ((g8473
                                                                     (lambda (g7420
                                                                              g7421
                                                                              g7422)
                                                                       (letrec ((g8474
                                                                                 (letrec ((x8475
                                                                                           (letrec ((x8478
                                                                                                     (player/c
                                                                                                      j7423
                                                                                                      k7424
                                                                                                      g7420))
                                                                                                    (x8477
                                                                                                     (posn/c
                                                                                                      j7423
                                                                                                      k7424
                                                                                                      g7421))
                                                                                                    (x8476
                                                                                                     (horde/c
                                                                                                      j7423
                                                                                                      k7424
                                                                                                      g7422)))
                                                                                             (f7425
                                                                                              x8478
                                                                                              x8477
                                                                                              x8476))))
                                                                                   (world/c
                                                                                    j7423
                                                                                    k7424
                                                                                    x8475))))
                                                                         g8474))))
                                                             g8473))
                                                         'module
                                                         'importer
                                                         new-world))
                                                       (x8471 (input))
                                                       (x8470 (input))
                                                       (x8469 (input)))
                                                (x8472 x8471 x8470 x8469)))
                                             (g8426
                                              (letrec ((x8480
                                                        ((lambda (j7427
                                                                  k7428
                                                                  f7429)
                                                           (letrec ((g8481
                                                                     (lambda (g7426)
                                                                       (letrec ((g8482
                                                                                 (letrec ((x8483
                                                                                           (letrec ((x8484
                                                                                                     (posn/c
                                                                                                      j7427
                                                                                                      k7428
                                                                                                      g7426)))
                                                                                             (f7429
                                                                                              x8484))))
                                                                                   (player/c
                                                                                    j7427
                                                                                    k7428
                                                                                    x8483))))
                                                                         g8482))))
                                                             g8481))
                                                         'module
                                                         'importer
                                                         new-player))
                                                       (x8479 (input)))
                                                (x8480 x8479)))
                                             (g8427
                                              (letrec ((x8487
                                                        ((lambda (j7432
                                                                  k7433
                                                                  f7434)
                                                           (letrec ((g8488
                                                                     (lambda (g7430
                                                                              g7431)
                                                                       (letrec ((g8489
                                                                                 (letrec ((x8490
                                                                                           (letrec ((x8492
                                                                                                     (zombies/c
                                                                                                      j7432
                                                                                                      k7433
                                                                                                      g7430))
                                                                                                    (x8491
                                                                                                     (zombies/c
                                                                                                      j7432
                                                                                                      k7433
                                                                                                      g7431)))
                                                                                             (f7434
                                                                                              x8492
                                                                                              x8491))))
                                                                                   (horde/c
                                                                                    j7432
                                                                                    k7433
                                                                                    x8490))))
                                                                         g8489))))
                                                             g8488))
                                                         'module
                                                         'importer
                                                         new-horde))
                                                       (x8486 (input))
                                                       (x8485 (input)))
                                                (x8487 x8486 x8485)))
                                             (g8428
                                              (letrec ((x8495
                                                        ((lambda (j7437
                                                                  k7438
                                                                  f7439)
                                                           (letrec ((g8496
                                                                     (lambda (g7435
                                                                              g7436)
                                                                       (letrec ((g8497
                                                                                 (letrec ((x8498
                                                                                           (letrec ((x8500
                                                                                                     (zombie/c
                                                                                                      j7437
                                                                                                      k7438
                                                                                                      g7435))
                                                                                                    (x8499
                                                                                                     (zombies/c
                                                                                                      j7437
                                                                                                      k7438
                                                                                                      g7436)))
                                                                                             (f7439
                                                                                              x8500
                                                                                              x8499))))
                                                                                   (zombies/c
                                                                                    j7437
                                                                                    k7438
                                                                                    x8498))))
                                                                         g8497))))
                                                             g8496))
                                                         'module
                                                         'importer
                                                         new-cons-zombies))
                                                       (x8494 (input))
                                                       (x8493 (input)))
                                                (x8495 x8494 x8493)))
                                             (g8429
                                              ((lambda (j7440 k7441 f7442)
                                                 (letrec ((g8501
                                                           (lambda ()
                                                             (letrec ((g8502
                                                                       (letrec ((x8503
                                                                                 (f7442)))
                                                                         (zombies/c
                                                                          j7440
                                                                          k7441
                                                                          x8503))))
                                                               g8502))))
                                                   g8501))
                                               'module
                                               'importer
                                               new-mt-zombies))
                                             (g8430
                                              (letrec ((x8505
                                                        ((lambda (j7444
                                                                  k7445
                                                                  f7446)
                                                           (letrec ((g8506
                                                                     (lambda (g7443)
                                                                       (letrec ((g8507
                                                                                 (letrec ((x8508
                                                                                           (letrec ((x8509
                                                                                                     (posn/c
                                                                                                      j7444
                                                                                                      k7445
                                                                                                      g7443)))
                                                                                             (f7446
                                                                                              x8509))))
                                                                                   (zombie/c
                                                                                    j7444
                                                                                    k7445
                                                                                    x8508))))
                                                                         g8507))))
                                                             g8506))
                                                         'module
                                                         'importer
                                                         new-zombie))
                                                       (x8504 (input)))
                                                (x8505 x8504)))
                                             (g8431
                                              (letrec ((x8512
                                                        ((lambda (j7449
                                                                  k7450
                                                                  f7451)
                                                           (letrec ((g8513
                                                                     (lambda (g7447
                                                                              g7448)
                                                                       (letrec ((g8514
                                                                                 (letrec ((x8515
                                                                                           (letrec ((x8517
                                                                                                     (real?/c
                                                                                                      j7449
                                                                                                      k7450
                                                                                                      g7447))
                                                                                                    (x8516
                                                                                                     (real?/c
                                                                                                      j7449
                                                                                                      k7450
                                                                                                      g7448)))
                                                                                             (f7451
                                                                                              x8517
                                                                                              x8516))))
                                                                                   (posn/c
                                                                                    j7449
                                                                                    k7450
                                                                                    x8515))))
                                                                         g8514))))
                                                             g8513))
                                                         'module
                                                         'importer
                                                         new-posn))
                                                       (x8511 (input))
                                                       (x8510 (input)))
                                                (x8512 x8511 x8510)))
                                             (g8432
                                              (world/c 'module 'importer w0)))
                                      g8432))))
                          g7466))))
              g7464)))
    g7463))
