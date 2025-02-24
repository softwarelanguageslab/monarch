(letrec ((any? (lambda (v) (letrec ((g7564 #t)) g7564)))
         (meta (lambda (v) (letrec ((g7565 v)) g7565)))
         (member
          (lambda (v lst)
            (letrec ((g7566
                      (letrec ((g7567
                                (letrec ((x-e7568 lst))
                                  (match
                                   x-e7568
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7569 (eq? v v1)))
                                       (if x-cnd7569 #t (member v vs)))))))))
                        g7567)))
              g7566)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7570 (lambda (v) (letrec ((g7571 v)) g7571)))) g7570)))
         (nonzero?
          (lambda (v)
            (letrec ((g7572 (letrec ((x7573 (= v 0))) (not x7573)))) g7572))))
  (letrec ((g7574
            (letrec ((g7575
                      (letrec ((>=
                                (lambda (x y)
                                  (letrec ((g7576
                                            (letrec ((x7578 (number? x)))
                                              (assert x7578)))
                                           (g7577
                                            (letrec ((val7243 (> x y)))
                                              (letrec ((g7579
                                                        (if val7243
                                                          val7243
                                                          (letrec ((val7244
                                                                    (= x y)))
                                                            (letrec ((g7580
                                                                      (if val7244
                                                                        val7244
                                                                        #f)))
                                                              g7580)))))
                                                g7579))))
                                    g7577)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7581
                                            (letrec ((x7583 (number? x)))
                                              (assert x7583)))
                                           (g7582
                                            (letrec ((val7245 (< x y)))
                                              (letrec ((g7584
                                                        (if val7245
                                                          val7245
                                                          (letrec ((val7246
                                                                    (= x y)))
                                                            (letrec ((g7585
                                                                      (if val7246
                                                                        val7246
                                                                        #f)))
                                                              g7585)))))
                                                g7584))))
                                    g7582)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7586
                                            (letrec ((x7588 (number? x)))
                                              (assert x7588)))
                                           (g7587
                                            (letrec ((x7589 (<= x y)))
                                              (not x7589))))
                                    g7587)))
                               (orig-+ +)
                               (orig-- -)
                               (orig-* *)
                               (orig-/ /)
                               (orig-> >)
                               (orig-< <)
                               (orig->= >=)
                               (orig-<= <=)
                               (orig-car car)
                               (orig-cdr cdr)
                               (orig-cons cons)
                               (orig-vector-ref vector-ref)
                               (orig-vector-set vector-set!))
                        (letrec ((g7590 '())
                                 (g7591
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7592
                                                        (lambda (k j lst)
                                                          (letrec ((g7593
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7594
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7594))
                                                                     lst)))
                                                            g7593))))
                                                g7592)))
                                           (real?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7595
                                                        (letrec ((x-cnd7596
                                                                  (real?
                                                                   g7267)))
                                                          (if x-cnd7596
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'real?)))))
                                                g7595)))
                                           (boolean?/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7597
                                                        (letrec ((x-cnd7598
                                                                  (boolean?
                                                                   g7270)))
                                                          (if x-cnd7598
                                                            g7270
                                                            (blame
                                                             g7268
                                                             'boolean?)))))
                                                g7597)))
                                           (number?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7599
                                                        (letrec ((x-cnd7600
                                                                  (number?
                                                                   g7273)))
                                                          (if x-cnd7600
                                                            g7273
                                                            (blame
                                                             g7271
                                                             'number?)))))
                                                g7599)))
                                           (any/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7601
                                                        (letrec ((x-cnd7602
                                                                  ((lambda (v)
                                                                     (letrec ((g7603
                                                                               #t))
                                                                       g7603))
                                                                   g7276)))
                                                          (if x-cnd7602
                                                            g7276
                                                            (blame
                                                             g7274
                                                             '(lambda (v)
                                                                #t))))))
                                                g7601)))
                                           (any?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7604
                                                        (letrec ((x-cnd7605
                                                                  ((lambda (v)
                                                                     (letrec ((g7606
                                                                               #t))
                                                                       g7606))
                                                                   g7279)))
                                                          (if x-cnd7605
                                                            g7279
                                                            (blame
                                                             g7277
                                                             '(lambda (v)
                                                                #t))))))
                                                g7604)))
                                           (cons?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7607
                                                        (letrec ((x-cnd7608
                                                                  (pair?
                                                                   g7282)))
                                                          (if x-cnd7608
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'pair?)))))
                                                g7607)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7609
                                                        (letrec ((x-cnd7610
                                                                  (pair?
                                                                   g7285)))
                                                          (if x-cnd7610
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'pair?)))))
                                                g7609)))
                                           (integer?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7611
                                                        (letrec ((x-cnd7612
                                                                  (integer?
                                                                   g7288)))
                                                          (if x-cnd7612
                                                            g7288
                                                            (blame
                                                             g7286
                                                             'integer?)))))
                                                g7611)))
                                           (symbol?/c
                                            (lambda (g7289 g7290 g7291)
                                              (letrec ((g7613
                                                        (letrec ((x-cnd7614
                                                                  (symbol?
                                                                   g7291)))
                                                          (if x-cnd7614
                                                            g7291
                                                            (blame
                                                             g7289
                                                             'symbol?)))))
                                                g7613)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7615
                                                        (lambda (k j v)
                                                          (letrec ((g7616
                                                                    (letrec ((x-cnd7617
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7617
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7616))))
                                                g7615)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7618
                                                        (lambda (k j v)
                                                          (letrec ((g7619
                                                                    (letrec ((x-cnd7620
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7620
                                                                        '()
                                                                        (letrec ((x7624
                                                                                  (letrec ((x7625
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7625)))
                                                                                 (x7621
                                                                                  (letrec ((x7623
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7622
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7623
                                                                                     k
                                                                                     j
                                                                                     x7622))))
                                                                          (orig-cons
                                                                           x7624
                                                                           x7621))))))
                                                            g7619))))
                                                g7618)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7626 #t)) g7626)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7627
                                                        (letrec ((x7628
                                                                  (= v 0)))
                                                          (not x7628))))
                                                g7627)))
                                           (nonzero?/c
                                            (lambda (g7292 g7293 g7294)
                                              (letrec ((g7629
                                                        (letrec ((x-cnd7630
                                                                  ((lambda (v)
                                                                     (letrec ((g7631
                                                                               (letrec ((x7632
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7632))))
                                                                       g7631))
                                                                   g7294)))
                                                          (if x-cnd7630
                                                            g7294
                                                            (blame
                                                             g7292
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7629)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7633
                                                        (lambda (g7295
                                                                 g7296
                                                                 g7297)
                                                          (letrec ((g7634
                                                                    (letrec ((x-cnd7635
                                                                              ((lambda (v)
                                                                                 (letrec ((g7636
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7636))
                                                                               g7297)))
                                                                      (if x-cnd7635
                                                                        g7297
                                                                        (blame
                                                                         g7295
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7634))))
                                                g7633)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7637
                                                        (lambda (g7298
                                                                 g7299
                                                                 g7300)
                                                          (letrec ((g7638
                                                                    (letrec ((x-cnd7639
                                                                              ((lambda (v)
                                                                                 (letrec ((g7640
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7640))
                                                                               g7300)))
                                                                      (if x-cnd7639
                                                                        g7300
                                                                        (blame
                                                                         g7298
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7638))))
                                                g7637)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7641
                                                        (lambda (g7301
                                                                 g7302
                                                                 g7303)
                                                          (letrec ((g7642
                                                                    (letrec ((x-cnd7643
                                                                              ((lambda (v)
                                                                                 (letrec ((g7644
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7644))
                                                                               g7303)))
                                                                      (if x-cnd7643
                                                                        g7303
                                                                        (blame
                                                                         g7301
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7642))))
                                                g7641)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7645
                                                        (lambda (g7304
                                                                 g7305
                                                                 g7306)
                                                          (letrec ((g7646
                                                                    (letrec ((x-cnd7647
                                                                              ((lambda (v)
                                                                                 (letrec ((g7648
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7648))
                                                                               g7306)))
                                                                      (if x-cnd7647
                                                                        g7306
                                                                        (blame
                                                                         g7304
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7646))))
                                                g7645)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7649
                                                        (lambda (g7307
                                                                 g7308
                                                                 g7309)
                                                          (letrec ((g7650
                                                                    (letrec ((x-cnd7651
                                                                              ((lambda (v)
                                                                                 (letrec ((g7652
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7652))
                                                                               g7309)))
                                                                      (if x-cnd7651
                                                                        g7309
                                                                        (blame
                                                                         g7307
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7650))))
                                                g7649)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7653 v)) g7653)))
                                           (+
                                            (letrec ((xj7310 'server)
                                                     (xk7311 'client))
                                              (letrec ((g7654
                                                        ((lambda (j7314
                                                                  k7315
                                                                  f7316)
                                                           (letrec ((g7656
                                                                     (lambda (g7312
                                                                              g7313)
                                                                       (letrec ((g7657
                                                                                 (letrec ((x7658
                                                                                           (letrec ((x7660
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7312))
                                                                                                    (x7659
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7313)))
                                                                                             (f7316
                                                                                              x7660
                                                                                              x7659))))
                                                                                   (number?/c
                                                                                    j7314
                                                                                    k7315
                                                                                    x7658))))
                                                                         g7657))))
                                                             g7656))
                                                         xj7310
                                                         xk7311
                                                         (lambda (a b)
                                                           (letrec ((g7655
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7655)))))
                                                g7654)))
                                           (-
                                            (letrec ((xj7317 'server)
                                                     (xk7318 'client))
                                              (letrec ((g7661
                                                        ((lambda (j7321
                                                                  k7322
                                                                  f7323)
                                                           (letrec ((g7663
                                                                     (lambda (g7319
                                                                              g7320)
                                                                       (letrec ((g7664
                                                                                 (letrec ((x7665
                                                                                           (letrec ((x7667
                                                                                                     (number?/c
                                                                                                      j7321
                                                                                                      k7322
                                                                                                      g7319))
                                                                                                    (x7666
                                                                                                     (number?/c
                                                                                                      j7321
                                                                                                      k7322
                                                                                                      g7320)))
                                                                                             (f7323
                                                                                              x7667
                                                                                              x7666))))
                                                                                   (number?/c
                                                                                    j7321
                                                                                    k7322
                                                                                    x7665))))
                                                                         g7664))))
                                                             g7663))
                                                         xj7317
                                                         xk7318
                                                         (lambda (a b)
                                                           (letrec ((g7662
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7662)))))
                                                g7661)))
                                           (*
                                            (letrec ((xj7324 'server)
                                                     (xk7325 'client))
                                              (letrec ((g7668
                                                        ((lambda (j7328
                                                                  k7329
                                                                  f7330)
                                                           (letrec ((g7670
                                                                     (lambda (g7326
                                                                              g7327)
                                                                       (letrec ((g7671
                                                                                 (letrec ((x7672
                                                                                           (letrec ((x7674
                                                                                                     (number?/c
                                                                                                      j7328
                                                                                                      k7329
                                                                                                      g7326))
                                                                                                    (x7673
                                                                                                     (number?/c
                                                                                                      j7328
                                                                                                      k7329
                                                                                                      g7327)))
                                                                                             (f7330
                                                                                              x7674
                                                                                              x7673))))
                                                                                   (number?/c
                                                                                    j7328
                                                                                    k7329
                                                                                    x7672))))
                                                                         g7671))))
                                                             g7670))
                                                         xj7324
                                                         xk7325
                                                         (lambda (a b)
                                                           (letrec ((g7669
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7669)))))
                                                g7668)))
                                           (<
                                            (letrec ((xj7331 'server)
                                                     (xk7332 'client))
                                              (letrec ((g7675
                                                        ((lambda (j7335
                                                                  k7336
                                                                  f7337)
                                                           (letrec ((g7677
                                                                     (lambda (g7333
                                                                              g7334)
                                                                       (letrec ((g7678
                                                                                 (letrec ((x7679
                                                                                           (letrec ((x7681
                                                                                                     (number?/c
                                                                                                      j7335
                                                                                                      k7336
                                                                                                      g7333))
                                                                                                    (x7680
                                                                                                     (number?/c
                                                                                                      j7335
                                                                                                      k7336
                                                                                                      g7334)))
                                                                                             (f7337
                                                                                              x7681
                                                                                              x7680))))
                                                                                   (boolean?/c
                                                                                    j7335
                                                                                    k7336
                                                                                    x7679))))
                                                                         g7678))))
                                                             g7677))
                                                         xj7331
                                                         xk7332
                                                         (lambda (a b)
                                                           (letrec ((g7676
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7676)))))
                                                g7675)))
                                           (>
                                            (letrec ((xj7338 'server)
                                                     (xk7339 'client))
                                              (letrec ((g7682
                                                        ((lambda (j7342
                                                                  k7343
                                                                  f7344)
                                                           (letrec ((g7684
                                                                     (lambda (g7340
                                                                              g7341)
                                                                       (letrec ((g7685
                                                                                 (letrec ((x7686
                                                                                           (letrec ((x7688
                                                                                                     (number?/c
                                                                                                      j7342
                                                                                                      k7343
                                                                                                      g7340))
                                                                                                    (x7687
                                                                                                     (number?/c
                                                                                                      j7342
                                                                                                      k7343
                                                                                                      g7341)))
                                                                                             (f7344
                                                                                              x7688
                                                                                              x7687))))
                                                                                   (boolean?/c
                                                                                    j7342
                                                                                    k7343
                                                                                    x7686))))
                                                                         g7685))))
                                                             g7684))
                                                         xj7338
                                                         xk7339
                                                         (lambda (a b)
                                                           (letrec ((g7683
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7683)))))
                                                g7682)))
                                           (<=
                                            (letrec ((xj7345 'server)
                                                     (xk7346 'client))
                                              (letrec ((g7689
                                                        ((lambda (j7349
                                                                  k7350
                                                                  f7351)
                                                           (letrec ((g7691
                                                                     (lambda (g7347
                                                                              g7348)
                                                                       (letrec ((g7692
                                                                                 (letrec ((x7693
                                                                                           (letrec ((x7695
                                                                                                     (number?/c
                                                                                                      j7349
                                                                                                      k7350
                                                                                                      g7347))
                                                                                                    (x7694
                                                                                                     (number?/c
                                                                                                      j7349
                                                                                                      k7350
                                                                                                      g7348)))
                                                                                             (f7351
                                                                                              x7695
                                                                                              x7694))))
                                                                                   (boolean?/c
                                                                                    j7349
                                                                                    k7350
                                                                                    x7693))))
                                                                         g7692))))
                                                             g7691))
                                                         xj7345
                                                         xk7346
                                                         (lambda (a b)
                                                           (letrec ((g7690
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7690)))))
                                                g7689)))
                                           (>=
                                            (letrec ((xj7352 'server)
                                                     (xk7353 'client))
                                              (letrec ((g7696
                                                        ((lambda (j7356
                                                                  k7357
                                                                  f7358)
                                                           (letrec ((g7698
                                                                     (lambda (g7354
                                                                              g7355)
                                                                       (letrec ((g7699
                                                                                 (letrec ((x7700
                                                                                           (letrec ((x7702
                                                                                                     (number?/c
                                                                                                      j7356
                                                                                                      k7357
                                                                                                      g7354))
                                                                                                    (x7701
                                                                                                     (number?/c
                                                                                                      j7356
                                                                                                      k7357
                                                                                                      g7355)))
                                                                                             (f7358
                                                                                              x7702
                                                                                              x7701))))
                                                                                   (boolean?/c
                                                                                    j7356
                                                                                    k7357
                                                                                    x7700))))
                                                                         g7699))))
                                                             g7698))
                                                         xj7352
                                                         xk7353
                                                         (lambda (a b)
                                                           (letrec ((g7697
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7697)))))
                                                g7696)))
                                           (/
                                            (letrec ((xj7359 'server)
                                                     (xk7360 'client))
                                              (letrec ((g7703
                                                        ((lambda (j7363
                                                                  k7364
                                                                  f7365)
                                                           (letrec ((g7705
                                                                     (lambda (g7361
                                                                              g7362)
                                                                       (letrec ((g7706
                                                                                 (letrec ((x7707
                                                                                           (letrec ((x7709
                                                                                                     (number?/c
                                                                                                      j7363
                                                                                                      k7364
                                                                                                      g7361))
                                                                                                    (x7708
                                                                                                     (number?/c
                                                                                                      j7363
                                                                                                      k7364
                                                                                                      g7362)))
                                                                                             (f7365
                                                                                              x7709
                                                                                              x7708))))
                                                                                   (number?/c
                                                                                    j7363
                                                                                    k7364
                                                                                    x7707))))
                                                                         g7706))))
                                                             g7705))
                                                         xj7359
                                                         xk7360
                                                         (lambda (a b)
                                                           (letrec ((g7704
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7704)))))
                                                g7703)))
                                           (car
                                            (letrec ((xj7366 'server)
                                                     (xk7367 'client))
                                              (letrec ((g7710
                                                        ((lambda (j7369
                                                                  k7370
                                                                  f7371)
                                                           (letrec ((g7712
                                                                     (lambda (g7368)
                                                                       (letrec ((g7713
                                                                                 (letrec ((x7714
                                                                                           (letrec ((x7715
                                                                                                     (pair?/c
                                                                                                      j7369
                                                                                                      k7370
                                                                                                      g7368)))
                                                                                             (f7371
                                                                                              x7715))))
                                                                                   (any/c
                                                                                    j7369
                                                                                    k7370
                                                                                    x7714))))
                                                                         g7713))))
                                                             g7712))
                                                         xj7366
                                                         xk7367
                                                         (lambda (p)
                                                           (letrec ((g7711
                                                                     (orig-car
                                                                      p)))
                                                             g7711)))))
                                                g7710)))
                                           (cdr
                                            (letrec ((xj7372 'server)
                                                     (xk7373 'client))
                                              (letrec ((g7716
                                                        ((lambda (j7375
                                                                  k7376
                                                                  f7377)
                                                           (letrec ((g7718
                                                                     (lambda (g7374)
                                                                       (letrec ((g7719
                                                                                 (letrec ((x7720
                                                                                           (letrec ((x7721
                                                                                                     (pair?/c
                                                                                                      j7375
                                                                                                      k7376
                                                                                                      g7374)))
                                                                                             (f7377
                                                                                              x7721))))
                                                                                   (any/c
                                                                                    j7375
                                                                                    k7376
                                                                                    x7720))))
                                                                         g7719))))
                                                             g7718))
                                                         xj7372
                                                         xk7373
                                                         (lambda (p)
                                                           (letrec ((g7717
                                                                     (orig-cdr
                                                                      p)))
                                                             g7717)))))
                                                g7716)))
                                           (cons
                                            (letrec ((xj7378 'server)
                                                     (xk7379 'client))
                                              (letrec ((g7722
                                                        ((lambda (j7382
                                                                  k7383
                                                                  f7384)
                                                           (letrec ((g7724
                                                                     (lambda (g7380
                                                                              g7381)
                                                                       (letrec ((g7725
                                                                                 (letrec ((x7726
                                                                                           (letrec ((x7728
                                                                                                     (any/c
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7380))
                                                                                                    (x7727
                                                                                                     (any/c
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7381)))
                                                                                             (f7384
                                                                                              x7728
                                                                                              x7727))))
                                                                                   (pair?/c
                                                                                    j7382
                                                                                    k7383
                                                                                    x7726))))
                                                                         g7725))))
                                                             g7724))
                                                         xj7378
                                                         xk7379
                                                         (lambda (a b)
                                                           (letrec ((g7723
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7723)))))
                                                g7722)))
                                           (vector-ref
                                            (letrec ((xj7385 'server)
                                                     (xk7386 'client))
                                              (letrec ((g7729
                                                        ((lambda (j7388
                                                                  k7389
                                                                  f7390)
                                                           (letrec ((g7731
                                                                     (lambda (g7387)
                                                                       (letrec ((g7732
                                                                                 (letrec ((x7733
                                                                                           (letrec ((x7734
                                                                                                     (vector?/c
                                                                                                      j7388
                                                                                                      k7389
                                                                                                      g7387)))
                                                                                             (f7390
                                                                                              x7734))))
                                                                                   (integer?/c
                                                                                    j7388
                                                                                    k7389
                                                                                    x7733))))
                                                                         g7732))))
                                                             g7731))
                                                         xj7385
                                                         xk7386
                                                         (lambda (v i)
                                                           (letrec ((g7730
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7730)))))
                                                g7729)))
                                           (vector-set!
                                            (letrec ((xj7391 'server)
                                                     (xk7392 'client))
                                              (letrec ((g7735
                                                        ((lambda (j7395
                                                                  k7396
                                                                  f7397)
                                                           (letrec ((g7737
                                                                     (lambda (g7393
                                                                              g7394)
                                                                       (letrec ((g7738
                                                                                 (letrec ((x7739
                                                                                           (letrec ((x7741
                                                                                                     (vector?/c
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7393))
                                                                                                    (x7740
                                                                                                     (integer?/c
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7394)))
                                                                                             (f7397
                                                                                              x7741
                                                                                              x7740))))
                                                                                   (any/c
                                                                                    j7395
                                                                                    k7396
                                                                                    x7739))))
                                                                         g7738))))
                                                             g7737))
                                                         xj7391
                                                         xk7392
                                                         (lambda (vec i v)
                                                           (letrec ((g7736
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7736)))))
                                                g7735)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7742
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7742)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7743
                                                        (letrec ((x7744
                                                                  (letrec ((x7745
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7745))))
                                                          (cdr x7744))))
                                                g7743)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7746
                                                        (letrec ((x7749
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7749)))
                                                       (g7747
                                                        (letrec ((x7750
                                                                  (list? l)))
                                                          (assert x7750)))
                                                       (g7748
                                                        (letrec ((x-cnd7751
                                                                  (null? l)))
                                                          (if x-cnd7751
                                                            '()
                                                            (letrec ((x7754
                                                                      (letrec ((x7755
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7755)))
                                                                     (x7752
                                                                      (letrec ((x7753
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7753))))
                                                              (cons
                                                               x7754
                                                               x7752))))))
                                                g7748)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7756
                                                        (letrec ((x7757
                                                                  (car x)))
                                                          (cdr x7757))))
                                                g7756)))
                                           (cadadr
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
                                                          (car x7759))))
                                                g7758)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7762
                                                        (letrec ((x7763
                                                                  (letrec ((x7764
                                                                            (letrec ((x7765
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7765))))
                                                                    (car
                                                                     x7764))))
                                                          (cdr x7763))))
                                                g7762)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7766
                                                        (letrec ((x7769
                                                                  (string?
                                                                   filename)))
                                                          (assert x7769)))
                                                       (g7767
                                                        (letrec ((x7770
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7770)))
                                                       (g7768
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7771
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7772 res))
                                                            g7772))))
                                                g7768)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7773
                                                        (letrec ((x7774
                                                                  (letrec ((x7775
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7775))))
                                                          (car x7774))))
                                                g7773)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7776
                                                        (letrec ((x7777
                                                                  (letrec ((x7778
                                                                            (letrec ((x7779
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7779))))
                                                                    (car
                                                                     x7778))))
                                                          (cdr x7777))))
                                                g7776)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7780
                                                        (letrec ((x7782
                                                                  (list? l)))
                                                          (assert x7782)))
                                                       (g7781
                                                        (letrec ((x-cnd7783
                                                                  (null? l)))
                                                          (if x-cnd7783
                                                            #f
                                                            (letrec ((x-cnd7784
                                                                      (letrec ((x7785
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7785
                                                                         k))))
                                                              (if x-cnd7784
                                                                (car l)
                                                                (letrec ((x7786
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7786))))))))
                                                g7781)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7787
                                                        (letrec ((x7788
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7788))))
                                                g7787)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7789
                                                        (letrec ((x7791
                                                                  (list? l)))
                                                          (assert x7791)))
                                                       (g7790
                                                        (letrec ((x-cnd7792
                                                                  (null? l)))
                                                          (if x-cnd7792
                                                            ""
                                                            (letrec ((x7795
                                                                      (letrec ((x7796
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7796)))
                                                                     (x7793
                                                                      (letrec ((x7794
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7794))))
                                                              (string-append
                                                               x7795
                                                               x7793))))))
                                                g7790)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7797
                                                        (letrec ((x7800
                                                                  (char? c1)))
                                                          (assert x7800)))
                                                       (g7798
                                                        (letrec ((x7801
                                                                  (char? c2)))
                                                          (assert x7801)))
                                                       (g7799
                                                        (letrec ((val7247
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7802
                                                                    (if val7247
                                                                      val7247
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7802))))
                                                g7799)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7803
                                                        (letrec ((x7804
                                                                  (letrec ((x7805
                                                                            (letrec ((x7806
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7806))))
                                                                    (cdr
                                                                     x7805))))
                                                          (cdr x7804))))
                                                g7803)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7807
                                                        (letrec ((x7810
                                                                  (list? l)))
                                                          (assert x7810)))
                                                       (g7808
                                                        (letrec ((x7811
                                                                  (number?)))
                                                          (assert x7811)))
                                                       (g7809
                                                        (letrec ((x-cnd7812
                                                                  (zero? k)))
                                                          (if x-cnd7812
                                                            x
                                                            (letrec ((x7814
                                                                      (cdr x))
                                                                     (x7813
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7814
                                                               x7813))))))
                                                g7809)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7815 '())) g7815)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7816
                                                        (letrec ((x-cnd7817
                                                                  (letrec ((x7818
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7818))))
                                                          (if x-cnd7817
                                                            (letrec ((x7819
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7819))
                                                            #f))))
                                                g7816)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7820
                                                        (letrec ((val7248
                                                                  (letrec ((x7821
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7821
                                                                     9))))
                                                          (letrec ((g7822
                                                                    (if val7248
                                                                      val7248
                                                                      (letrec ((val7249
                                                                                (letrec ((x7823
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7823
                                                                                   10))))
                                                                        (letrec ((g7824
                                                                                  (if val7249
                                                                                    val7249
                                                                                    (letrec ((x7825
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7825
                                                                                       32)))))
                                                                          g7824)))))
                                                            g7822))))
                                                g7820)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7826
                                                        (letrec ((x7827
                                                                  (letrec ((x7828
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7828))))
                                                          (cdr x7827))))
                                                g7826)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7829
                                                        (letrec ((x7831
                                                                  (number? x)))
                                                          (assert x7831)))
                                                       (g7830 (> x 0)))
                                                g7830)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7832 #f)) g7832)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7833
                                                        (letrec ((x7834
                                                                  (cdr x)))
                                                          (cdr x7834))))
                                                g7833)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7835
                                                        (letrec ((x7837
                                                                  (number? x)))
                                                          (assert x7837)))
                                                       (g7836
                                                        (letrec ((x-cnd7838
                                                                  (< x 0)))
                                                          (if x-cnd7838
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7836)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7839
                                                        (letrec ((val7250
                                                                  (eq? a b)))
                                                          (letrec ((g7840
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x-cnd7841
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7841
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7842
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((val7252
                                                                                              (letrec ((x-cnd7843
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7843
                                                                                                  (letrec ((x-cnd7844
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7844
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7845
                                                                                                (if val7252
                                                                                                  val7252
                                                                                                  (letrec ((val7253
                                                                                                            (letrec ((x-cnd7846
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7846
                                                                                                                (letrec ((x-cnd7847
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7847
                                                                                                                    (letrec ((x-cnd7848
                                                                                                                              (letrec ((x7850
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7849
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7850
                                                                                                                                 x7849))))
                                                                                                                      (if x-cnd7848
                                                                                                                        (letrec ((x7852
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7851
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7852
                                                                                                                           x7851))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7853
                                                                                                              (if val7253
                                                                                                                val7253
                                                                                                                (letrec ((x-cnd7854
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7854
                                                                                                                    (letrec ((x-cnd7855
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7855
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7856
                                                                                                                                    (letrec ((x-cnd7857
                                                                                                                                              (letrec ((x7858
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7858
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7857
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7859
                                                                                                                                                              (letrec ((val7254
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7860
                                                                                                                                                                          (if val7254
                                                                                                                                                                            val7254
                                                                                                                                                                            (letrec ((x-cnd7861
                                                                                                                                                                                      (letrec ((x7863
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7862
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7863
                                                                                                                                                                                         x7862))))
                                                                                                                                                                              (if x-cnd7861
                                                                                                                                                                                (letrec ((x7864
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7864))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7860))))
                                                                                                                                                      g7859))))
                                                                                                                                          (letrec ((g7865
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7865))
                                                                                                                                        #f))))
                                                                                                                            g7856))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7853)))))
                                                                                        g7845)))))
                                                                          g7842)))))
                                                            g7840))))
                                                g7839)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7866
                                                        (letrec ((x7867
                                                                  (letrec ((x7868
                                                                            (letrec ((x7869
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7869))))
                                                                    (car
                                                                     x7868))))
                                                          (cdr x7867))))
                                                g7866)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7870
                                                        (letrec ((x7871
                                                                  (letrec ((x7872
                                                                            (letrec ((x7873
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7873))))
                                                                    (car
                                                                     x7872))))
                                                          (car x7871))))
                                                g7870)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7874 (eq? x y)))
                                                g7874)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7875
                                                        (letrec ((x7878
                                                                  (string?
                                                                   filename)))
                                                          (assert x7878)))
                                                       (g7876
                                                        (letrec ((x7879
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7879)))
                                                       (g7877
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7880
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7881 res))
                                                            g7881))))
                                                g7877)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7882 (cons x '())))
                                                g7882)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7883
                                                        (letrec ((x7886
                                                                  (char? c1)))
                                                          (assert x7886)))
                                                       (g7884
                                                        (letrec ((x7887
                                                                  (char? c2)))
                                                          (assert x7887)))
                                                       (g7885
                                                        (letrec ((val7255
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7888
                                                                    (if val7255
                                                                      val7255
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7888))))
                                                g7885)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7889
                                                        (letrec ((x7890
                                                                  (letrec ((x7891
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7891))))
                                                          (cdr x7890))))
                                                g7889)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7892
                                                        (letrec ((x7893
                                                                  (letrec ((x7894
                                                                            (letrec ((x7895
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7895))))
                                                                    (car
                                                                     x7894))))
                                                          (cdr x7893))))
                                                g7892)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7896
                                                        (letrec ((x7897
                                                                  (letrec ((x7898
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7898))))
                                                          (car x7897))))
                                                g7896)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7899
                                                        (letrec ((x7900
                                                                  (letrec ((x7901
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7901))))
                                                          (car x7900))))
                                                g7899)))
                                           (char-ci>?
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
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7907))))
                                                g7904)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7908
                                                        (letrec ((x7909
                                                                  (letrec ((x7910
                                                                            (letrec ((x7911
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7911))))
                                                                    (car
                                                                     x7910))))
                                                          (car x7909))))
                                                g7908)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7912
                                                        (letrec ((x7914
                                                                  (number? x)))
                                                          (assert x7914)))
                                                       (g7913 (< x 0)))
                                                g7913)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7915 (memq e l)))
                                                g7915)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7916
                                                        (letrec ((x7917
                                                                  (letrec ((x7918
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7918))))
                                                          (car x7917))))
                                                g7916)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7919 '())) g7919)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7920
                                                        (letrec ((x7922
                                                                  (list? l)))
                                                          (assert x7922)))
                                                       (g7921
                                                        (letrec ((x-cnd7923
                                                                  (null? l)))
                                                          (if x-cnd7923
                                                            '()
                                                            (letrec ((x7926
                                                                      (letrec ((x7927
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7927)))
                                                                     (x7924
                                                                      (letrec ((x7925
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7925))))
                                                              (append
                                                               x7926
                                                               x7924))))))
                                                g7921)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7928
                                                        (letrec ((x7929
                                                                  (letrec ((x7930
                                                                            (letrec ((x7931
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7931))))
                                                                    (car
                                                                     x7930))))
                                                          (car x7929))))
                                                g7928)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7932
                                                        (letrec ((x7933
                                                                  (letrec ((x7934
                                                                            (letrec ((x7935
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7935))))
                                                                    (cdr
                                                                     x7934))))
                                                          (cdr x7933))))
                                                g7932)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7936
                                                        (letrec ((x7938
                                                                  (number? x)))
                                                          (assert x7938)))
                                                       (g7937
                                                        (letrec ((x7939
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7939))))
                                                g7937)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7940
                                                        (letrec ((x7941
                                                                  (letrec ((x7942
                                                                            (letrec ((x7943
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7943))))
                                                                    (car
                                                                     x7942))))
                                                          (car x7941))))
                                                g7940)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7944
                                                        (letrec ((x7947
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7947)))
                                                       (g7945
                                                        (letrec ((x7948
                                                                  (list?
                                                                   args)))
                                                          (assert x7948)))
                                                       (g7946
                                                        (letrec ((x-cnd7949
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7949
                                                            (letrec ((g7950
                                                                      (proc)))
                                                              g7950)
                                                            (letrec ((x-cnd7951
                                                                      (letrec ((x7952
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7952))))
                                                              (if x-cnd7951
                                                                (letrec ((g7953
                                                                          (letrec ((x7954
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7954))))
                                                                  g7953)
                                                                (letrec ((x-cnd7955
                                                                          (letrec ((x7956
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7956))))
                                                                  (if x-cnd7955
                                                                    (letrec ((g7957
                                                                              (letrec ((x7959
                                                                                        (car
                                                                                         args))
                                                                                       (x7958
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7959
                                                                                 x7958))))
                                                                      g7957)
                                                                    (letrec ((x-cnd7960
                                                                              (letrec ((x7961
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7961))))
                                                                      (if x-cnd7960
                                                                        (letrec ((g7962
                                                                                  (letrec ((x7965
                                                                                            (car
                                                                                             args))
                                                                                           (x7964
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7963
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7965
                                                                                     x7964
                                                                                     x7963))))
                                                                          g7962)
                                                                        (letrec ((x-cnd7966
                                                                                  (letrec ((x7967
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7967))))
                                                                          (if x-cnd7966
                                                                            (letrec ((g7968
                                                                                      (letrec ((x7972
                                                                                                (car
                                                                                                 args))
                                                                                               (x7971
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7970
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7969
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7972
                                                                                         x7971
                                                                                         x7970
                                                                                         x7969))))
                                                                              g7968)
                                                                            (letrec ((x-cnd7973
                                                                                      (letrec ((x7974
                                                                                                (letrec ((x7975
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7975))))
                                                                                        (null?
                                                                                         x7974))))
                                                                              (if x-cnd7973
                                                                                (letrec ((g7976
                                                                                          (letrec ((x7982
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7981
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7980
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7979
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7977
                                                                                                    (letrec ((x7978
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7978))))
                                                                                            (proc
                                                                                             x7982
                                                                                             x7981
                                                                                             x7980
                                                                                             x7979
                                                                                             x7977))))
                                                                                  g7976)
                                                                                (letrec ((x-cnd7983
                                                                                          (letrec ((x7984
                                                                                                    (letrec ((x7985
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7985))))
                                                                                            (null?
                                                                                             x7984))))
                                                                                  (if x-cnd7983
                                                                                    (letrec ((g7986
                                                                                              (letrec ((x7994
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7993
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7992
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7991
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7989
                                                                                                        (letrec ((x7990
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7990)))
                                                                                                       (x7987
                                                                                                        (letrec ((x7988
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7988))))
                                                                                                (proc
                                                                                                 x7994
                                                                                                 x7993
                                                                                                 x7992
                                                                                                 x7991
                                                                                                 x7989
                                                                                                 x7987))))
                                                                                      g7986)
                                                                                    (letrec ((x-cnd7995
                                                                                              (letrec ((x7996
                                                                                                        (letrec ((x7997
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7997))))
                                                                                                (null?
                                                                                                 x7996))))
                                                                                      (if x-cnd7995
                                                                                        (letrec ((g7998
                                                                                                  (letrec ((x8008
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8007
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8006
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8005
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8003
                                                                                                            (letrec ((x8004
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8004)))
                                                                                                           (x8001
                                                                                                            (letrec ((x8002
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8002)))
                                                                                                           (x7999
                                                                                                            (letrec ((x8000
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8000))))
                                                                                                    (proc
                                                                                                     x8008
                                                                                                     x8007
                                                                                                     x8006
                                                                                                     x8005
                                                                                                     x8003
                                                                                                     x8001
                                                                                                     x7999))))
                                                                                          g7998)
                                                                                        (letrec ((g8009
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8009)))))))))))))))))))
                                                g7946)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8010
                                                        (letrec ((x8012
                                                                  (list? l)))
                                                          (assert x8012)))
                                                       (g8011
                                                        (letrec ((x-cnd8013
                                                                  (null? l)))
                                                          (if x-cnd8013
                                                            #f
                                                            (letrec ((x-cnd8014
                                                                      (letrec ((x8015
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8015
                                                                         e))))
                                                              (if x-cnd8014
                                                                l
                                                                (letrec ((x8016
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8016))))))))
                                                g8011)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8017
                                                        (letrec ((x8018
                                                                  (letrec ((x8019
                                                                            (letrec ((x8020
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8020))))
                                                                    (cdr
                                                                     x8019))))
                                                          (cdr x8018))))
                                                g8017)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8021
                                                        (letrec ((x8022
                                                                  (letrec ((x8023
                                                                            (letrec ((x8024
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8024))))
                                                                    (cdr
                                                                     x8023))))
                                                          (car x8022))))
                                                g8021)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8025 (random 42)))
                                                g8025)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8026
                                                        (letrec ((x8028
                                                                  (number? x)))
                                                          (assert x8028)))
                                                       (g8027 (= x 0)))
                                                g8027)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8029
                                                        (letrec ((val7256
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8030
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8030))))
                                                g8029)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8031
                                                        (letrec ((x8032
                                                                  (cdr x)))
                                                          (car x8032))))
                                                g8031)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8033
                                                        (letrec ((val7257
                                                                  (letrec ((x-cnd8034
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8034
                                                                      (letrec ((x8035
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8035))
                                                                      #f))))
                                                          (letrec ((g8036
                                                                    (if val7257
                                                                      val7257
                                                                      (null?
                                                                       l))))
                                                            g8036))))
                                                g8033)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8037
                                                        (letrec ((x8038
                                                                  (letrec ((x8039
                                                                            (letrec ((x8040
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8040))))
                                                                    (cdr
                                                                     x8039))))
                                                          (cdr x8038))))
                                                g8037)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8041
                                                        (letrec ((x-cnd8042
                                                                  (letrec ((x8043
                                                                            #\0))
                                                                    (char<=?
                                                                     x8043
                                                                     c))))
                                                          (if x-cnd8042
                                                            (letrec ((x8044
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8044))
                                                            #f))))
                                                g8041)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8045
                                                        (letrec ((x8047
                                                                  (list? l)))
                                                          (assert x8047)))
                                                       (g8046
                                                        (letrec ((x-cnd8048
                                                                  (null? l)))
                                                          (if x-cnd8048
                                                            #f
                                                            (letrec ((x-cnd8049
                                                                      (letrec ((x8050
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8050
                                                                         k))))
                                                              (if x-cnd8049
                                                                (car l)
                                                                (letrec ((x8051
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8051))))))))
                                                g8046)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8052 (if x #f #t)))
                                                g8052)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8053 (append l1 l2)))
                                                g8053)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8054
                                                        (letrec ((x8056
                                                                  (list? l)))
                                                          (assert x8056)))
                                                       (g8055
                                                        (letrec ((x-cnd8057
                                                                  (null? l)))
                                                          (if x-cnd8057
                                                            #f
                                                            (letrec ((x-cnd8058
                                                                      (letrec ((x8059
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8059
                                                                         e))))
                                                              (if x-cnd8058
                                                                l
                                                                (letrec ((x8060
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8060))))))))
                                                g8055)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8061
                                                        (letrec ((x8062
                                                                  (letrec ((x8063
                                                                            (letrec ((x8064
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8064))))
                                                                    (cdr
                                                                     x8063))))
                                                          (car x8062))))
                                                g8061)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8065
                                                        (letrec ((x8067
                                                                  (list? l)))
                                                          (assert x8067)))
                                                       (g8066
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8068
                                                                              (letrec ((x-cnd8069
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8069
                                                                                  0
                                                                                  (letrec ((x8070
                                                                                            (letrec ((x8071
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8071))))
                                                                                    (+
                                                                                     1
                                                                                     x8070))))))
                                                                      g8068))))
                                                          (letrec ((g8072
                                                                    (rec l)))
                                                            g8072))))
                                                g8066)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8073
                                                        (letrec ((x8076
                                                                  (char? c1)))
                                                          (assert x8076)))
                                                       (g8074
                                                        (letrec ((x8077
                                                                  (char? c2)))
                                                          (assert x8077)))
                                                       (g8075
                                                        (letrec ((val7258
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8078
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8078))))
                                                g8075)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8079
                                                        (letrec ((x8080
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8080))))
                                                g8079)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8081
                                                        (letrec ((x8082
                                                                  (letrec ((x8083
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8083))))
                                                          (cdr x8082))))
                                                g8081)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8084
                                                        (letrec ((x8086
                                                                  (list? l)))
                                                          (assert x8086)))
                                                       (g8085
                                                        (letrec ((x-cnd8087
                                                                  (null? l)))
                                                          (if x-cnd8087
                                                            #f
                                                            (letrec ((x-cnd8088
                                                                      (letrec ((x8089
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8089
                                                                         k))))
                                                              (if x-cnd8088
                                                                (car l)
                                                                (letrec ((x8090
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8090))))))))
                                                g8085)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8091
                                                        (letrec ((x8092
                                                                  (car x)))
                                                          (car x8092))))
                                                g8091)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8093
                                                        (letrec ((x8096
                                                                  (char? c1)))
                                                          (assert x8096)))
                                                       (g8094
                                                        (letrec ((x8097
                                                                  (char? c2)))
                                                          (assert x8097)))
                                                       (g8095
                                                        (letrec ((x8098
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8098))))
                                                g8095)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8099
                                                        (letrec ((val7259
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8100
                                                                    (if val7259
                                                                      val7259
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8100))))
                                                g8099)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8101
                                                        (letrec ((x8104
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8104)))
                                                       (g8102
                                                        (letrec ((x8105
                                                                  (list? l)))
                                                          (assert x8105)))
                                                       (g8103
                                                        (letrec ((x-cnd8106
                                                                  (null? l)))
                                                          (if x-cnd8106
                                                            #t
                                                            (letrec ((x-cnd8107
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8107
                                                                (letrec ((g8108
                                                                          (letrec ((x8110
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8110)))
                                                                         (g8109
                                                                          (letrec ((x8111
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8111))))
                                                                  g8109)
                                                                '()))))))
                                                g8103)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8112
                                                        (letrec ((x8114
                                                                  (number? x)))
                                                          (assert x8114)))
                                                       (g8113
                                                        (letrec ((x-cnd8115
                                                                  (< x 0)))
                                                          (if x-cnd8115
                                                            (- 0 x)
                                                            x))))
                                                g8113)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8116
                                                        (letrec ((x8119
                                                                  (char? c1)))
                                                          (assert x8119)))
                                                       (g8117
                                                        (letrec ((x8120
                                                                  (char? c2)))
                                                          (assert x8120)))
                                                       (g8118
                                                        (letrec ((val7260
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8121
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8121))))
                                                g8118)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8122
                                                        (letrec ((x8123
                                                                  (letrec ((x8124
                                                                            (letrec ((x8125
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8125))))
                                                                    (cdr
                                                                     x8124))))
                                                          (car x8123))))
                                                g8122)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8126 #f)) g8126)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8127
                                                        (letrec ((x8129
                                                                  (letrec ((x8130
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8130)))
                                                                 (x8128
                                                                  (gcd m n)))
                                                          (/ x8129 x8128))))
                                                g8127)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8131
                                                        (letrec ((x8135
                                                                  (list? l)))
                                                          (assert x8135)))
                                                       (g8132
                                                        (letrec ((x8136
                                                                  (number?
                                                                   index)))
                                                          (assert x8136)))
                                                       (g8133
                                                        (letrec ((x8137
                                                                  (letrec ((x8138
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8138))))
                                                          (assert x8137)))
                                                       (g8134
                                                        (letrec ((x-cnd8139
                                                                  (= index 0)))
                                                          (if x-cnd8139
                                                            (car l)
                                                            (letrec ((x8141
                                                                      (cdr l))
                                                                     (x8140
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8141
                                                               x8140))))))
                                                g8134)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8142
                                                        (letrec ((x-cnd8143
                                                                  (= b 0)))
                                                          (if x-cnd8143
                                                            a
                                                            (letrec ((x8144
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8144))))))
                                                g8142)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8145
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8145)))
                                           (image?
                                            (lambda (image7548)
                                              (letrec ((g8146
                                                        (letrec ((x8147
                                                                  (car
                                                                   image7548)))
                                                          (eq? x8147 'image))))
                                                g8146)))
                                           (image/c
                                            (lambda (j7399 k7400 v7398)
                                              (letrec ((g8148
                                                        (cons image '())))
                                                g8148)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8149 (image)))
                                                g8149)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8150 (image)))
                                                g8150)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8151 (image)))
                                                g8151)))
                                           (posn
                                            (lambda (x7550 y7551)
                                              (letrec ((g8152
                                                        (letrec ((x8153
                                                                  (letrec ((x8154
                                                                            (orig-cons
                                                                             y7551
                                                                             '())))
                                                                    (orig-cons
                                                                     x7550
                                                                     x8154))))
                                                          (orig-cons
                                                           'posn
                                                           x8153))))
                                                g8152)))
                                           (posn?
                                            (lambda (posn7549)
                                              (letrec ((g8155
                                                        (letrec ((x8156
                                                                  (car
                                                                   posn7549)))
                                                          (eq? x8156 'posn))))
                                                g8155)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8157
                                                        (letrec ((x8158
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8158))))
                                                g8157)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8159
                                                        (letrec ((x8160
                                                                  (letrec ((x8161
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8161))))
                                                          (orig-car x8160))))
                                                g8159)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8162
                                                        (letrec ((x-cnd8163
                                                                  (letrec ((x8165
                                                                            (posn-x
                                                                             p1))
                                                                           (x8164
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8165
                                                                     x8164))))
                                                          (if x-cnd8163
                                                            (letrec ((x8167
                                                                      (posn-y
                                                                       p1))
                                                                     (x8166
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8167 x8166))
                                                            #f))))
                                                g8162)))
                                           (snake
                                            (lambda (dir7555 segs7556)
                                              (letrec ((g8168
                                                        (letrec ((x8169
                                                                  (letrec ((x8170
                                                                            (orig-cons
                                                                             segs7556
                                                                             '())))
                                                                    (orig-cons
                                                                     dir7555
                                                                     x8170))))
                                                          (orig-cons
                                                           'snake
                                                           x8169))))
                                                g8168)))
                                           (snake?
                                            (lambda (snake7554)
                                              (letrec ((g8171
                                                        (letrec ((x8172
                                                                  (car
                                                                   snake7554)))
                                                          (eq? x8172 'snake))))
                                                g8171)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g8173
                                                        (letrec ((x8174
                                                                  (orig-cdr
                                                                   snake)))
                                                          (orig-car x8174))))
                                                g8173)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g8175
                                                        (letrec ((x8176
                                                                  (letrec ((x8177
                                                                            (orig-cdr
                                                                             snake)))
                                                                    (orig-cdr
                                                                     x8177))))
                                                          (orig-car x8176))))
                                                g8175)))
                                           (world
                                            (lambda (snake7560 food7561)
                                              (letrec ((g8178
                                                        (letrec ((x8179
                                                                  (letrec ((x8180
                                                                            (orig-cons
                                                                             food7561
                                                                             '())))
                                                                    (orig-cons
                                                                     snake7560
                                                                     x8180))))
                                                          (orig-cons
                                                           'world
                                                           x8179))))
                                                g8178)))
                                           (world?
                                            (lambda (world7559)
                                              (letrec ((g8181
                                                        (letrec ((x8182
                                                                  (car
                                                                   world7559)))
                                                          (eq? x8182 'world))))
                                                g8181)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g8183
                                                        (letrec ((x8184
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8184))))
                                                g8183)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g8185
                                                        (letrec ((x8186
                                                                  (letrec ((x8187
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8187))))
                                                          (orig-car x8186))))
                                                g8185)))
                                           (DIR/C
                                            (lambda (g7405 g7406 g7407)
                                              (letrec ((g8188
                                                        (letrec ((x-cnd8189
                                                                  ((lambda (v7404)
                                                                     (letrec ((g8190
                                                                               (letrec ((x-cnd8191
                                                                                         (eq?
                                                                                          'up
                                                                                          v7404)))
                                                                                 (if x-cnd8191
                                                                                   #t
                                                                                   (letrec ((x-cnd8192
                                                                                             (eq?
                                                                                              'down
                                                                                              v7404)))
                                                                                     (if x-cnd8192
                                                                                       #t
                                                                                       (letrec ((x-cnd8193
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v7404)))
                                                                                         (if x-cnd8193
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v7404)))))))))
                                                                       g8190))
                                                                   g7407)))
                                                          (if x-cnd8189
                                                            g7407
                                                            (blame
                                                             g7405
                                                             '(lambda (v7404)
                                                                (if (eq?
                                                                     'up
                                                                     v7404)
                                                                  #t
                                                                  (if (eq?
                                                                       'down
                                                                       v7404)
                                                                    #t
                                                                    (if (eq?
                                                                         'left
                                                                         v7404)
                                                                      #t
                                                                      (eq?
                                                                       'right
                                                                       v7404))))))))))
                                                g8188)))
                                           (POSN/C
                                            (lambda (j7409 k7410 v7408)
                                              (letrec ((g8194
                                                        (letrec ((checked7411
                                                                  (letrec ((x8195
                                                                            (letrec ((x8196
                                                                                      (orig-cdr
                                                                                       v7408)))
                                                                              (orig-car
                                                                               x8196))))
                                                                    (real?/c
                                                                     j7409
                                                                     k7410
                                                                     x8195))))
                                                          (letrec ((g8197
                                                                    (letrec ((checked7412
                                                                              (letrec ((x8198
                                                                                        (letrec ((x8199
                                                                                                  (letrec ((x8200
                                                                                                            (orig-cdr
                                                                                                             v7408)))
                                                                                                    (orig-cdr
                                                                                                     x8200))))
                                                                                          (orig-car
                                                                                           x8199))))
                                                                                (real?/c
                                                                                 j7409
                                                                                 k7410
                                                                                 x8198))))
                                                                      (letrec ((g8201
                                                                                (letrec ((x8202
                                                                                          (letrec ((x8203
                                                                                                    (cons
                                                                                                     checked7412
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7411
                                                                                             x8203))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8202))))
                                                                        g8201))))
                                                            g8197))))
                                                g8194)))
                                           (SNAKE/C
                                            (lambda (j7415 k7416 v7414)
                                              (letrec ((g8204
                                                        (letrec ((checked7417
                                                                  (letrec ((x8205
                                                                            (letrec ((x8206
                                                                                      (orig-cdr
                                                                                       v7414)))
                                                                              (orig-car
                                                                               x8206))))
                                                                    (DIR/C
                                                                     j7415
                                                                     k7416
                                                                     x8205))))
                                                          (letrec ((g8207
                                                                    (letrec ((checked7418
                                                                              (letrec ((x8211
                                                                                        (letrec ((x8212
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x8212)))
                                                                                       (x8208
                                                                                        (letrec ((x8209
                                                                                                  (letrec ((x8210
                                                                                                            (orig-cdr
                                                                                                             v7414)))
                                                                                                    (orig-cdr
                                                                                                     x8210))))
                                                                                          (orig-car
                                                                                           x8209))))
                                                                                (x8211
                                                                                 j7415
                                                                                 k7416
                                                                                 x8208))))
                                                                      (letrec ((g8213
                                                                                (letrec ((x8214
                                                                                          (letrec ((x8215
                                                                                                    (cons
                                                                                                     checked7418
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7417
                                                                                             x8215))))
                                                                                  (cons
                                                                                   snake
                                                                                   x8214))))
                                                                        g8213))))
                                                            g8207))))
                                                g8204)))
                                           (WORLD/C
                                            (lambda (j7421 k7422 v7420)
                                              (letrec ((g8216
                                                        (letrec ((checked7423
                                                                  (letrec ((x8217
                                                                            (letrec ((x8218
                                                                                      (orig-cdr
                                                                                       v7420)))
                                                                              (orig-car
                                                                               x8218))))
                                                                    (SNAKE/C
                                                                     j7421
                                                                     k7422
                                                                     x8217))))
                                                          (letrec ((g8219
                                                                    (letrec ((checked7424
                                                                              (letrec ((x8220
                                                                                        (letrec ((x8221
                                                                                                  (letrec ((x8222
                                                                                                            (orig-cdr
                                                                                                             v7420)))
                                                                                                    (orig-cdr
                                                                                                     x8222))))
                                                                                          (orig-car
                                                                                           x8221))))
                                                                                (POSN/C
                                                                                 j7421
                                                                                 k7422
                                                                                 x8220))))
                                                                      (letrec ((g8223
                                                                                (letrec ((x8224
                                                                                          (letrec ((x8225
                                                                                                    (cons
                                                                                                     checked7424
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7423
                                                                                             x8225))))
                                                                                  (cons
                                                                                   world
                                                                                   x8224))))
                                                                        g8223))))
                                                            g8219))))
                                                g8216)))
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
                                            (letrec ((x8227
                                                      (letrec ((x8228
                                                                (letrec ((x8229
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x8229
                                                                   empty))))
                                                        (snake 'right x8228)))
                                                     (x8226 (posn 8 12)))
                                              (world x8227 x8226)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g8230
                                                        (letrec ((x8231
                                                                  (letrec ((x8232
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8232))))
                                                          (head-collide?
                                                           x8231))))
                                                g8230)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g8233
                                                        (letrec ((val7261
                                                                  (letrec ((x8234
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x8234
                                                                     0))))
                                                          (letrec ((g8235
                                                                    (if val7261
                                                                      val7261
                                                                      (letrec ((val7262
                                                                                (letrec ((x8236
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x8236
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g8237
                                                                                  (if val7262
                                                                                    val7262
                                                                                    (letrec ((val7263
                                                                                              (letrec ((x8238
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x8238
                                                                                                 0))))
                                                                                      (letrec ((g8239
                                                                                                (if val7263
                                                                                                  val7263
                                                                                                  (letrec ((x8240
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x8240
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g8239)))))
                                                                          g8237)))))
                                                            g8235))))
                                                g8233)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g8241
                                                        (letrec ((x8244
                                                                  (letrec ((x8245
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8245)))
                                                                 (x8242
                                                                  (letrec ((x8243
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x8243))))
                                                          (segs-self-collide?
                                                           x8244
                                                           x8242))))
                                                g8241)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g8246
                                                        (letrec ((x-cnd8247
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8247
                                                            (letrec ((g8248
                                                                      #f))
                                                              g8248)
                                                            (letrec ((g8249
                                                                      (letrec ((x8252
                                                                                (letrec ((x8253
                                                                                          (car
                                                                                           segs)))
                                                                                  (posn=?
                                                                                   x8253
                                                                                   h)))
                                                                               (x8250
                                                                                (letrec ((x8251
                                                                                          (cdr
                                                                                           segs)))
                                                                                  (segs-self-collide?
                                                                                   h
                                                                                   x8251))))
                                                                        (or x8252
                                                                            x8250))))
                                                              g8249)))))
                                                g8246)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g8254
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g8255
                                                                    (letrec ((x-cnd8256
                                                                              (empty?
                                                                               r)))
                                                                      (if x-cnd8256
                                                                        (letrec ((g8257
                                                                                  empty))
                                                                          g8257)
                                                                        (letrec ((g8258
                                                                                  (letrec ((x8260
                                                                                            (car
                                                                                             segs))
                                                                                           (x8259
                                                                                            (cut-tail
                                                                                             r)))
                                                                                    (cons
                                                                                     x8260
                                                                                     x8259))))
                                                                          g8258)))))
                                                            g8255))))
                                                g8254)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g8261
                                                        (letrec ((x-cnd8262
                                                                  (equal?
                                                                   'right
                                                                   dir)))
                                                          (if x-cnd8262
                                                            (letrec ((g8263
                                                                      (letrec ((x8265
                                                                                (letrec ((x8266
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (add1
                                                                                   x8266)))
                                                                               (x8264
                                                                                (posn-y
                                                                                 seg)))
                                                                        (posn
                                                                         x8265
                                                                         x8264))))
                                                              g8263)
                                                            (letrec ((x-cnd8267
                                                                      (equal?
                                                                       'left
                                                                       dir)))
                                                              (if x-cnd8267
                                                                (letrec ((g8268
                                                                          (letrec ((x8270
                                                                                    (letrec ((x8271
                                                                                              (posn-x
                                                                                               seg)))
                                                                                      (sub1
                                                                                       x8271)))
                                                                                   (x8269
                                                                                    (posn-y
                                                                                     seg)))
                                                                            (posn
                                                                             x8270
                                                                             x8269))))
                                                                  g8268)
                                                                (letrec ((x-cnd8272
                                                                          (equal?
                                                                           'down
                                                                           dir)))
                                                                  (if x-cnd8272
                                                                    (letrec ((g8273
                                                                              (letrec ((x8276
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8274
                                                                                        (letrec ((x8275
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (sub1
                                                                                           x8275))))
                                                                                (posn
                                                                                 x8276
                                                                                 x8274))))
                                                                      g8273)
                                                                    (letrec ((g8277
                                                                              (letrec ((x8280
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8278
                                                                                        (letrec ((x8279
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (add1
                                                                                           x8279))))
                                                                                (posn
                                                                                 x8280
                                                                                 x8278))))
                                                                      g8277)))))))))
                                                g8261)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g8281
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8282
                                                                    (letrec ((x8283
                                                                              (letrec ((x8286
                                                                                        (letrec ((x8287
                                                                                                  (letrec ((x8288
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8288))))
                                                                                          (next-head
                                                                                           x8287
                                                                                           d)))
                                                                                       (x8284
                                                                                        (letrec ((x8285
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x8285))))
                                                                                (cons
                                                                                 x8286
                                                                                 x8284))))
                                                                      (snake
                                                                       d
                                                                       x8283))))
                                                            g8282))))
                                                g8281)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g8289
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8290
                                                                    (letrec ((x8291
                                                                              (letrec ((x8293
                                                                                        (letrec ((x8294
                                                                                                  (letrec ((x8295
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8295))))
                                                                                          (next-head
                                                                                           x8294
                                                                                           d)))
                                                                                       (x8292
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x8293
                                                                                 x8292))))
                                                                      (snake
                                                                       d
                                                                       x8291))))
                                                            g8290))))
                                                g8289)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g8296
                                                        (letrec ((x-cnd8297
                                                                  (eating? w)))
                                                          (if x-cnd8297
                                                            (letrec ((g8298
                                                                      (snake-eat
                                                                       w)))
                                                              g8298)
                                                            (letrec ((g8299
                                                                      (letrec ((x8301
                                                                                (letrec ((x8302
                                                                                          (world-snake
                                                                                           w)))
                                                                                  (snake-slither
                                                                                   x8302)))
                                                                               (x8300
                                                                                (world-food
                                                                                 w)))
                                                                        (world
                                                                         x8301
                                                                         x8300))))
                                                              g8299)))))
                                                g8296)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g8303
                                                        (letrec ((x8307
                                                                  (world-food
                                                                   w))
                                                                 (x8304
                                                                  (letrec ((x8305
                                                                            (letrec ((x8306
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x8306))))
                                                                    (car
                                                                     x8305))))
                                                          (posn=?
                                                           x8307
                                                           x8304))))
                                                g8303)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g8308
                                                        (letrec ((x8309
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x8309))))
                                                g8308)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g8310
                                                        (letrec ((x8312
                                                                  (letrec ((x8313
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x8313
                                                                     dir)))
                                                                 (x8311
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x8312
                                                           x8311))))
                                                g8310)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g8314
                                                        (letrec ((x8318
                                                                  (letrec ((x8319
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x8319)))
                                                                 (x8315
                                                                  (letrec ((x8317
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x8316
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x8317
                                                                     x8316))))
                                                          (world
                                                           x8318
                                                           x8315))))
                                                g8314)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g8320
                                                        (letrec ((x-cnd8321
                                                                  (equal?
                                                                   ke
                                                                   "w")))
                                                          (if x-cnd8321
                                                            (letrec ((g8322
                                                                      (world-change-dir
                                                                       w
                                                                       'up)))
                                                              g8322)
                                                            (letrec ((x-cnd8323
                                                                      (equal?
                                                                       ke
                                                                       "s")))
                                                              (if x-cnd8323
                                                                (letrec ((g8324
                                                                          (world-change-dir
                                                                           w
                                                                           'down)))
                                                                  g8324)
                                                                (letrec ((x-cnd8325
                                                                          (equal?
                                                                           ke
                                                                           "a")))
                                                                  (if x-cnd8325
                                                                    (letrec ((g8326
                                                                              (world-change-dir
                                                                               w
                                                                               'left)))
                                                                      g8326)
                                                                    (letrec ((x-cnd8327
                                                                              (equal?
                                                                               ke
                                                                               "d")))
                                                                      (if x-cnd8327
                                                                        (letrec ((g8328
                                                                                  (world-change-dir
                                                                                   w
                                                                                   'right)))
                                                                          g8328)
                                                                        (letrec ((g8329
                                                                                  w))
                                                                          g8329)))))))))))
                                                g8320)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g8330
                                                        (letrec ((val7264
                                                                  (letrec ((x8331
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x8331))))
                                                          (letrec ((g8332
                                                                    (if val7264
                                                                      val7264
                                                                      (letrec ((x8333
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x8333)))))
                                                            g8332))))
                                                g8330)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g8334
                                                        (letrec ((x8337
                                                                  (world-snake
                                                                   w))
                                                                 (x8335
                                                                  (letrec ((x8336
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x8336
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x8337
                                                           x8335))))
                                                g8334)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g8338
                                                        (letrec ((x8340
                                                                  (posn-x f))
                                                                 (x8339
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x8340
                                                           x8339
                                                           scn))))
                                                g8338)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g8341
                                                        (letrec ((x8344
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x8342
                                                                  (letrec ((x8343
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x8343))))
                                                          (place-image
                                                           img
                                                           x8344
                                                           x8342
                                                           scn))))
                                                g8341)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g8345
                                                        (letrec ((x8346
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x8346
                                                           scn))))
                                                g8345)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g8347
                                                        (letrec ((x-cnd8348
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8348
                                                            (letrec ((g8349
                                                                      scn))
                                                              g8349)
                                                            (letrec ((g8350
                                                                      (letrec ((x8353
                                                                                (cdr
                                                                                 segs))
                                                                               (x8351
                                                                                (letrec ((x8352
                                                                                          (car
                                                                                           segs)))
                                                                                  (segment+scene
                                                                                   x8352
                                                                                   scn))))
                                                                        (segments+scene
                                                                         x8353
                                                                         x8351))))
                                                              g8350)))))
                                                g8347)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g8354
                                                        (letrec ((x8356
                                                                  (posn-x seg))
                                                                 (x8355
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x8356
                                                           x8355
                                                           scn))))
                                                g8354))))
                                    (letrec ((g8357
                                              (parallel
                                               (parallel
                                                (letrec ((x8368
                                                          (letrec ((xj7426
                                                                    (loc
                                                                     'module))
                                                                   (xk7427
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8369
                                                                      ((lambda (j7430
                                                                                k7431
                                                                                f7432)
                                                                         (letrec ((g8370
                                                                                   (lambda (g7428
                                                                                            g7429)
                                                                                     (letrec ((g8371
                                                                                               (letrec ((x8372
                                                                                                         (letrec ((x8374
                                                                                                                   (POSN/C
                                                                                                                    j7430
                                                                                                                    k7431
                                                                                                                    g7428))
                                                                                                                  (x8373
                                                                                                                   (POSN/C
                                                                                                                    j7430
                                                                                                                    k7431
                                                                                                                    g7429)))
                                                                                                           (f7432
                                                                                                            x8374
                                                                                                            x8373))))
                                                                                                 (boolean?/c
                                                                                                  j7430
                                                                                                  k7431
                                                                                                  x8372))))
                                                                                       g8371))))
                                                                           g8370))
                                                                       xj7426
                                                                       xk7427
                                                                       posn=?)))
                                                              g8369)))
                                                         (x8363
                                                          (letrec ((x8364
                                                                    (letrec ((x8367
                                                                              (input))
                                                                             (x8365
                                                                              (letrec ((x8366
                                                                                        (input)))
                                                                                (cons
                                                                                 x8366
                                                                                 '()))))
                                                                      (cons
                                                                       x8367
                                                                       x8365))))
                                                            (cons
                                                             'posn
                                                             x8364)))
                                                         (x8358
                                                          (letrec ((x8359
                                                                    (letrec ((x8362
                                                                              (input))
                                                                             (x8360
                                                                              (letrec ((x8361
                                                                                        (input)))
                                                                                (cons
                                                                                 x8361
                                                                                 '()))))
                                                                      (cons
                                                                       x8362
                                                                       x8360))))
                                                            (cons
                                                             'posn
                                                             x8359))))
                                                  (x8368 x8363 x8358))
                                                (letrec ((xj7433 (loc 'module))
                                                         (xk7434
                                                          (loc 'importer)))
                                                  (letrec ((g8375
                                                            (WORLD/C
                                                             xj7433
                                                             xk7434
                                                             WORLD)))
                                                    g8375))
                                                (letrec ((xj7435 (loc 'module))
                                                         (xk7436
                                                          (loc 'importer)))
                                                  (letrec ((g8376
                                                            (image/c
                                                             xj7435
                                                             xk7436
                                                             BACKGROUND)))
                                                    g8376))
                                                (letrec ((xj7437 (loc 'module))
                                                         (xk7438
                                                          (loc 'importer)))
                                                  (letrec ((g8377
                                                            (image/c
                                                             xj7437
                                                             xk7438
                                                             FOOD-IMAGE)))
                                                    g8377))
                                                (letrec ((xj7439 (loc 'module))
                                                         (xk7440
                                                          (loc 'importer)))
                                                  (letrec ((g8378
                                                            (image/c
                                                             xj7439
                                                             xk7440
                                                             SEGMENT-IMAGE)))
                                                    g8378))
                                                (letrec ((xj7441 (loc 'module))
                                                         (xk7442
                                                          (loc 'importer)))
                                                  (letrec ((g8379
                                                            (real?/c
                                                             xj7441
                                                             xk7442
                                                             GRID-SIZE)))
                                                    g8379))
                                                (letrec ((xj7443 (loc 'module))
                                                         (xk7444
                                                          (loc 'importer)))
                                                  (letrec ((g8380
                                                            (real?/c
                                                             xj7443
                                                             xk7444
                                                             BOARD-HEIGHT-PIXELS)))
                                                    g8380))
                                                (letrec ((xj7445 (loc 'module))
                                                         (xk7446
                                                          (loc 'importer)))
                                                  (letrec ((g8381
                                                            (real?/c
                                                             xj7445
                                                             xk7446
                                                             BOARD-WIDTH)))
                                                    g8381))
                                                (letrec ((xj7447 (loc 'module))
                                                         (xk7448
                                                          (loc 'importer)))
                                                  (letrec ((g8382
                                                            (real?/c
                                                             xj7447
                                                             xk7448
                                                             BOARD-HEIGHT)))
                                                    g8382))
                                                (letrec ((x8388
                                                          (letrec ((xj7449
                                                                    (loc
                                                                     'module))
                                                                   (xk7450
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8389
                                                                      ((lambda (j7452
                                                                                k7453
                                                                                f7454)
                                                                         (letrec ((g8390
                                                                                   (lambda (g7451)
                                                                                     (letrec ((g8391
                                                                                               (letrec ((x8392
                                                                                                         (letrec ((x8393
                                                                                                                   (SNAKE/C
                                                                                                                    j7452
                                                                                                                    k7453
                                                                                                                    g7451)))
                                                                                                           (f7454
                                                                                                            x8393))))
                                                                                                 (boolean?/c
                                                                                                  j7452
                                                                                                  k7453
                                                                                                  x8392))))
                                                                                       g8391))))
                                                                           g8390))
                                                                       xj7449
                                                                       xk7450
                                                                       snake-wall-collide?)))
                                                              g8389)))
                                                         (x8383
                                                          (letrec ((x8384
                                                                    (letrec ((x8387
                                                                              (input))
                                                                             (x8385
                                                                              (letrec ((x8386
                                                                                        (input)))
                                                                                (cons
                                                                                 x8386
                                                                                 '()))))
                                                                      (cons
                                                                       x8387
                                                                       x8385))))
                                                            (cons
                                                             'snake
                                                             x8384))))
                                                  (x8388 x8383))
                                                (letrec ((x8399
                                                          (letrec ((xj7455
                                                                    (loc
                                                                     'module))
                                                                   (xk7456
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8400
                                                                      ((lambda (j7458
                                                                                k7459
                                                                                f7460)
                                                                         (letrec ((g8401
                                                                                   (lambda (g7457)
                                                                                     (letrec ((g8402
                                                                                               (letrec ((x8403
                                                                                                         (letrec ((x8404
                                                                                                                   (SNAKE/C
                                                                                                                    j7458
                                                                                                                    k7459
                                                                                                                    g7457)))
                                                                                                           (f7460
                                                                                                            x8404))))
                                                                                                 (boolean?/c
                                                                                                  j7458
                                                                                                  k7459
                                                                                                  x8403))))
                                                                                       g8402))))
                                                                           g8401))
                                                                       xj7455
                                                                       xk7456
                                                                       snake-self-collide?)))
                                                              g8400)))
                                                         (x8394
                                                          (letrec ((x8395
                                                                    (letrec ((x8398
                                                                              (input))
                                                                             (x8396
                                                                              (letrec ((x8397
                                                                                        (input)))
                                                                                (cons
                                                                                 x8397
                                                                                 '()))))
                                                                      (cons
                                                                       x8398
                                                                       x8396))))
                                                            (cons
                                                             'snake
                                                             x8395))))
                                                  (x8399 x8394))
                                                (letrec ((x8406
                                                          (letrec ((xj7461
                                                                    (loc
                                                                     'module))
                                                                   (xk7462
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8407
                                                                      ((lambda (j7464
                                                                                k7465
                                                                                f7466)
                                                                         (letrec ((g8408
                                                                                   (lambda (g7463)
                                                                                     (letrec ((g8409
                                                                                               (letrec ((x8414
                                                                                                         (listof
                                                                                                          POSN/C))
                                                                                                        (x8410
                                                                                                         (letrec ((x8411
                                                                                                                   (letrec ((x8412
                                                                                                                             (letrec ((x8413
                                                                                                                                       (listof
                                                                                                                                        POSN/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x8413))))
                                                                                                                     (x8412
                                                                                                                      j7464
                                                                                                                      k7465
                                                                                                                      g7463))))
                                                                                                           (f7466
                                                                                                            x8411))))
                                                                                                 (x8414
                                                                                                  j7464
                                                                                                  k7465
                                                                                                  x8410))))
                                                                                       g8409))))
                                                                           g8408))
                                                                       xj7461
                                                                       xk7462
                                                                       cut-tail)))
                                                              g8407)))
                                                         (x8405 (input)))
                                                  (x8406 x8405))
                                                (letrec ((x8420
                                                          (letrec ((xj7467
                                                                    (loc
                                                                     'module))
                                                                   (xk7468
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8421
                                                                      ((lambda (j7470
                                                                                k7471
                                                                                f7472)
                                                                         (letrec ((g8422
                                                                                   (lambda (g7469)
                                                                                     (letrec ((g8423
                                                                                               (letrec ((x8424
                                                                                                         (letrec ((x8425
                                                                                                                   (SNAKE/C
                                                                                                                    j7470
                                                                                                                    k7471
                                                                                                                    g7469)))
                                                                                                           (f7472
                                                                                                            x8425))))
                                                                                                 (SNAKE/C
                                                                                                  j7470
                                                                                                  k7471
                                                                                                  x8424))))
                                                                                       g8423))))
                                                                           g8422))
                                                                       xj7467
                                                                       xk7468
                                                                       snake-slither)))
                                                              g8421)))
                                                         (x8415
                                                          (letrec ((x8416
                                                                    (letrec ((x8419
                                                                              (input))
                                                                             (x8417
                                                                              (letrec ((x8418
                                                                                        (input)))
                                                                                (cons
                                                                                 x8418
                                                                                 '()))))
                                                                      (cons
                                                                       x8419
                                                                       x8417))))
                                                            (cons
                                                             'snake
                                                             x8416))))
                                                  (x8420 x8415))
                                                (letrec ((x8431
                                                          (letrec ((xj7473
                                                                    (loc
                                                                     'module))
                                                                   (xk7474
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8432
                                                                      ((lambda (j7476
                                                                                k7477
                                                                                f7478)
                                                                         (letrec ((g8433
                                                                                   (lambda (g7475)
                                                                                     (letrec ((g8434
                                                                                               (letrec ((x8435
                                                                                                         (letrec ((x8436
                                                                                                                   (SNAKE/C
                                                                                                                    j7476
                                                                                                                    k7477
                                                                                                                    g7475)))
                                                                                                           (f7478
                                                                                                            x8436))))
                                                                                                 (SNAKE/C
                                                                                                  j7476
                                                                                                  k7477
                                                                                                  x8435))))
                                                                                       g8434))))
                                                                           g8433))
                                                                       xj7473
                                                                       xk7474
                                                                       snake-grow)))
                                                              g8432)))
                                                         (x8426
                                                          (letrec ((x8427
                                                                    (letrec ((x8430
                                                                              (input))
                                                                             (x8428
                                                                              (letrec ((x8429
                                                                                        (input)))
                                                                                (cons
                                                                                 x8429
                                                                                 '()))))
                                                                      (cons
                                                                       x8430
                                                                       x8428))))
                                                            (cons
                                                             'snake
                                                             x8427))))
                                                  (x8431 x8426))
                                                (letrec ((x8451
                                                          (letrec ((xj7479
                                                                    (loc
                                                                     'module))
                                                                   (xk7480
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8452
                                                                      ((lambda (j7483
                                                                                k7484
                                                                                f7485)
                                                                         (letrec ((g8453
                                                                                   (lambda (g7481
                                                                                            g7482)
                                                                                     (letrec ((g8454
                                                                                               (letrec ((x8455
                                                                                                         (letrec ((x8457
                                                                                                                   (WORLD/C
                                                                                                                    j7483
                                                                                                                    k7484
                                                                                                                    g7481))
                                                                                                                  (x8456
                                                                                                                   (DIR/C
                                                                                                                    j7483
                                                                                                                    k7484
                                                                                                                    g7482)))
                                                                                                           (f7485
                                                                                                            x8457
                                                                                                            x8456))))
                                                                                                 (WORLD/C
                                                                                                  j7483
                                                                                                  k7484
                                                                                                  x8455))))
                                                                                       g8454))))
                                                                           g8453))
                                                                       xj7479
                                                                       xk7480
                                                                       world-change-dir)))
                                                              g8452)))
                                                         (x8438
                                                          (letrec ((x8439
                                                                    (letrec ((x8446
                                                                              (letrec ((x8447
                                                                                        (letrec ((x8450
                                                                                                  (input))
                                                                                                 (x8448
                                                                                                  (letrec ((x8449
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8449
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8450
                                                                                           x8448))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8447)))
                                                                             (x8440
                                                                              (letrec ((x8441
                                                                                        (letrec ((x8442
                                                                                                  (letrec ((x8445
                                                                                                            (input))
                                                                                                           (x8443
                                                                                                            (letrec ((x8444
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8444
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8445
                                                                                                     x8443))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8442))))
                                                                                (cons
                                                                                 x8441
                                                                                 '()))))
                                                                      (cons
                                                                       x8446
                                                                       x8440))))
                                                            (cons
                                                             'world
                                                             x8439)))
                                                         (x8437 (input)))
                                                  (x8451 x8438 x8437))
                                                (letrec ((x8471
                                                          (letrec ((xj7486
                                                                    (loc
                                                                     'module))
                                                                   (xk7487
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8472
                                                                      ((lambda (j7489
                                                                                k7490
                                                                                f7491)
                                                                         (letrec ((g8473
                                                                                   (lambda (g7488)
                                                                                     (letrec ((g8474
                                                                                               (letrec ((x8475
                                                                                                         (letrec ((x8476
                                                                                                                   (WORLD/C
                                                                                                                    j7489
                                                                                                                    k7490
                                                                                                                    g7488)))
                                                                                                           (f7491
                                                                                                            x8476))))
                                                                                                 (WORLD/C
                                                                                                  j7489
                                                                                                  k7490
                                                                                                  x8475))))
                                                                                       g8474))))
                                                                           g8473))
                                                                       xj7486
                                                                       xk7487
                                                                       world->world)))
                                                              g8472)))
                                                         (x8458
                                                          (letrec ((x8459
                                                                    (letrec ((x8466
                                                                              (letrec ((x8467
                                                                                        (letrec ((x8470
                                                                                                  (input))
                                                                                                 (x8468
                                                                                                  (letrec ((x8469
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8469
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8470
                                                                                           x8468))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8467)))
                                                                             (x8460
                                                                              (letrec ((x8461
                                                                                        (letrec ((x8462
                                                                                                  (letrec ((x8465
                                                                                                            (input))
                                                                                                           (x8463
                                                                                                            (letrec ((x8464
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8464
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8465
                                                                                                     x8463))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8462))))
                                                                                (cons
                                                                                 x8461
                                                                                 '()))))
                                                                      (cons
                                                                       x8466
                                                                       x8460))))
                                                            (cons
                                                             'world
                                                             x8459))))
                                                  (x8471 x8458))
                                                (letrec ((x8491
                                                          (letrec ((xj7492
                                                                    (loc
                                                                     'module))
                                                                   (xk7493
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8492
                                                                      ((lambda (j7496
                                                                                k7497
                                                                                f7498)
                                                                         (letrec ((g8493
                                                                                   (lambda (g7494
                                                                                            g7495)
                                                                                     (letrec ((g8494
                                                                                               (letrec ((x8495
                                                                                                         (letrec ((x8497
                                                                                                                   (WORLD/C
                                                                                                                    j7496
                                                                                                                    k7497
                                                                                                                    g7494))
                                                                                                                  (x8496
                                                                                                                   (string?/c
                                                                                                                    j7496
                                                                                                                    k7497
                                                                                                                    g7495)))
                                                                                                           (f7498
                                                                                                            x8497
                                                                                                            x8496))))
                                                                                                 (WORLD/C
                                                                                                  j7496
                                                                                                  k7497
                                                                                                  x8495))))
                                                                                       g8494))))
                                                                           g8493))
                                                                       xj7492
                                                                       xk7493
                                                                       handle-key)))
                                                              g8492)))
                                                         (x8478
                                                          (letrec ((x8479
                                                                    (letrec ((x8486
                                                                              (letrec ((x8487
                                                                                        (letrec ((x8490
                                                                                                  (input))
                                                                                                 (x8488
                                                                                                  (letrec ((x8489
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8489
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8490
                                                                                           x8488))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8487)))
                                                                             (x8480
                                                                              (letrec ((x8481
                                                                                        (letrec ((x8482
                                                                                                  (letrec ((x8485
                                                                                                            (input))
                                                                                                           (x8483
                                                                                                            (letrec ((x8484
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8484
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8485
                                                                                                     x8483))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8482))))
                                                                                (cons
                                                                                 x8481
                                                                                 '()))))
                                                                      (cons
                                                                       x8486
                                                                       x8480))))
                                                            (cons
                                                             'world
                                                             x8479)))
                                                         (x8477 (input)))
                                                  (x8491 x8478 x8477))
                                                (letrec ((x8511
                                                          (letrec ((xj7499
                                                                    (loc
                                                                     'module))
                                                                   (xk7500
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8512
                                                                      ((lambda (j7502
                                                                                k7503
                                                                                f7504)
                                                                         (letrec ((g8513
                                                                                   (lambda (g7501)
                                                                                     (letrec ((g8514
                                                                                               (letrec ((x8515
                                                                                                         (letrec ((x8516
                                                                                                                   (WORLD/C
                                                                                                                    j7502
                                                                                                                    k7503
                                                                                                                    g7501)))
                                                                                                           (f7504
                                                                                                            x8516))))
                                                                                                 (boolean?/c
                                                                                                  j7502
                                                                                                  k7503
                                                                                                  x8515))))
                                                                                       g8514))))
                                                                           g8513))
                                                                       xj7499
                                                                       xk7500
                                                                       game-over?)))
                                                              g8512)))
                                                         (x8498
                                                          (letrec ((x8499
                                                                    (letrec ((x8506
                                                                              (letrec ((x8507
                                                                                        (letrec ((x8510
                                                                                                  (input))
                                                                                                 (x8508
                                                                                                  (letrec ((x8509
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8509
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8510
                                                                                           x8508))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8507)))
                                                                             (x8500
                                                                              (letrec ((x8501
                                                                                        (letrec ((x8502
                                                                                                  (letrec ((x8505
                                                                                                            (input))
                                                                                                           (x8503
                                                                                                            (letrec ((x8504
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8504
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8505
                                                                                                     x8503))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8502))))
                                                                                (cons
                                                                                 x8501
                                                                                 '()))))
                                                                      (cons
                                                                       x8506
                                                                       x8500))))
                                                            (cons
                                                             'world
                                                             x8499))))
                                                  (x8511 x8498))
                                                (letrec ((x8530
                                                          (letrec ((xj7505
                                                                    (loc
                                                                     'module))
                                                                   (xk7506
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8531
                                                                      ((lambda (j7508
                                                                                k7509
                                                                                f7510)
                                                                         (letrec ((g8532
                                                                                   (lambda (g7507)
                                                                                     (letrec ((g8533
                                                                                               (letrec ((x8534
                                                                                                         (letrec ((x8535
                                                                                                                   (WORLD/C
                                                                                                                    j7508
                                                                                                                    k7509
                                                                                                                    g7507)))
                                                                                                           (f7510
                                                                                                            x8535))))
                                                                                                 (image/c
                                                                                                  j7508
                                                                                                  k7509
                                                                                                  x8534))))
                                                                                       g8533))))
                                                                           g8532))
                                                                       xj7505
                                                                       xk7506
                                                                       world->scene)))
                                                              g8531)))
                                                         (x8517
                                                          (letrec ((x8518
                                                                    (letrec ((x8525
                                                                              (letrec ((x8526
                                                                                        (letrec ((x8529
                                                                                                  (input))
                                                                                                 (x8527
                                                                                                  (letrec ((x8528
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8528
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8529
                                                                                           x8527))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8526)))
                                                                             (x8519
                                                                              (letrec ((x8520
                                                                                        (letrec ((x8521
                                                                                                  (letrec ((x8524
                                                                                                            (input))
                                                                                                           (x8522
                                                                                                            (letrec ((x8523
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8523
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8524
                                                                                                     x8522))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8521))))
                                                                                (cons
                                                                                 x8520
                                                                                 '()))))
                                                                      (cons
                                                                       x8525
                                                                       x8519))))
                                                            (cons
                                                             'world
                                                             x8518))))
                                                  (x8530 x8517))
                                                (letrec ((x8542
                                                          (letrec ((xj7511
                                                                    (loc
                                                                     'module))
                                                                   (xk7512
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8543
                                                                      ((lambda (j7515
                                                                                k7516
                                                                                f7517)
                                                                         (letrec ((g8544
                                                                                   (lambda (g7513
                                                                                            g7514)
                                                                                     (letrec ((g8545
                                                                                               (letrec ((x8546
                                                                                                         (letrec ((x8548
                                                                                                                   (POSN/C
                                                                                                                    j7515
                                                                                                                    k7516
                                                                                                                    g7513))
                                                                                                                  (x8547
                                                                                                                   (image/c
                                                                                                                    j7515
                                                                                                                    k7516
                                                                                                                    g7514)))
                                                                                                           (f7517
                                                                                                            x8548
                                                                                                            x8547))))
                                                                                                 (image/c
                                                                                                  j7515
                                                                                                  k7516
                                                                                                  x8546))))
                                                                                       g8545))))
                                                                           g8544))
                                                                       xj7511
                                                                       xk7512
                                                                       food+scene)))
                                                              g8543)))
                                                         (x8537
                                                          (letrec ((x8538
                                                                    (letrec ((x8541
                                                                              (input))
                                                                             (x8539
                                                                              (letrec ((x8540
                                                                                        (input)))
                                                                                (cons
                                                                                 x8540
                                                                                 '()))))
                                                                      (cons
                                                                       x8541
                                                                       x8539))))
                                                            (cons
                                                             'posn
                                                             x8538)))
                                                         (x8536
                                                          (cons 'image '())))
                                                  (x8542 x8537 x8536))
                                                (letrec ((x8553
                                                          (letrec ((xj7518
                                                                    (loc
                                                                     'module))
                                                                   (xk7519
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8554
                                                                      ((lambda (j7524
                                                                                k7525
                                                                                f7526)
                                                                         (letrec ((g8555
                                                                                   (lambda (g7520
                                                                                            g7521
                                                                                            g7522
                                                                                            g7523)
                                                                                     (letrec ((g8556
                                                                                               (letrec ((x8557
                                                                                                         (letrec ((x8561
                                                                                                                   (image/c
                                                                                                                    j7524
                                                                                                                    k7525
                                                                                                                    g7520))
                                                                                                                  (x8560
                                                                                                                   (real?/c
                                                                                                                    j7524
                                                                                                                    k7525
                                                                                                                    g7521))
                                                                                                                  (x8559
                                                                                                                   (real?/c
                                                                                                                    j7524
                                                                                                                    k7525
                                                                                                                    g7522))
                                                                                                                  (x8558
                                                                                                                   (image/c
                                                                                                                    j7524
                                                                                                                    k7525
                                                                                                                    g7523)))
                                                                                                           (f7526
                                                                                                            x8561
                                                                                                            x8560
                                                                                                            x8559
                                                                                                            x8558))))
                                                                                                 (image/c
                                                                                                  j7524
                                                                                                  k7525
                                                                                                  x8557))))
                                                                                       g8556))))
                                                                           g8555))
                                                                       xj7518
                                                                       xk7519
                                                                       place-image-on-grid)))
                                                              g8554)))
                                                         (x8552
                                                          (cons 'image '()))
                                                         (x8551 (input))
                                                         (x8550 (input))
                                                         (x8549
                                                          (cons 'image '())))
                                                  (x8553
                                                   x8552
                                                   x8551
                                                   x8550
                                                   x8549))
                                                (letrec ((x8568
                                                          (letrec ((xj7527
                                                                    (loc
                                                                     'module))
                                                                   (xk7528
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8569
                                                                      ((lambda (j7531
                                                                                k7532
                                                                                f7533)
                                                                         (letrec ((g8570
                                                                                   (lambda (g7529
                                                                                            g7530)
                                                                                     (letrec ((g8571
                                                                                               (letrec ((x8572
                                                                                                         (letrec ((x8574
                                                                                                                   (SNAKE/C
                                                                                                                    j7531
                                                                                                                    k7532
                                                                                                                    g7529))
                                                                                                                  (x8573
                                                                                                                   (image/c
                                                                                                                    j7531
                                                                                                                    k7532
                                                                                                                    g7530)))
                                                                                                           (f7533
                                                                                                            x8574
                                                                                                            x8573))))
                                                                                                 (image/c
                                                                                                  j7531
                                                                                                  k7532
                                                                                                  x8572))))
                                                                                       g8571))))
                                                                           g8570))
                                                                       xj7527
                                                                       xk7528
                                                                       snake+scene)))
                                                              g8569)))
                                                         (x8563
                                                          (letrec ((x8564
                                                                    (letrec ((x8567
                                                                              (input))
                                                                             (x8565
                                                                              (letrec ((x8566
                                                                                        (input)))
                                                                                (cons
                                                                                 x8566
                                                                                 '()))))
                                                                      (cons
                                                                       x8567
                                                                       x8565))))
                                                            (cons
                                                             'snake
                                                             x8564)))
                                                         (x8562
                                                          (cons 'image '())))
                                                  (x8568 x8563 x8562))
                                                (letrec ((x8577
                                                          (letrec ((xj7534
                                                                    (loc
                                                                     'module))
                                                                   (xk7535
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8578
                                                                      ((lambda (j7538
                                                                                k7539
                                                                                f7540)
                                                                         (letrec ((g8579
                                                                                   (lambda (g7536
                                                                                            g7537)
                                                                                     (letrec ((g8580
                                                                                               (letrec ((x8581
                                                                                                         (letrec ((x8583
                                                                                                                   (letrec ((x8584
                                                                                                                             (listof
                                                                                                                              POSN/C)))
                                                                                                                     (x8584
                                                                                                                      j7538
                                                                                                                      k7539
                                                                                                                      g7536)))
                                                                                                                  (x8582
                                                                                                                   (image/c
                                                                                                                    j7538
                                                                                                                    k7539
                                                                                                                    g7537)))
                                                                                                           (f7540
                                                                                                            x8583
                                                                                                            x8582))))
                                                                                                 (image/c
                                                                                                  j7538
                                                                                                  k7539
                                                                                                  x8581))))
                                                                                       g8580))))
                                                                           g8579))
                                                                       xj7534
                                                                       xk7535
                                                                       segments+scene)))
                                                              g8578)))
                                                         (x8576 (input))
                                                         (x8575
                                                          (cons 'image '())))
                                                  (x8577 x8576 x8575))
                                                (letrec ((x8591
                                                          (letrec ((xj7541
                                                                    (loc
                                                                     'module))
                                                                   (xk7542
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8592
                                                                      ((lambda (j7545
                                                                                k7546
                                                                                f7547)
                                                                         (letrec ((g8593
                                                                                   (lambda (g7543
                                                                                            g7544)
                                                                                     (letrec ((g8594
                                                                                               (letrec ((x8595
                                                                                                         (letrec ((x8597
                                                                                                                   (POSN/C
                                                                                                                    j7545
                                                                                                                    k7546
                                                                                                                    g7543))
                                                                                                                  (x8596
                                                                                                                   (image/c
                                                                                                                    j7545
                                                                                                                    k7546
                                                                                                                    g7544)))
                                                                                                           (f7547
                                                                                                            x8597
                                                                                                            x8596))))
                                                                                                 (image/c
                                                                                                  j7545
                                                                                                  k7546
                                                                                                  x8595))))
                                                                                       g8594))))
                                                                           g8593))
                                                                       xj7541
                                                                       xk7542
                                                                       segment+scene)))
                                                              g8592)))
                                                         (x8586
                                                          (letrec ((x8587
                                                                    (letrec ((x8590
                                                                              (input))
                                                                             (x8588
                                                                              (letrec ((x8589
                                                                                        (input)))
                                                                                (cons
                                                                                 x8589
                                                                                 '()))))
                                                                      (cons
                                                                       x8590
                                                                       x8588))))
                                                            (cons
                                                             'posn
                                                             x8587)))
                                                         (x8585
                                                          (cons 'image '())))
                                                  (x8591 x8586 x8585))))))
                                      g8357))))
                          g7591))))
              g7575)))
    g7574))
