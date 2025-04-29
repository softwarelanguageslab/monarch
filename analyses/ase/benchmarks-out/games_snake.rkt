(letrec ((any? (lambda (v) (letrec ((g7572 #t)) g7572)))
         (meta (lambda (v) (letrec ((g7573 v)) g7573)))
         (member
          (lambda (v lst)
            (letrec ((g7574
                      (letrec ((g7575
                                (letrec ((x-e7576 lst))
                                  (match
                                   x-e7576
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7577 (eq? v v1)))
                                       (if x-cnd7577 #t (member v vs)))))))))
                        g7575)))
              g7574)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7578 (lambda (v) (letrec ((g7579 v)) g7579)))) g7578)))
         (nonzero?
          (lambda (v)
            (letrec ((g7580 (letrec ((x7581 (= v 0))) (not x7581)))) g7580))))
  (letrec ((g7582
            (letrec ((g7583
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7584
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7584)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7585
                                            (letrec ((x7587 (number? x)))
                                              (assert x7587)))
                                           (g7586
                                            (letrec ((val7244 (> x y)))
                                              (letrec ((g7588
                                                        (if val7244
                                                          val7244
                                                          (letrec ((val7245
                                                                    (= x y)))
                                                            (letrec ((g7589
                                                                      (if val7245
                                                                        val7245
                                                                        #f)))
                                                              g7589)))))
                                                g7588))))
                                    g7586)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7590
                                            (letrec ((x7592 (number? x)))
                                              (assert x7592)))
                                           (g7591
                                            (letrec ((val7246 (< x y)))
                                              (letrec ((g7593
                                                        (if val7246
                                                          val7246
                                                          (letrec ((val7247
                                                                    (= x y)))
                                                            (letrec ((g7594
                                                                      (if val7247
                                                                        val7247
                                                                        #f)))
                                                              g7594)))))
                                                g7593))))
                                    g7591)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7595
                                            (letrec ((x7597 (number? x)))
                                              (assert x7597)))
                                           (g7596
                                            (letrec ((x7598 (<= x y)))
                                              (not x7598))))
                                    g7596)))
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
                        (letrec ((g7599 '())
                                 (g7600
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7601
                                                        (lambda (k j lst)
                                                          (letrec ((g7602
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7603
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7603))
                                                                     lst)))
                                                            g7602))))
                                                g7601)))
                                           (real?/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7604
                                                        (letrec ((x-cnd7605
                                                                  (real?
                                                                   g7269)))
                                                          (if x-cnd7605
                                                            g7269
                                                            (blame
                                                             g7267
                                                             'real?)))))
                                                g7604)))
                                           (boolean?/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7606
                                                        (letrec ((x-cnd7607
                                                                  (boolean?
                                                                   g7272)))
                                                          (if x-cnd7607
                                                            g7272
                                                            (blame
                                                             g7270
                                                             'boolean?)))))
                                                g7606)))
                                           (number?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7608
                                                        (letrec ((x-cnd7609
                                                                  (number?
                                                                   g7275)))
                                                          (if x-cnd7609
                                                            g7275
                                                            (blame
                                                             g7273
                                                             'number?)))))
                                                g7608)))
                                           (any/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7610
                                                        (letrec ((x-cnd7611
                                                                  ((lambda (v)
                                                                     (letrec ((g7612
                                                                               #t))
                                                                       g7612))
                                                                   g7278)))
                                                          (if x-cnd7611
                                                            g7278
                                                            (blame
                                                             g7276
                                                             '(lambda (v)
                                                                #t))))))
                                                g7610)))
                                           (any?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7613
                                                        (letrec ((x-cnd7614
                                                                  ((lambda (v)
                                                                     (letrec ((g7615
                                                                               #t))
                                                                       g7615))
                                                                   g7281)))
                                                          (if x-cnd7614
                                                            g7281
                                                            (blame
                                                             g7279
                                                             '(lambda (v)
                                                                #t))))))
                                                g7613)))
                                           (cons?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7616
                                                        (letrec ((x-cnd7617
                                                                  (pair?
                                                                   g7284)))
                                                          (if x-cnd7617
                                                            g7284
                                                            (blame
                                                             g7282
                                                             'pair?)))))
                                                g7616)))
                                           (cons/c
                                            (lambda (k1 k2)
                                              (letrec ((g7618
                                                        (lambda (k j v)
                                                          (letrec ((g7619
                                                                    (letrec ((x7622
                                                                              (letrec ((x7623
                                                                                        (car
                                                                                         v)))
                                                                                (k1
                                                                                 k
                                                                                 j
                                                                                 x7623)))
                                                                             (x7620
                                                                              (letrec ((x7621
                                                                                        (cdr
                                                                                         v)))
                                                                                (k2
                                                                                 k
                                                                                 j
                                                                                 x7621))))
                                                                      (cons
                                                                       x7622
                                                                       x7620))))
                                                            g7619))))
                                                g7618)))
                                           (pair?/c
                                            (lambda (g7285 g7286 g7287)
                                              (letrec ((g7624
                                                        (letrec ((x-cnd7625
                                                                  (pair?
                                                                   g7287)))
                                                          (if x-cnd7625
                                                            g7287
                                                            (blame
                                                             g7285
                                                             'pair?)))))
                                                g7624)))
                                           (integer?/c
                                            (lambda (g7288 g7289 g7290)
                                              (letrec ((g7626
                                                        (letrec ((x-cnd7627
                                                                  (integer?
                                                                   g7290)))
                                                          (if x-cnd7627
                                                            g7290
                                                            (blame
                                                             g7288
                                                             'integer?)))))
                                                g7626)))
                                           (symbol?/c
                                            (lambda (g7291 g7292 g7293)
                                              (letrec ((g7628
                                                        (letrec ((x-cnd7629
                                                                  (symbol?
                                                                   g7293)))
                                                          (if x-cnd7629
                                                            g7293
                                                            (blame
                                                             g7291
                                                             'symbol?)))))
                                                g7628)))
                                           (string?/c
                                            (lambda (g7294 g7295 g7296)
                                              (letrec ((g7630
                                                        (letrec ((x-cnd7631
                                                                  (string?
                                                                   g7296)))
                                                          (if x-cnd7631
                                                            g7296
                                                            (blame
                                                             g7294
                                                             'string?)))))
                                                g7630)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7632
                                                        (lambda (k j v)
                                                          (letrec ((g7633
                                                                    (letrec ((x-cnd7634
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7634
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7633))))
                                                g7632)))
                                           (or/c
                                            (lambda (c1 c2)
                                              (letrec ((g7635
                                                        (lambda (k j v)
                                                          (letrec ((g7636
                                                                    (letrec ((val7248
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (letrec ((g7637
                                                                                (if val7248
                                                                                  val7248
                                                                                  (c2
                                                                                   k
                                                                                   j
                                                                                   v))))
                                                                        g7637))))
                                                            g7636))))
                                                g7635)))
                                           (null?/c
                                            (lambda (g7297 g7298 g7299)
                                              (letrec ((g7638
                                                        (letrec ((x-cnd7639
                                                                  (null?
                                                                   g7299)))
                                                          (if x-cnd7639
                                                            g7299
                                                            (blame
                                                             g7297
                                                             'null?)))))
                                                g7638)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7640
                                                        (lambda (k j v)
                                                          (letrec ((g7641
                                                                    (letrec ((x-cnd7642
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7642
                                                                        '()
                                                                        (letrec ((x7646
                                                                                  (letrec ((x7647
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7647)))
                                                                                 (x7643
                                                                                  (letrec ((x7645
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7644
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7645
                                                                                     k
                                                                                     j
                                                                                     x7644))))
                                                                          (orig-cons
                                                                           x7646
                                                                           x7643))))))
                                                            g7641))))
                                                g7640)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7648 #t)) g7648)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7649
                                                        (letrec ((x7650
                                                                  (= v 0)))
                                                          (not x7650))))
                                                g7649)))
                                           (nonzero?/c
                                            (lambda (g7300 g7301 g7302)
                                              (letrec ((g7651
                                                        (letrec ((x-cnd7652
                                                                  ((lambda (v)
                                                                     (letrec ((g7653
                                                                               (letrec ((x7654
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7654))))
                                                                       g7653))
                                                                   g7302)))
                                                          (if x-cnd7652
                                                            g7302
                                                            (blame
                                                             g7300
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7651)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7655
                                                        (lambda (g7303
                                                                 g7304
                                                                 g7305)
                                                          (letrec ((g7656
                                                                    (letrec ((x-cnd7657
                                                                              ((lambda (v)
                                                                                 (letrec ((g7658
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7658))
                                                                               g7305)))
                                                                      (if x-cnd7657
                                                                        g7305
                                                                        (blame
                                                                         g7303
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7656))))
                                                g7655)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7659
                                                        (lambda (g7306
                                                                 g7307
                                                                 g7308)
                                                          (letrec ((g7660
                                                                    (letrec ((x-cnd7661
                                                                              ((lambda (v)
                                                                                 (letrec ((g7662
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7662))
                                                                               g7308)))
                                                                      (if x-cnd7661
                                                                        g7308
                                                                        (blame
                                                                         g7306
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7660))))
                                                g7659)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7663
                                                        (lambda (g7309
                                                                 g7310
                                                                 g7311)
                                                          (letrec ((g7664
                                                                    (letrec ((x-cnd7665
                                                                              ((lambda (v)
                                                                                 (letrec ((g7666
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7666))
                                                                               g7311)))
                                                                      (if x-cnd7665
                                                                        g7311
                                                                        (blame
                                                                         g7309
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7664))))
                                                g7663)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7667
                                                        (lambda (g7312
                                                                 g7313
                                                                 g7314)
                                                          (letrec ((g7668
                                                                    (letrec ((x-cnd7669
                                                                              ((lambda (v)
                                                                                 (letrec ((g7670
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7670))
                                                                               g7314)))
                                                                      (if x-cnd7669
                                                                        g7314
                                                                        (blame
                                                                         g7312
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7668))))
                                                g7667)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7671
                                                        (lambda (g7315
                                                                 g7316
                                                                 g7317)
                                                          (letrec ((g7672
                                                                    (letrec ((x-cnd7673
                                                                              ((lambda (v)
                                                                                 (letrec ((g7674
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7674))
                                                                               g7317)))
                                                                      (if x-cnd7673
                                                                        g7317
                                                                        (blame
                                                                         g7315
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7672))))
                                                g7671)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7675 v)) g7675)))
                                           (+
                                            (letrec ((xj7318 'server)
                                                     (xk7319 'client))
                                              (letrec ((g7676
                                                        ((lambda (j7322
                                                                  k7323
                                                                  f7324)
                                                           (letrec ((g7678
                                                                     (lambda (g7320
                                                                              g7321)
                                                                       (letrec ((g7679
                                                                                 (letrec ((x7680
                                                                                           (letrec ((x7682
                                                                                                     (number?/c
                                                                                                      j7322
                                                                                                      k7323
                                                                                                      g7320))
                                                                                                    (x7681
                                                                                                     (number?/c
                                                                                                      j7322
                                                                                                      k7323
                                                                                                      g7321)))
                                                                                             (f7324
                                                                                              x7682
                                                                                              x7681))))
                                                                                   (number?/c
                                                                                    j7322
                                                                                    k7323
                                                                                    x7680))))
                                                                         g7679))))
                                                             g7678))
                                                         xj7318
                                                         xk7319
                                                         (lambda (a b)
                                                           (letrec ((g7677
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7677)))))
                                                g7676)))
                                           (-
                                            (letrec ((xj7325 'server)
                                                     (xk7326 'client))
                                              (letrec ((g7683
                                                        ((lambda (j7329
                                                                  k7330
                                                                  f7331)
                                                           (letrec ((g7685
                                                                     (lambda (g7327
                                                                              g7328)
                                                                       (letrec ((g7686
                                                                                 (letrec ((x7687
                                                                                           (letrec ((x7689
                                                                                                     (number?/c
                                                                                                      j7329
                                                                                                      k7330
                                                                                                      g7327))
                                                                                                    (x7688
                                                                                                     (number?/c
                                                                                                      j7329
                                                                                                      k7330
                                                                                                      g7328)))
                                                                                             (f7331
                                                                                              x7689
                                                                                              x7688))))
                                                                                   (number?/c
                                                                                    j7329
                                                                                    k7330
                                                                                    x7687))))
                                                                         g7686))))
                                                             g7685))
                                                         xj7325
                                                         xk7326
                                                         (lambda (a b)
                                                           (letrec ((g7684
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7684)))))
                                                g7683)))
                                           (*
                                            (letrec ((xj7332 'server)
                                                     (xk7333 'client))
                                              (letrec ((g7690
                                                        ((lambda (j7336
                                                                  k7337
                                                                  f7338)
                                                           (letrec ((g7692
                                                                     (lambda (g7334
                                                                              g7335)
                                                                       (letrec ((g7693
                                                                                 (letrec ((x7694
                                                                                           (letrec ((x7696
                                                                                                     (number?/c
                                                                                                      j7336
                                                                                                      k7337
                                                                                                      g7334))
                                                                                                    (x7695
                                                                                                     (number?/c
                                                                                                      j7336
                                                                                                      k7337
                                                                                                      g7335)))
                                                                                             (f7338
                                                                                              x7696
                                                                                              x7695))))
                                                                                   (number?/c
                                                                                    j7336
                                                                                    k7337
                                                                                    x7694))))
                                                                         g7693))))
                                                             g7692))
                                                         xj7332
                                                         xk7333
                                                         (lambda (a b)
                                                           (letrec ((g7691
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7691)))))
                                                g7690)))
                                           (<
                                            (letrec ((xj7339 'server)
                                                     (xk7340 'client))
                                              (letrec ((g7697
                                                        ((lambda (j7343
                                                                  k7344
                                                                  f7345)
                                                           (letrec ((g7699
                                                                     (lambda (g7341
                                                                              g7342)
                                                                       (letrec ((g7700
                                                                                 (letrec ((x7701
                                                                                           (letrec ((x7703
                                                                                                     (number?/c
                                                                                                      j7343
                                                                                                      k7344
                                                                                                      g7341))
                                                                                                    (x7702
                                                                                                     (number?/c
                                                                                                      j7343
                                                                                                      k7344
                                                                                                      g7342)))
                                                                                             (f7345
                                                                                              x7703
                                                                                              x7702))))
                                                                                   (boolean?/c
                                                                                    j7343
                                                                                    k7344
                                                                                    x7701))))
                                                                         g7700))))
                                                             g7699))
                                                         xj7339
                                                         xk7340
                                                         (lambda (a b)
                                                           (letrec ((g7698
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7698)))))
                                                g7697)))
                                           (>
                                            (letrec ((xj7346 'server)
                                                     (xk7347 'client))
                                              (letrec ((g7704
                                                        ((lambda (j7350
                                                                  k7351
                                                                  f7352)
                                                           (letrec ((g7706
                                                                     (lambda (g7348
                                                                              g7349)
                                                                       (letrec ((g7707
                                                                                 (letrec ((x7708
                                                                                           (letrec ((x7710
                                                                                                     (number?/c
                                                                                                      j7350
                                                                                                      k7351
                                                                                                      g7348))
                                                                                                    (x7709
                                                                                                     (number?/c
                                                                                                      j7350
                                                                                                      k7351
                                                                                                      g7349)))
                                                                                             (f7352
                                                                                              x7710
                                                                                              x7709))))
                                                                                   (boolean?/c
                                                                                    j7350
                                                                                    k7351
                                                                                    x7708))))
                                                                         g7707))))
                                                             g7706))
                                                         xj7346
                                                         xk7347
                                                         (lambda (a b)
                                                           (letrec ((g7705
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7705)))))
                                                g7704)))
                                           (<=
                                            (letrec ((xj7353 'server)
                                                     (xk7354 'client))
                                              (letrec ((g7711
                                                        ((lambda (j7357
                                                                  k7358
                                                                  f7359)
                                                           (letrec ((g7713
                                                                     (lambda (g7355
                                                                              g7356)
                                                                       (letrec ((g7714
                                                                                 (letrec ((x7715
                                                                                           (letrec ((x7717
                                                                                                     (number?/c
                                                                                                      j7357
                                                                                                      k7358
                                                                                                      g7355))
                                                                                                    (x7716
                                                                                                     (number?/c
                                                                                                      j7357
                                                                                                      k7358
                                                                                                      g7356)))
                                                                                             (f7359
                                                                                              x7717
                                                                                              x7716))))
                                                                                   (boolean?/c
                                                                                    j7357
                                                                                    k7358
                                                                                    x7715))))
                                                                         g7714))))
                                                             g7713))
                                                         xj7353
                                                         xk7354
                                                         (lambda (a b)
                                                           (letrec ((g7712
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7712)))))
                                                g7711)))
                                           (>=
                                            (letrec ((xj7360 'server)
                                                     (xk7361 'client))
                                              (letrec ((g7718
                                                        ((lambda (j7364
                                                                  k7365
                                                                  f7366)
                                                           (letrec ((g7720
                                                                     (lambda (g7362
                                                                              g7363)
                                                                       (letrec ((g7721
                                                                                 (letrec ((x7722
                                                                                           (letrec ((x7724
                                                                                                     (number?/c
                                                                                                      j7364
                                                                                                      k7365
                                                                                                      g7362))
                                                                                                    (x7723
                                                                                                     (number?/c
                                                                                                      j7364
                                                                                                      k7365
                                                                                                      g7363)))
                                                                                             (f7366
                                                                                              x7724
                                                                                              x7723))))
                                                                                   (boolean?/c
                                                                                    j7364
                                                                                    k7365
                                                                                    x7722))))
                                                                         g7721))))
                                                             g7720))
                                                         xj7360
                                                         xk7361
                                                         (lambda (a b)
                                                           (letrec ((g7719
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7719)))))
                                                g7718)))
                                           (add1
                                            (lambda (x)
                                              (letrec ((g7725 (+ x 1)))
                                                g7725)))
                                           (sub1
                                            (lambda (x)
                                              (letrec ((g7726 (- x 1)))
                                                g7726)))
                                           (/
                                            (letrec ((xj7367 'server)
                                                     (xk7368 'client))
                                              (letrec ((g7727
                                                        ((lambda (j7371
                                                                  k7372
                                                                  f7373)
                                                           (letrec ((g7729
                                                                     (lambda (g7369
                                                                              g7370)
                                                                       (letrec ((g7730
                                                                                 (letrec ((x7731
                                                                                           (letrec ((x7733
                                                                                                     (number?/c
                                                                                                      j7371
                                                                                                      k7372
                                                                                                      g7369))
                                                                                                    (x7732
                                                                                                     (number?/c
                                                                                                      j7371
                                                                                                      k7372
                                                                                                      g7370)))
                                                                                             (f7373
                                                                                              x7733
                                                                                              x7732))))
                                                                                   (number?/c
                                                                                    j7371
                                                                                    k7372
                                                                                    x7731))))
                                                                         g7730))))
                                                             g7729))
                                                         xj7367
                                                         xk7368
                                                         (lambda (a b)
                                                           (letrec ((g7728
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7728)))))
                                                g7727)))
                                           (car
                                            (letrec ((xj7374 'server)
                                                     (xk7375 'client))
                                              (letrec ((g7734
                                                        ((lambda (j7377
                                                                  k7378
                                                                  f7379)
                                                           (letrec ((g7736
                                                                     (lambda (g7376)
                                                                       (letrec ((g7737
                                                                                 (letrec ((x7738
                                                                                           (letrec ((x7739
                                                                                                     (pair?/c
                                                                                                      j7377
                                                                                                      k7378
                                                                                                      g7376)))
                                                                                             (f7379
                                                                                              x7739))))
                                                                                   (any/c
                                                                                    j7377
                                                                                    k7378
                                                                                    x7738))))
                                                                         g7737))))
                                                             g7736))
                                                         xj7374
                                                         xk7375
                                                         (lambda (p)
                                                           (letrec ((g7735
                                                                     (orig-car
                                                                      p)))
                                                             g7735)))))
                                                g7734)))
                                           (cdr
                                            (letrec ((xj7380 'server)
                                                     (xk7381 'client))
                                              (letrec ((g7740
                                                        ((lambda (j7383
                                                                  k7384
                                                                  f7385)
                                                           (letrec ((g7742
                                                                     (lambda (g7382)
                                                                       (letrec ((g7743
                                                                                 (letrec ((x7744
                                                                                           (letrec ((x7745
                                                                                                     (pair?/c
                                                                                                      j7383
                                                                                                      k7384
                                                                                                      g7382)))
                                                                                             (f7385
                                                                                              x7745))))
                                                                                   (any/c
                                                                                    j7383
                                                                                    k7384
                                                                                    x7744))))
                                                                         g7743))))
                                                             g7742))
                                                         xj7380
                                                         xk7381
                                                         (lambda (p)
                                                           (letrec ((g7741
                                                                     (orig-cdr
                                                                      p)))
                                                             g7741)))))
                                                g7740)))
                                           (cons
                                            (letrec ((xj7386 'server)
                                                     (xk7387 'client))
                                              (letrec ((g7746
                                                        ((lambda (j7390
                                                                  k7391
                                                                  f7392)
                                                           (letrec ((g7748
                                                                     (lambda (g7388
                                                                              g7389)
                                                                       (letrec ((g7749
                                                                                 (letrec ((x7750
                                                                                           (letrec ((x7752
                                                                                                     (any/c
                                                                                                      j7390
                                                                                                      k7391
                                                                                                      g7388))
                                                                                                    (x7751
                                                                                                     (any/c
                                                                                                      j7390
                                                                                                      k7391
                                                                                                      g7389)))
                                                                                             (f7392
                                                                                              x7752
                                                                                              x7751))))
                                                                                   (pair?/c
                                                                                    j7390
                                                                                    k7391
                                                                                    x7750))))
                                                                         g7749))))
                                                             g7748))
                                                         xj7386
                                                         xk7387
                                                         (lambda (a b)
                                                           (letrec ((g7747
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7747)))))
                                                g7746)))
                                           (vector-ref
                                            (letrec ((xj7393 'server)
                                                     (xk7394 'client))
                                              (letrec ((g7753
                                                        ((lambda (j7396
                                                                  k7397
                                                                  f7398)
                                                           (letrec ((g7755
                                                                     (lambda (g7395)
                                                                       (letrec ((g7756
                                                                                 (letrec ((x7757
                                                                                           (letrec ((x7758
                                                                                                     (vector?/c
                                                                                                      j7396
                                                                                                      k7397
                                                                                                      g7395)))
                                                                                             (f7398
                                                                                              x7758))))
                                                                                   (integer?/c
                                                                                    j7396
                                                                                    k7397
                                                                                    x7757))))
                                                                         g7756))))
                                                             g7755))
                                                         xj7393
                                                         xk7394
                                                         (lambda (v i)
                                                           (letrec ((g7754
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7754)))))
                                                g7753)))
                                           (vector-set!
                                            (letrec ((xj7399 'server)
                                                     (xk7400 'client))
                                              (letrec ((g7759
                                                        ((lambda (j7403
                                                                  k7404
                                                                  f7405)
                                                           (letrec ((g7761
                                                                     (lambda (g7401
                                                                              g7402)
                                                                       (letrec ((g7762
                                                                                 (letrec ((x7763
                                                                                           (letrec ((x7765
                                                                                                     (vector?/c
                                                                                                      j7403
                                                                                                      k7404
                                                                                                      g7401))
                                                                                                    (x7764
                                                                                                     (integer?/c
                                                                                                      j7403
                                                                                                      k7404
                                                                                                      g7402)))
                                                                                             (f7405
                                                                                              x7765
                                                                                              x7764))))
                                                                                   (any/c
                                                                                    j7403
                                                                                    k7404
                                                                                    x7763))))
                                                                         g7762))))
                                                             g7761))
                                                         xj7399
                                                         xk7400
                                                         (lambda (vec i v)
                                                           (letrec ((g7760
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7760)))))
                                                g7759)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7766
                                                        (letrec ((x7767
                                                                  (letrec ((x7768
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7768))))
                                                          (cdr x7767))))
                                                g7766)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7769
                                                        (letrec ((x7772
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7772)))
                                                       (g7770
                                                        (letrec ((x7773
                                                                  (list? l)))
                                                          (assert x7773)))
                                                       (g7771
                                                        (letrec ((x-cnd7774
                                                                  (null? l)))
                                                          (if x-cnd7774
                                                            '()
                                                            (letrec ((x7777
                                                                      (letrec ((x7778
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7778)))
                                                                     (x7775
                                                                      (letrec ((x7776
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7776))))
                                                              (cons
                                                               x7777
                                                               x7775))))))
                                                g7771)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7779
                                                        (letrec ((x7780
                                                                  (car x)))
                                                          (cdr x7780))))
                                                g7779)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7781
                                                        (letrec ((x7782
                                                                  (letrec ((x7783
                                                                            (letrec ((x7784
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7784))))
                                                                    (cdr
                                                                     x7783))))
                                                          (car x7782))))
                                                g7781)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7785
                                                        (letrec ((x7786
                                                                  (letrec ((x7787
                                                                            (letrec ((x7788
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7788))))
                                                                    (car
                                                                     x7787))))
                                                          (cdr x7786))))
                                                g7785)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7789
                                                        (letrec ((x7792
                                                                  (string?
                                                                   filename)))
                                                          (assert x7792)))
                                                       (g7790
                                                        (letrec ((x7793
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7793)))
                                                       (g7791
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7794
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7795 res))
                                                            g7795))))
                                                g7791)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7796
                                                        (letrec ((x7797
                                                                  (letrec ((x7798
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7798))))
                                                          (car x7797))))
                                                g7796)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7799
                                                        (letrec ((x7800
                                                                  (letrec ((x7801
                                                                            (letrec ((x7802
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7802))))
                                                                    (car
                                                                     x7801))))
                                                          (cdr x7800))))
                                                g7799)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7803
                                                        (letrec ((x7805
                                                                  (list? l)))
                                                          (assert x7805)))
                                                       (g7804
                                                        (letrec ((x-cnd7806
                                                                  (null? l)))
                                                          (if x-cnd7806
                                                            #f
                                                            (letrec ((x-cnd7807
                                                                      (letrec ((x7808
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7808
                                                                         k))))
                                                              (if x-cnd7807
                                                                (car l)
                                                                (letrec ((x7809
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7809))))))))
                                                g7804)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7810
                                                        (letrec ((x7811
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7811))))
                                                g7810)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7812
                                                        (letrec ((x7814
                                                                  (list? l)))
                                                          (assert x7814)))
                                                       (g7813
                                                        (letrec ((x-cnd7815
                                                                  (null? l)))
                                                          (if x-cnd7815
                                                            ""
                                                            (letrec ((x7818
                                                                      (letrec ((x7819
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7819)))
                                                                     (x7816
                                                                      (letrec ((x7817
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7817))))
                                                              (string-append
                                                               x7818
                                                               x7816))))))
                                                g7813)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7820
                                                        (letrec ((x7823
                                                                  (char? c1)))
                                                          (assert x7823)))
                                                       (g7821
                                                        (letrec ((x7824
                                                                  (char? c2)))
                                                          (assert x7824)))
                                                       (g7822
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7825
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7825))))
                                                g7822)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7826
                                                        (letrec ((x7827
                                                                  (letrec ((x7828
                                                                            (letrec ((x7829
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7829))))
                                                                    (cdr
                                                                     x7828))))
                                                          (cdr x7827))))
                                                g7826)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7830
                                                        (letrec ((x7833
                                                                  (list? l)))
                                                          (assert x7833)))
                                                       (g7831
                                                        (letrec ((x7834
                                                                  (number?)))
                                                          (assert x7834)))
                                                       (g7832
                                                        (letrec ((x-cnd7835
                                                                  (zero? k)))
                                                          (if x-cnd7835
                                                            x
                                                            (letrec ((x7837
                                                                      (cdr x))
                                                                     (x7836
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7837
                                                               x7836))))))
                                                g7832)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7838 '())) g7838)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7839
                                                        (letrec ((x-cnd7840
                                                                  (letrec ((x7841
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7841))))
                                                          (if x-cnd7840
                                                            (letrec ((x7842
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7842))
                                                            #f))))
                                                g7839)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7843
                                                        (letrec ((val7250
                                                                  (letrec ((x7844
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7844
                                                                     9))))
                                                          (letrec ((g7845
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x7846
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7846
                                                                                   10))))
                                                                        (letrec ((g7847
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x7848
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7848
                                                                                       32)))))
                                                                          g7847)))))
                                                            g7845))))
                                                g7843)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7849
                                                        (letrec ((x7850
                                                                  (letrec ((x7851
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7851))))
                                                          (cdr x7850))))
                                                g7849)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7852
                                                        (letrec ((x7854
                                                                  (number? x)))
                                                          (assert x7854)))
                                                       (g7853 (> x 0)))
                                                g7853)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g7855 (bool-top)))
                                                g7855)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7856 #f)) g7856)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7857
                                                        (letrec ((x7858
                                                                  (cdr x)))
                                                          (cdr x7858))))
                                                g7857)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7859
                                                        (letrec ((x7861
                                                                  (number? x)))
                                                          (assert x7861)))
                                                       (g7860
                                                        (letrec ((x-cnd7862
                                                                  (< x 0)))
                                                          (if x-cnd7862
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7860)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7863
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g7864
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd7865
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7865
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7866
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd7867
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7867
                                                                                                  (letrec ((x-cnd7868
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7868
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7869
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd7870
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7870
                                                                                                                (letrec ((x-cnd7871
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7871
                                                                                                                    (letrec ((x-cnd7872
                                                                                                                              (letrec ((x7874
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7873
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7874
                                                                                                                                 x7873))))
                                                                                                                      (if x-cnd7872
                                                                                                                        (letrec ((x7876
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7875
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7876
                                                                                                                           x7875))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7877
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd7878
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7878
                                                                                                                    (letrec ((x-cnd7879
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7879
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7880
                                                                                                                                    (letrec ((x-cnd7881
                                                                                                                                              (letrec ((x7882
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7882
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7881
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7883
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7884
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd7885
                                                                                                                                                                                      (letrec ((x7887
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7886
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7887
                                                                                                                                                                                         x7886))))
                                                                                                                                                                              (if x-cnd7885
                                                                                                                                                                                (letrec ((x7888
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7888))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7884))))
                                                                                                                                                      g7883))))
                                                                                                                                          (letrec ((g7889
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7889))
                                                                                                                                        #f))))
                                                                                                                            g7880))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7877)))))
                                                                                        g7869)))))
                                                                          g7866)))))
                                                            g7864))))
                                                g7863)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7890
                                                        (letrec ((x7891
                                                                  (letrec ((x7892
                                                                            (letrec ((x7893
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7893))))
                                                                    (car
                                                                     x7892))))
                                                          (cdr x7891))))
                                                g7890)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7894
                                                        (letrec ((x7895
                                                                  (letrec ((x7896
                                                                            (letrec ((x7897
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7897))))
                                                                    (car
                                                                     x7896))))
                                                          (car x7895))))
                                                g7894)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7898 (eq? x y)))
                                                g7898)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7899
                                                        (letrec ((x7902
                                                                  (string?
                                                                   filename)))
                                                          (assert x7902)))
                                                       (g7900
                                                        (letrec ((x7903
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7903)))
                                                       (g7901
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7904
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7905 res))
                                                            g7905))))
                                                g7901)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7906 (cons x '())))
                                                g7906)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7907
                                                        (letrec ((x7910
                                                                  (char? c1)))
                                                          (assert x7910)))
                                                       (g7908
                                                        (letrec ((x7911
                                                                  (char? c2)))
                                                          (assert x7911)))
                                                       (g7909
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7912
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7912))))
                                                g7909)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7913
                                                        (letrec ((x7914
                                                                  (letrec ((x7915
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7915))))
                                                          (cdr x7914))))
                                                g7913)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7916
                                                        (letrec ((x7917
                                                                  (letrec ((x7918
                                                                            (letrec ((x7919
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7919))))
                                                                    (car
                                                                     x7918))))
                                                          (cdr x7917))))
                                                g7916)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7920
                                                        (letrec ((x7921
                                                                  (letrec ((x7922
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7922))))
                                                          (car x7921))))
                                                g7920)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7923
                                                        (letrec ((x7924
                                                                  (letrec ((x7925
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7925))))
                                                          (car x7924))))
                                                g7923)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7926
                                                        (letrec ((x7929
                                                                  (char? c1)))
                                                          (assert x7929)))
                                                       (g7927
                                                        (letrec ((x7930
                                                                  (char? c2)))
                                                          (assert x7930)))
                                                       (g7928
                                                        (letrec ((x7931
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7931))))
                                                g7928)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7932
                                                        (letrec ((x7933
                                                                  (letrec ((x7934
                                                                            (letrec ((x7935
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7935))))
                                                                    (car
                                                                     x7934))))
                                                          (car x7933))))
                                                g7932)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7936
                                                        (letrec ((x7938
                                                                  (number? x)))
                                                          (assert x7938)))
                                                       (g7937 (< x 0)))
                                                g7937)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7939 (memq e l)))
                                                g7939)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7940
                                                        (letrec ((x7941
                                                                  (letrec ((x7942
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7942))))
                                                          (car x7941))))
                                                g7940)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7943 '())) g7943)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7944
                                                        (letrec ((x7946
                                                                  (list? l)))
                                                          (assert x7946)))
                                                       (g7945
                                                        (letrec ((x-cnd7947
                                                                  (null? l)))
                                                          (if x-cnd7947
                                                            '()
                                                            (letrec ((x7950
                                                                      (letrec ((x7951
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7951)))
                                                                     (x7948
                                                                      (letrec ((x7949
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7949))))
                                                              (append
                                                               x7950
                                                               x7948))))))
                                                g7945)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7952
                                                        (letrec ((x7953
                                                                  (letrec ((x7954
                                                                            (letrec ((x7955
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7955))))
                                                                    (car
                                                                     x7954))))
                                                          (car x7953))))
                                                g7952)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7956
                                                        (letrec ((x7957
                                                                  (letrec ((x7958
                                                                            (letrec ((x7959
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7959))))
                                                                    (cdr
                                                                     x7958))))
                                                          (cdr x7957))))
                                                g7956)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7960
                                                        (letrec ((x7962
                                                                  (number? x)))
                                                          (assert x7962)))
                                                       (g7961
                                                        (letrec ((x7963
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7963))))
                                                g7961)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7964
                                                        (letrec ((x7965
                                                                  (letrec ((x7966
                                                                            (letrec ((x7967
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7967))))
                                                                    (car
                                                                     x7966))))
                                                          (car x7965))))
                                                g7964)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7968
                                                        (letrec ((x7971
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7971)))
                                                       (g7969
                                                        (letrec ((x7972
                                                                  (list?
                                                                   args)))
                                                          (assert x7972)))
                                                       (g7970
                                                        (letrec ((x-cnd7973
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7973
                                                            (letrec ((g7974
                                                                      (proc)))
                                                              g7974)
                                                            (letrec ((x-cnd7975
                                                                      (letrec ((x7976
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7976))))
                                                              (if x-cnd7975
                                                                (letrec ((g7977
                                                                          (letrec ((x7978
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7978))))
                                                                  g7977)
                                                                (letrec ((x-cnd7979
                                                                          (letrec ((x7980
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7980))))
                                                                  (if x-cnd7979
                                                                    (letrec ((g7981
                                                                              (letrec ((x7983
                                                                                        (car
                                                                                         args))
                                                                                       (x7982
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7983
                                                                                 x7982))))
                                                                      g7981)
                                                                    (letrec ((x-cnd7984
                                                                              (letrec ((x7985
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7985))))
                                                                      (if x-cnd7984
                                                                        (letrec ((g7986
                                                                                  (letrec ((x7989
                                                                                            (car
                                                                                             args))
                                                                                           (x7988
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7987
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7989
                                                                                     x7988
                                                                                     x7987))))
                                                                          g7986)
                                                                        (letrec ((x-cnd7990
                                                                                  (letrec ((x7991
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7991))))
                                                                          (if x-cnd7990
                                                                            (letrec ((g7992
                                                                                      (letrec ((x7996
                                                                                                (car
                                                                                                 args))
                                                                                               (x7995
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7994
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7993
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7996
                                                                                         x7995
                                                                                         x7994
                                                                                         x7993))))
                                                                              g7992)
                                                                            (letrec ((x-cnd7997
                                                                                      (letrec ((x7998
                                                                                                (letrec ((x7999
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7999))))
                                                                                        (null?
                                                                                         x7998))))
                                                                              (if x-cnd7997
                                                                                (letrec ((g8000
                                                                                          (letrec ((x8006
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8005
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8004
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8003
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8001
                                                                                                    (letrec ((x8002
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8002))))
                                                                                            (proc
                                                                                             x8006
                                                                                             x8005
                                                                                             x8004
                                                                                             x8003
                                                                                             x8001))))
                                                                                  g8000)
                                                                                (letrec ((x-cnd8007
                                                                                          (letrec ((x8008
                                                                                                    (letrec ((x8009
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8009))))
                                                                                            (null?
                                                                                             x8008))))
                                                                                  (if x-cnd8007
                                                                                    (letrec ((g8010
                                                                                              (letrec ((x8018
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8017
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8016
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8015
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8013
                                                                                                        (letrec ((x8014
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8014)))
                                                                                                       (x8011
                                                                                                        (letrec ((x8012
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8012))))
                                                                                                (proc
                                                                                                 x8018
                                                                                                 x8017
                                                                                                 x8016
                                                                                                 x8015
                                                                                                 x8013
                                                                                                 x8011))))
                                                                                      g8010)
                                                                                    (letrec ((x-cnd8019
                                                                                              (letrec ((x8020
                                                                                                        (letrec ((x8021
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8021))))
                                                                                                (null?
                                                                                                 x8020))))
                                                                                      (if x-cnd8019
                                                                                        (letrec ((g8022
                                                                                                  (letrec ((x8032
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8031
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8030
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8029
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8027
                                                                                                            (letrec ((x8028
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8028)))
                                                                                                           (x8025
                                                                                                            (letrec ((x8026
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8026)))
                                                                                                           (x8023
                                                                                                            (letrec ((x8024
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8024))))
                                                                                                    (proc
                                                                                                     x8032
                                                                                                     x8031
                                                                                                     x8030
                                                                                                     x8029
                                                                                                     x8027
                                                                                                     x8025
                                                                                                     x8023))))
                                                                                          g8022)
                                                                                        (letrec ((g8033
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8033)))))))))))))))))))
                                                g7970)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8034
                                                        (letrec ((x8036
                                                                  (list? l)))
                                                          (assert x8036)))
                                                       (g8035
                                                        (letrec ((x-cnd8037
                                                                  (null? l)))
                                                          (if x-cnd8037
                                                            #f
                                                            (letrec ((x-cnd8038
                                                                      (letrec ((x8039
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8039
                                                                         e))))
                                                              (if x-cnd8038
                                                                l
                                                                (letrec ((x8040
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8040))))))))
                                                g8035)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8041
                                                        (letrec ((x8042
                                                                  (letrec ((x8043
                                                                            (letrec ((x8044
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8044))))
                                                                    (cdr
                                                                     x8043))))
                                                          (cdr x8042))))
                                                g8041)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8045
                                                        (letrec ((x8046
                                                                  (letrec ((x8047
                                                                            (letrec ((x8048
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8048))))
                                                                    (cdr
                                                                     x8047))))
                                                          (car x8046))))
                                                g8045)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8049 (random 42)))
                                                g8049)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8050
                                                        (letrec ((x8052
                                                                  (number? x)))
                                                          (assert x8052)))
                                                       (g8051 (= x 0)))
                                                g8051)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8053
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8054
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8054))))
                                                g8053)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8055
                                                        (letrec ((x8056
                                                                  (cdr x)))
                                                          (car x8056))))
                                                g8055)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8057
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd8058
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8058
                                                                      (letrec ((x8059
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8059))
                                                                      #f))))
                                                          (letrec ((g8060
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g8060))))
                                                g8057)))
                                           (cddaar
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
                                                          (cdr x8062))))
                                                g8061)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8065
                                                        (letrec ((x-cnd8066
                                                                  (letrec ((x8067
                                                                            #\0))
                                                                    (char<=?
                                                                     x8067
                                                                     c))))
                                                          (if x-cnd8066
                                                            (letrec ((x8068
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8068))
                                                            #f))))
                                                g8065)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8069
                                                        (letrec ((x8071
                                                                  (list? l)))
                                                          (assert x8071)))
                                                       (g8070
                                                        (letrec ((x-cnd8072
                                                                  (null? l)))
                                                          (if x-cnd8072
                                                            #f
                                                            (letrec ((x-cnd8073
                                                                      (letrec ((x8074
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8074
                                                                         k))))
                                                              (if x-cnd8073
                                                                (car l)
                                                                (letrec ((x8075
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8075))))))))
                                                g8070)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8076 (if x #f #t)))
                                                g8076)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8077 (append l1 l2)))
                                                g8077)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8078
                                                        (letrec ((x8080
                                                                  (list? l)))
                                                          (assert x8080)))
                                                       (g8079
                                                        (letrec ((x-cnd8081
                                                                  (null? l)))
                                                          (if x-cnd8081
                                                            #f
                                                            (letrec ((x-cnd8082
                                                                      (letrec ((x8083
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8083
                                                                         e))))
                                                              (if x-cnd8082
                                                                l
                                                                (letrec ((x8084
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8084))))))))
                                                g8079)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8085
                                                        (letrec ((x8086
                                                                  (letrec ((x8087
                                                                            (letrec ((x8088
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8088))))
                                                                    (cdr
                                                                     x8087))))
                                                          (car x8086))))
                                                g8085)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8089
                                                        (letrec ((x8091
                                                                  (list? l)))
                                                          (assert x8091)))
                                                       (g8090
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8092
                                                                              (letrec ((x-cnd8093
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8093
                                                                                  0
                                                                                  (letrec ((x8094
                                                                                            (letrec ((x8095
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8095))))
                                                                                    (+
                                                                                     1
                                                                                     x8094))))))
                                                                      g8092))))
                                                          (letrec ((g8096
                                                                    (rec l)))
                                                            g8096))))
                                                g8090)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8097
                                                        (letrec ((x8100
                                                                  (char? c1)))
                                                          (assert x8100)))
                                                       (g8098
                                                        (letrec ((x8101
                                                                  (char? c2)))
                                                          (assert x8101)))
                                                       (g8099
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8102
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8102))))
                                                g8099)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8103
                                                        (letrec ((x8104
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8104))))
                                                g8103)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8105
                                                        (letrec ((x8106
                                                                  (letrec ((x8107
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8107))))
                                                          (cdr x8106))))
                                                g8105)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8108
                                                        (letrec ((x8110
                                                                  (list? l)))
                                                          (assert x8110)))
                                                       (g8109
                                                        (letrec ((x-cnd8111
                                                                  (null? l)))
                                                          (if x-cnd8111
                                                            #f
                                                            (letrec ((x-cnd8112
                                                                      (letrec ((x8113
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8113
                                                                         k))))
                                                              (if x-cnd8112
                                                                (car l)
                                                                (letrec ((x8114
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8114))))))))
                                                g8109)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8115
                                                        (letrec ((x8116
                                                                  (car x)))
                                                          (car x8116))))
                                                g8115)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8117
                                                        (letrec ((x8120
                                                                  (char? c1)))
                                                          (assert x8120)))
                                                       (g8118
                                                        (letrec ((x8121
                                                                  (char? c2)))
                                                          (assert x8121)))
                                                       (g8119
                                                        (letrec ((x8122
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8122))))
                                                g8119)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8123
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8124
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8124))))
                                                g8123)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8125
                                                        (letrec ((x8128
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8128)))
                                                       (g8126
                                                        (letrec ((x8129
                                                                  (list? l)))
                                                          (assert x8129)))
                                                       (g8127
                                                        (letrec ((x-cnd8130
                                                                  (null? l)))
                                                          (if x-cnd8130
                                                            #t
                                                            (letrec ((x-cnd8131
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8131
                                                                (letrec ((g8132
                                                                          (letrec ((x8134
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8134)))
                                                                         (g8133
                                                                          (letrec ((x8135
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8135))))
                                                                  g8133)
                                                                '()))))))
                                                g8127)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8136
                                                        (letrec ((x8138
                                                                  (number? x)))
                                                          (assert x8138)))
                                                       (g8137
                                                        (letrec ((x-cnd8139
                                                                  (< x 0)))
                                                          (if x-cnd8139
                                                            (- 0 x)
                                                            x))))
                                                g8137)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8140
                                                        (letrec ((x8143
                                                                  (char? c1)))
                                                          (assert x8143)))
                                                       (g8141
                                                        (letrec ((x8144
                                                                  (char? c2)))
                                                          (assert x8144)))
                                                       (g8142
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8145
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8145))))
                                                g8142)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8146
                                                        (letrec ((x8147
                                                                  (letrec ((x8148
                                                                            (letrec ((x8149
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8149))))
                                                                    (cdr
                                                                     x8148))))
                                                          (car x8147))))
                                                g8146)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8150 #f)) g8150)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8151
                                                        (letrec ((x8153
                                                                  (letrec ((x8154
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8154)))
                                                                 (x8152
                                                                  (gcd m n)))
                                                          (/ x8153 x8152))))
                                                g8151)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8155
                                                        (letrec ((x8159
                                                                  (list? l)))
                                                          (assert x8159)))
                                                       (g8156
                                                        (letrec ((x8160
                                                                  (number?
                                                                   index)))
                                                          (assert x8160)))
                                                       (g8157
                                                        (letrec ((x8161
                                                                  (letrec ((x8162
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8162))))
                                                          (assert x8161)))
                                                       (g8158
                                                        (letrec ((x-cnd8163
                                                                  (= index 0)))
                                                          (if x-cnd8163
                                                            (car l)
                                                            (letrec ((x8165
                                                                      (cdr l))
                                                                     (x8164
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8165
                                                               x8164))))))
                                                g8158)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8166
                                                        (letrec ((x-cnd8167
                                                                  (= b 0)))
                                                          (if x-cnd8167
                                                            a
                                                            (letrec ((x8168
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8168))))))
                                                g8166)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8169
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8169)))
                                           (image?
                                            (lambda (image7556)
                                              (letrec ((g8170
                                                        (letrec ((x8171
                                                                  (car
                                                                   image7556)))
                                                          (eq? x8171 'image))))
                                                g8170)))
                                           (image/c
                                            (lambda (j7407 k7408 v7406)
                                              (letrec ((g8172
                                                        (cons image '())))
                                                g8172)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8173 (image)))
                                                g8173)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8174 (image)))
                                                g8174)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8175 (image)))
                                                g8175)))
                                           (posn
                                            (lambda (x7558 y7559)
                                              (letrec ((g8176
                                                        (letrec ((x8177
                                                                  (letrec ((x8178
                                                                            (orig-cons
                                                                             y7559
                                                                             '())))
                                                                    (orig-cons
                                                                     x7558
                                                                     x8178))))
                                                          (orig-cons
                                                           'posn
                                                           x8177))))
                                                g8176)))
                                           (posn?
                                            (lambda (posn7557)
                                              (letrec ((g8179
                                                        (letrec ((x8180
                                                                  (car
                                                                   posn7557)))
                                                          (eq? x8180 'posn))))
                                                g8179)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8181
                                                        (letrec ((x8182
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8182))))
                                                g8181)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8183
                                                        (letrec ((x8184
                                                                  (letrec ((x8185
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8185))))
                                                          (orig-car x8184))))
                                                g8183)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8186
                                                        (letrec ((x-cnd8187
                                                                  (letrec ((x8189
                                                                            (posn-x
                                                                             p1))
                                                                           (x8188
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8189
                                                                     x8188))))
                                                          (if x-cnd8187
                                                            (letrec ((x8191
                                                                      (posn-y
                                                                       p1))
                                                                     (x8190
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8191 x8190))
                                                            #f))))
                                                g8186)))
                                           (snake
                                            (lambda (dir7563 segs7564)
                                              (letrec ((g8192
                                                        (letrec ((x8193
                                                                  (letrec ((x8194
                                                                            (orig-cons
                                                                             segs7564
                                                                             '())))
                                                                    (orig-cons
                                                                     dir7563
                                                                     x8194))))
                                                          (orig-cons
                                                           'snake
                                                           x8193))))
                                                g8192)))
                                           (snake?
                                            (lambda (snake7562)
                                              (letrec ((g8195
                                                        (letrec ((x8196
                                                                  (car
                                                                   snake7562)))
                                                          (eq? x8196 'snake))))
                                                g8195)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g8197
                                                        (letrec ((x8198
                                                                  (orig-cdr
                                                                   snake)))
                                                          (orig-car x8198))))
                                                g8197)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g8199
                                                        (letrec ((x8200
                                                                  (letrec ((x8201
                                                                            (orig-cdr
                                                                             snake)))
                                                                    (orig-cdr
                                                                     x8201))))
                                                          (orig-car x8200))))
                                                g8199)))
                                           (world
                                            (lambda (snake7568 food7569)
                                              (letrec ((g8202
                                                        (letrec ((x8203
                                                                  (letrec ((x8204
                                                                            (orig-cons
                                                                             food7569
                                                                             '())))
                                                                    (orig-cons
                                                                     snake7568
                                                                     x8204))))
                                                          (orig-cons
                                                           'world
                                                           x8203))))
                                                g8202)))
                                           (world?
                                            (lambda (world7567)
                                              (letrec ((g8205
                                                        (letrec ((x8206
                                                                  (car
                                                                   world7567)))
                                                          (eq? x8206 'world))))
                                                g8205)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g8207
                                                        (letrec ((x8208
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8208))))
                                                g8207)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g8209
                                                        (letrec ((x8210
                                                                  (letrec ((x8211
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8211))))
                                                          (orig-car x8210))))
                                                g8209)))
                                           (DIR/C
                                            (lambda (g7413 g7414 g7415)
                                              (letrec ((g8212
                                                        (letrec ((x-cnd8213
                                                                  ((lambda (v7412)
                                                                     (letrec ((g8214
                                                                               (letrec ((x-cnd8215
                                                                                         (eq?
                                                                                          'up
                                                                                          v7412)))
                                                                                 (if x-cnd8215
                                                                                   #t
                                                                                   (letrec ((x-cnd8216
                                                                                             (eq?
                                                                                              'down
                                                                                              v7412)))
                                                                                     (if x-cnd8216
                                                                                       #t
                                                                                       (letrec ((x-cnd8217
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v7412)))
                                                                                         (if x-cnd8217
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v7412)))))))))
                                                                       g8214))
                                                                   g7415)))
                                                          (if x-cnd8213
                                                            g7415
                                                            (blame
                                                             g7413
                                                             '(lambda (v7412)
                                                                (if (eq?
                                                                     'up
                                                                     v7412)
                                                                  #t
                                                                  (if (eq?
                                                                       'down
                                                                       v7412)
                                                                    #t
                                                                    (if (eq?
                                                                         'left
                                                                         v7412)
                                                                      #t
                                                                      (eq?
                                                                       'right
                                                                       v7412))))))))))
                                                g8212)))
                                           (POSN/C
                                            (lambda (j7417 k7418 v7416)
                                              (letrec ((g8218
                                                        (letrec ((checked7419
                                                                  (letrec ((x8219
                                                                            (letrec ((x8220
                                                                                      (orig-cdr
                                                                                       v7416)))
                                                                              (orig-car
                                                                               x8220))))
                                                                    (real?/c
                                                                     j7417
                                                                     k7418
                                                                     x8219))))
                                                          (letrec ((g8221
                                                                    (letrec ((checked7420
                                                                              (letrec ((x8222
                                                                                        (letrec ((x8223
                                                                                                  (letrec ((x8224
                                                                                                            (orig-cdr
                                                                                                             v7416)))
                                                                                                    (orig-cdr
                                                                                                     x8224))))
                                                                                          (orig-car
                                                                                           x8223))))
                                                                                (real?/c
                                                                                 j7417
                                                                                 k7418
                                                                                 x8222))))
                                                                      (letrec ((g8225
                                                                                (letrec ((x8226
                                                                                          (letrec ((x8227
                                                                                                    (cons
                                                                                                     checked7420
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7419
                                                                                             x8227))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8226))))
                                                                        g8225))))
                                                            g8221))))
                                                g8218)))
                                           (SNAKE/C
                                            (lambda (j7423 k7424 v7422)
                                              (letrec ((g8228
                                                        (letrec ((checked7425
                                                                  (letrec ((x8229
                                                                            (letrec ((x8230
                                                                                      (orig-cdr
                                                                                       v7422)))
                                                                              (orig-car
                                                                               x8230))))
                                                                    (DIR/C
                                                                     j7423
                                                                     k7424
                                                                     x8229))))
                                                          (letrec ((g8231
                                                                    (letrec ((checked7426
                                                                              (letrec ((x8235
                                                                                        (letrec ((x8236
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x8236)))
                                                                                       (x8232
                                                                                        (letrec ((x8233
                                                                                                  (letrec ((x8234
                                                                                                            (orig-cdr
                                                                                                             v7422)))
                                                                                                    (orig-cdr
                                                                                                     x8234))))
                                                                                          (orig-car
                                                                                           x8233))))
                                                                                (x8235
                                                                                 j7423
                                                                                 k7424
                                                                                 x8232))))
                                                                      (letrec ((g8237
                                                                                (letrec ((x8238
                                                                                          (letrec ((x8239
                                                                                                    (cons
                                                                                                     checked7426
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7425
                                                                                             x8239))))
                                                                                  (cons
                                                                                   snake
                                                                                   x8238))))
                                                                        g8237))))
                                                            g8231))))
                                                g8228)))
                                           (WORLD/C
                                            (lambda (j7429 k7430 v7428)
                                              (letrec ((g8240
                                                        (letrec ((checked7431
                                                                  (letrec ((x8241
                                                                            (letrec ((x8242
                                                                                      (orig-cdr
                                                                                       v7428)))
                                                                              (orig-car
                                                                               x8242))))
                                                                    (SNAKE/C
                                                                     j7429
                                                                     k7430
                                                                     x8241))))
                                                          (letrec ((g8243
                                                                    (letrec ((checked7432
                                                                              (letrec ((x8244
                                                                                        (letrec ((x8245
                                                                                                  (letrec ((x8246
                                                                                                            (orig-cdr
                                                                                                             v7428)))
                                                                                                    (orig-cdr
                                                                                                     x8246))))
                                                                                          (orig-car
                                                                                           x8245))))
                                                                                (POSN/C
                                                                                 j7429
                                                                                 k7430
                                                                                 x8244))))
                                                                      (letrec ((g8247
                                                                                (letrec ((x8248
                                                                                          (letrec ((x8249
                                                                                                    (cons
                                                                                                     checked7432
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7431
                                                                                             x8249))))
                                                                                  (cons
                                                                                   world
                                                                                   x8248))))
                                                                        g8247))))
                                                            g8243))))
                                                g8240)))
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
                                            (letrec ((x8251
                                                      (letrec ((x8252
                                                                (letrec ((x8253
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x8253
                                                                   empty))))
                                                        (snake 'right x8252)))
                                                     (x8250 (posn 8 12)))
                                              (world x8251 x8250)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g8254
                                                        (letrec ((x8255
                                                                  (letrec ((x8256
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8256))))
                                                          (head-collide?
                                                           x8255))))
                                                g8254)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g8257
                                                        (letrec ((val7263
                                                                  (letrec ((x8258
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x8258
                                                                     0))))
                                                          (letrec ((g8259
                                                                    (if val7263
                                                                      val7263
                                                                      (letrec ((val7264
                                                                                (letrec ((x8260
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x8260
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g8261
                                                                                  (if val7264
                                                                                    val7264
                                                                                    (letrec ((val7265
                                                                                              (letrec ((x8262
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x8262
                                                                                                 0))))
                                                                                      (letrec ((g8263
                                                                                                (if val7265
                                                                                                  val7265
                                                                                                  (letrec ((x8264
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x8264
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g8263)))))
                                                                          g8261)))))
                                                            g8259))))
                                                g8257)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g8265
                                                        (letrec ((x8268
                                                                  (letrec ((x8269
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8269)))
                                                                 (x8266
                                                                  (letrec ((x8267
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x8267))))
                                                          (segs-self-collide?
                                                           x8268
                                                           x8266))))
                                                g8265)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g8270
                                                        (letrec ((x-cnd8271
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8271
                                                            (letrec ((g8272
                                                                      #f))
                                                              g8272)
                                                            (letrec ((g8273
                                                                      (letrec ((x8276
                                                                                (letrec ((x8277
                                                                                          (car
                                                                                           segs)))
                                                                                  (posn=?
                                                                                   x8277
                                                                                   h)))
                                                                               (x8274
                                                                                (letrec ((x8275
                                                                                          (cdr
                                                                                           segs)))
                                                                                  (segs-self-collide?
                                                                                   h
                                                                                   x8275))))
                                                                        (or x8276
                                                                            x8274))))
                                                              g8273)))))
                                                g8270)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g8278
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g8279
                                                                    (letrec ((x-cnd8280
                                                                              (empty?
                                                                               r)))
                                                                      (if x-cnd8280
                                                                        (letrec ((g8281
                                                                                  empty))
                                                                          g8281)
                                                                        (letrec ((g8282
                                                                                  (letrec ((x8284
                                                                                            (car
                                                                                             segs))
                                                                                           (x8283
                                                                                            (cut-tail
                                                                                             r)))
                                                                                    (cons
                                                                                     x8284
                                                                                     x8283))))
                                                                          g8282)))))
                                                            g8279))))
                                                g8278)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g8285
                                                        (letrec ((x-cnd8286
                                                                  (equal?
                                                                   'right
                                                                   dir)))
                                                          (if x-cnd8286
                                                            (letrec ((g8287
                                                                      (letrec ((x8289
                                                                                (letrec ((x8290
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (add1
                                                                                   x8290)))
                                                                               (x8288
                                                                                (posn-y
                                                                                 seg)))
                                                                        (posn
                                                                         x8289
                                                                         x8288))))
                                                              g8287)
                                                            (letrec ((x-cnd8291
                                                                      (equal?
                                                                       'left
                                                                       dir)))
                                                              (if x-cnd8291
                                                                (letrec ((g8292
                                                                          (letrec ((x8294
                                                                                    (letrec ((x8295
                                                                                              (posn-x
                                                                                               seg)))
                                                                                      (sub1
                                                                                       x8295)))
                                                                                   (x8293
                                                                                    (posn-y
                                                                                     seg)))
                                                                            (posn
                                                                             x8294
                                                                             x8293))))
                                                                  g8292)
                                                                (letrec ((x-cnd8296
                                                                          (equal?
                                                                           'down
                                                                           dir)))
                                                                  (if x-cnd8296
                                                                    (letrec ((g8297
                                                                              (letrec ((x8300
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8298
                                                                                        (letrec ((x8299
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (sub1
                                                                                           x8299))))
                                                                                (posn
                                                                                 x8300
                                                                                 x8298))))
                                                                      g8297)
                                                                    (letrec ((g8301
                                                                              (letrec ((x8304
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8302
                                                                                        (letrec ((x8303
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (add1
                                                                                           x8303))))
                                                                                (posn
                                                                                 x8304
                                                                                 x8302))))
                                                                      g8301)))))))))
                                                g8285)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g8305
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8306
                                                                    (letrec ((x8307
                                                                              (letrec ((x8310
                                                                                        (letrec ((x8311
                                                                                                  (letrec ((x8312
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8312))))
                                                                                          (next-head
                                                                                           x8311
                                                                                           d)))
                                                                                       (x8308
                                                                                        (letrec ((x8309
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x8309))))
                                                                                (cons
                                                                                 x8310
                                                                                 x8308))))
                                                                      (snake
                                                                       d
                                                                       x8307))))
                                                            g8306))))
                                                g8305)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g8313
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8314
                                                                    (letrec ((x8315
                                                                              (letrec ((x8317
                                                                                        (letrec ((x8318
                                                                                                  (letrec ((x8319
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8319))))
                                                                                          (next-head
                                                                                           x8318
                                                                                           d)))
                                                                                       (x8316
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x8317
                                                                                 x8316))))
                                                                      (snake
                                                                       d
                                                                       x8315))))
                                                            g8314))))
                                                g8313)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g8320
                                                        (letrec ((x-cnd8321
                                                                  (eating? w)))
                                                          (if x-cnd8321
                                                            (letrec ((g8322
                                                                      (snake-eat
                                                                       w)))
                                                              g8322)
                                                            (letrec ((g8323
                                                                      (letrec ((x8325
                                                                                (letrec ((x8326
                                                                                          (world-snake
                                                                                           w)))
                                                                                  (snake-slither
                                                                                   x8326)))
                                                                               (x8324
                                                                                (world-food
                                                                                 w)))
                                                                        (world
                                                                         x8325
                                                                         x8324))))
                                                              g8323)))))
                                                g8320)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g8327
                                                        (letrec ((x8331
                                                                  (world-food
                                                                   w))
                                                                 (x8328
                                                                  (letrec ((x8329
                                                                            (letrec ((x8330
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x8330))))
                                                                    (car
                                                                     x8329))))
                                                          (posn=?
                                                           x8331
                                                           x8328))))
                                                g8327)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g8332
                                                        (letrec ((x8333
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x8333))))
                                                g8332)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g8334
                                                        (letrec ((x8336
                                                                  (letrec ((x8337
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x8337
                                                                     dir)))
                                                                 (x8335
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x8336
                                                           x8335))))
                                                g8334)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g8338
                                                        (letrec ((x8342
                                                                  (letrec ((x8343
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x8343)))
                                                                 (x8339
                                                                  (letrec ((x8341
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x8340
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x8341
                                                                     x8340))))
                                                          (world
                                                           x8342
                                                           x8339))))
                                                g8338)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g8344
                                                        (letrec ((x-cnd8345
                                                                  (equal?
                                                                   ke
                                                                   "w")))
                                                          (if x-cnd8345
                                                            (letrec ((g8346
                                                                      (world-change-dir
                                                                       w
                                                                       'up)))
                                                              g8346)
                                                            (letrec ((x-cnd8347
                                                                      (equal?
                                                                       ke
                                                                       "s")))
                                                              (if x-cnd8347
                                                                (letrec ((g8348
                                                                          (world-change-dir
                                                                           w
                                                                           'down)))
                                                                  g8348)
                                                                (letrec ((x-cnd8349
                                                                          (equal?
                                                                           ke
                                                                           "a")))
                                                                  (if x-cnd8349
                                                                    (letrec ((g8350
                                                                              (world-change-dir
                                                                               w
                                                                               'left)))
                                                                      g8350)
                                                                    (letrec ((x-cnd8351
                                                                              (equal?
                                                                               ke
                                                                               "d")))
                                                                      (if x-cnd8351
                                                                        (letrec ((g8352
                                                                                  (world-change-dir
                                                                                   w
                                                                                   'right)))
                                                                          g8352)
                                                                        (letrec ((g8353
                                                                                  w))
                                                                          g8353)))))))))))
                                                g8344)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g8354
                                                        (letrec ((val7266
                                                                  (letrec ((x8355
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x8355))))
                                                          (letrec ((g8356
                                                                    (if val7266
                                                                      val7266
                                                                      (letrec ((x8357
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x8357)))))
                                                            g8356))))
                                                g8354)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g8358
                                                        (letrec ((x8361
                                                                  (world-snake
                                                                   w))
                                                                 (x8359
                                                                  (letrec ((x8360
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x8360
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x8361
                                                           x8359))))
                                                g8358)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g8362
                                                        (letrec ((x8364
                                                                  (posn-x f))
                                                                 (x8363
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x8364
                                                           x8363
                                                           scn))))
                                                g8362)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g8365
                                                        (letrec ((x8368
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x8366
                                                                  (letrec ((x8367
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x8367))))
                                                          (place-image
                                                           img
                                                           x8368
                                                           x8366
                                                           scn))))
                                                g8365)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g8369
                                                        (letrec ((x8370
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x8370
                                                           scn))))
                                                g8369)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g8371
                                                        (letrec ((x-cnd8372
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8372
                                                            (letrec ((g8373
                                                                      scn))
                                                              g8373)
                                                            (letrec ((g8374
                                                                      (letrec ((x8377
                                                                                (cdr
                                                                                 segs))
                                                                               (x8375
                                                                                (letrec ((x8376
                                                                                          (car
                                                                                           segs)))
                                                                                  (segment+scene
                                                                                   x8376
                                                                                   scn))))
                                                                        (segments+scene
                                                                         x8377
                                                                         x8375))))
                                                              g8374)))))
                                                g8371)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g8378
                                                        (letrec ((x8380
                                                                  (posn-x seg))
                                                                 (x8379
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x8380
                                                           x8379
                                                           scn))))
                                                g8378))))
                                    (letrec ((g8381
                                              (parallel
                                               (parallel
                                                (letrec ((x8392
                                                          (letrec ((xj7434
                                                                    (loc
                                                                     'module))
                                                                   (xk7435
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8393
                                                                      ((lambda (j7438
                                                                                k7439
                                                                                f7440)
                                                                         (letrec ((g8394
                                                                                   (lambda (g7436
                                                                                            g7437)
                                                                                     (letrec ((g8395
                                                                                               (letrec ((x8396
                                                                                                         (letrec ((x8398
                                                                                                                   (POSN/C
                                                                                                                    j7438
                                                                                                                    k7439
                                                                                                                    g7436))
                                                                                                                  (x8397
                                                                                                                   (POSN/C
                                                                                                                    j7438
                                                                                                                    k7439
                                                                                                                    g7437)))
                                                                                                           (f7440
                                                                                                            x8398
                                                                                                            x8397))))
                                                                                                 (boolean?/c
                                                                                                  j7438
                                                                                                  k7439
                                                                                                  x8396))))
                                                                                       g8395))))
                                                                           g8394))
                                                                       xj7434
                                                                       xk7435
                                                                       posn=?)))
                                                              g8393)))
                                                         (x8387
                                                          (letrec ((x8388
                                                                    (letrec ((x8391
                                                                              (input))
                                                                             (x8389
                                                                              (letrec ((x8390
                                                                                        (input)))
                                                                                (cons
                                                                                 x8390
                                                                                 '()))))
                                                                      (cons
                                                                       x8391
                                                                       x8389))))
                                                            (cons
                                                             'posn
                                                             x8388)))
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
                                                            (cons
                                                             'posn
                                                             x8383))))
                                                  (x8392 x8387 x8382))
                                                (letrec ((xj7441 (loc 'module))
                                                         (xk7442
                                                          (loc 'importer)))
                                                  (letrec ((g8399
                                                            (WORLD/C
                                                             xj7441
                                                             xk7442
                                                             WORLD)))
                                                    g8399))
                                                (letrec ((xj7443 (loc 'module))
                                                         (xk7444
                                                          (loc 'importer)))
                                                  (letrec ((g8400
                                                            (image/c
                                                             xj7443
                                                             xk7444
                                                             BACKGROUND)))
                                                    g8400))
                                                (letrec ((xj7445 (loc 'module))
                                                         (xk7446
                                                          (loc 'importer)))
                                                  (letrec ((g8401
                                                            (image/c
                                                             xj7445
                                                             xk7446
                                                             FOOD-IMAGE)))
                                                    g8401))
                                                (letrec ((xj7447 (loc 'module))
                                                         (xk7448
                                                          (loc 'importer)))
                                                  (letrec ((g8402
                                                            (image/c
                                                             xj7447
                                                             xk7448
                                                             SEGMENT-IMAGE)))
                                                    g8402))
                                                (letrec ((xj7449 (loc 'module))
                                                         (xk7450
                                                          (loc 'importer)))
                                                  (letrec ((g8403
                                                            (real?/c
                                                             xj7449
                                                             xk7450
                                                             GRID-SIZE)))
                                                    g8403))
                                                (letrec ((xj7451 (loc 'module))
                                                         (xk7452
                                                          (loc 'importer)))
                                                  (letrec ((g8404
                                                            (real?/c
                                                             xj7451
                                                             xk7452
                                                             BOARD-HEIGHT-PIXELS)))
                                                    g8404))
                                                (letrec ((xj7453 (loc 'module))
                                                         (xk7454
                                                          (loc 'importer)))
                                                  (letrec ((g8405
                                                            (real?/c
                                                             xj7453
                                                             xk7454
                                                             BOARD-WIDTH)))
                                                    g8405))
                                                (letrec ((xj7455 (loc 'module))
                                                         (xk7456
                                                          (loc 'importer)))
                                                  (letrec ((g8406
                                                            (real?/c
                                                             xj7455
                                                             xk7456
                                                             BOARD-HEIGHT)))
                                                    g8406))
                                                (letrec ((x8412
                                                          (letrec ((xj7457
                                                                    (loc
                                                                     'module))
                                                                   (xk7458
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8413
                                                                      ((lambda (j7460
                                                                                k7461
                                                                                f7462)
                                                                         (letrec ((g8414
                                                                                   (lambda (g7459)
                                                                                     (letrec ((g8415
                                                                                               (letrec ((x8416
                                                                                                         (letrec ((x8417
                                                                                                                   (SNAKE/C
                                                                                                                    j7460
                                                                                                                    k7461
                                                                                                                    g7459)))
                                                                                                           (f7462
                                                                                                            x8417))))
                                                                                                 (boolean?/c
                                                                                                  j7460
                                                                                                  k7461
                                                                                                  x8416))))
                                                                                       g8415))))
                                                                           g8414))
                                                                       xj7457
                                                                       xk7458
                                                                       snake-wall-collide?)))
                                                              g8413)))
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
                                                            (cons
                                                             'snake
                                                             x8408))))
                                                  (x8412 x8407))
                                                (letrec ((x8423
                                                          (letrec ((xj7463
                                                                    (loc
                                                                     'module))
                                                                   (xk7464
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8424
                                                                      ((lambda (j7466
                                                                                k7467
                                                                                f7468)
                                                                         (letrec ((g8425
                                                                                   (lambda (g7465)
                                                                                     (letrec ((g8426
                                                                                               (letrec ((x8427
                                                                                                         (letrec ((x8428
                                                                                                                   (SNAKE/C
                                                                                                                    j7466
                                                                                                                    k7467
                                                                                                                    g7465)))
                                                                                                           (f7468
                                                                                                            x8428))))
                                                                                                 (boolean?/c
                                                                                                  j7466
                                                                                                  k7467
                                                                                                  x8427))))
                                                                                       g8426))))
                                                                           g8425))
                                                                       xj7463
                                                                       xk7464
                                                                       snake-self-collide?)))
                                                              g8424)))
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
                                                            (cons
                                                             'snake
                                                             x8419))))
                                                  (x8423 x8418))
                                                (letrec ((x8430
                                                          (letrec ((xj7469
                                                                    (loc
                                                                     'module))
                                                                   (xk7470
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8431
                                                                      ((lambda (j7472
                                                                                k7473
                                                                                f7474)
                                                                         (letrec ((g8432
                                                                                   (lambda (g7471)
                                                                                     (letrec ((g8433
                                                                                               (letrec ((x8438
                                                                                                         (listof
                                                                                                          POSN/C))
                                                                                                        (x8434
                                                                                                         (letrec ((x8435
                                                                                                                   (letrec ((x8436
                                                                                                                             (letrec ((x8437
                                                                                                                                       (listof
                                                                                                                                        POSN/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x8437))))
                                                                                                                     (x8436
                                                                                                                      j7472
                                                                                                                      k7473
                                                                                                                      g7471))))
                                                                                                           (f7474
                                                                                                            x8435))))
                                                                                                 (x8438
                                                                                                  j7472
                                                                                                  k7473
                                                                                                  x8434))))
                                                                                       g8433))))
                                                                           g8432))
                                                                       xj7469
                                                                       xk7470
                                                                       cut-tail)))
                                                              g8431)))
                                                         (x8429 (input)))
                                                  (x8430 x8429))
                                                (letrec ((x8444
                                                          (letrec ((xj7475
                                                                    (loc
                                                                     'module))
                                                                   (xk7476
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8445
                                                                      ((lambda (j7478
                                                                                k7479
                                                                                f7480)
                                                                         (letrec ((g8446
                                                                                   (lambda (g7477)
                                                                                     (letrec ((g8447
                                                                                               (letrec ((x8448
                                                                                                         (letrec ((x8449
                                                                                                                   (SNAKE/C
                                                                                                                    j7478
                                                                                                                    k7479
                                                                                                                    g7477)))
                                                                                                           (f7480
                                                                                                            x8449))))
                                                                                                 (SNAKE/C
                                                                                                  j7478
                                                                                                  k7479
                                                                                                  x8448))))
                                                                                       g8447))))
                                                                           g8446))
                                                                       xj7475
                                                                       xk7476
                                                                       snake-slither)))
                                                              g8445)))
                                                         (x8439
                                                          (letrec ((x8440
                                                                    (letrec ((x8443
                                                                              (input))
                                                                             (x8441
                                                                              (letrec ((x8442
                                                                                        (input)))
                                                                                (cons
                                                                                 x8442
                                                                                 '()))))
                                                                      (cons
                                                                       x8443
                                                                       x8441))))
                                                            (cons
                                                             'snake
                                                             x8440))))
                                                  (x8444 x8439))
                                                (letrec ((x8455
                                                          (letrec ((xj7481
                                                                    (loc
                                                                     'module))
                                                                   (xk7482
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8456
                                                                      ((lambda (j7484
                                                                                k7485
                                                                                f7486)
                                                                         (letrec ((g8457
                                                                                   (lambda (g7483)
                                                                                     (letrec ((g8458
                                                                                               (letrec ((x8459
                                                                                                         (letrec ((x8460
                                                                                                                   (SNAKE/C
                                                                                                                    j7484
                                                                                                                    k7485
                                                                                                                    g7483)))
                                                                                                           (f7486
                                                                                                            x8460))))
                                                                                                 (SNAKE/C
                                                                                                  j7484
                                                                                                  k7485
                                                                                                  x8459))))
                                                                                       g8458))))
                                                                           g8457))
                                                                       xj7481
                                                                       xk7482
                                                                       snake-grow)))
                                                              g8456)))
                                                         (x8450
                                                          (letrec ((x8451
                                                                    (letrec ((x8454
                                                                              (input))
                                                                             (x8452
                                                                              (letrec ((x8453
                                                                                        (input)))
                                                                                (cons
                                                                                 x8453
                                                                                 '()))))
                                                                      (cons
                                                                       x8454
                                                                       x8452))))
                                                            (cons
                                                             'snake
                                                             x8451))))
                                                  (x8455 x8450))
                                                (letrec ((x8475
                                                          (letrec ((xj7487
                                                                    (loc
                                                                     'module))
                                                                   (xk7488
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8476
                                                                      ((lambda (j7491
                                                                                k7492
                                                                                f7493)
                                                                         (letrec ((g8477
                                                                                   (lambda (g7489
                                                                                            g7490)
                                                                                     (letrec ((g8478
                                                                                               (letrec ((x8479
                                                                                                         (letrec ((x8481
                                                                                                                   (WORLD/C
                                                                                                                    j7491
                                                                                                                    k7492
                                                                                                                    g7489))
                                                                                                                  (x8480
                                                                                                                   (DIR/C
                                                                                                                    j7491
                                                                                                                    k7492
                                                                                                                    g7490)))
                                                                                                           (f7493
                                                                                                            x8481
                                                                                                            x8480))))
                                                                                                 (WORLD/C
                                                                                                  j7491
                                                                                                  k7492
                                                                                                  x8479))))
                                                                                       g8478))))
                                                                           g8477))
                                                                       xj7487
                                                                       xk7488
                                                                       world-change-dir)))
                                                              g8476)))
                                                         (x8462
                                                          (letrec ((x8463
                                                                    (letrec ((x8470
                                                                              (letrec ((x8471
                                                                                        (letrec ((x8474
                                                                                                  (input))
                                                                                                 (x8472
                                                                                                  (letrec ((x8473
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8473
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8474
                                                                                           x8472))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8471)))
                                                                             (x8464
                                                                              (letrec ((x8465
                                                                                        (letrec ((x8466
                                                                                                  (letrec ((x8469
                                                                                                            (input))
                                                                                                           (x8467
                                                                                                            (letrec ((x8468
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8468
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8469
                                                                                                     x8467))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8466))))
                                                                                (cons
                                                                                 x8465
                                                                                 '()))))
                                                                      (cons
                                                                       x8470
                                                                       x8464))))
                                                            (cons
                                                             'world
                                                             x8463)))
                                                         (x8461 (input)))
                                                  (x8475 x8462 x8461))
                                                (letrec ((x8495
                                                          (letrec ((xj7494
                                                                    (loc
                                                                     'module))
                                                                   (xk7495
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8496
                                                                      ((lambda (j7497
                                                                                k7498
                                                                                f7499)
                                                                         (letrec ((g8497
                                                                                   (lambda (g7496)
                                                                                     (letrec ((g8498
                                                                                               (letrec ((x8499
                                                                                                         (letrec ((x8500
                                                                                                                   (WORLD/C
                                                                                                                    j7497
                                                                                                                    k7498
                                                                                                                    g7496)))
                                                                                                           (f7499
                                                                                                            x8500))))
                                                                                                 (WORLD/C
                                                                                                  j7497
                                                                                                  k7498
                                                                                                  x8499))))
                                                                                       g8498))))
                                                                           g8497))
                                                                       xj7494
                                                                       xk7495
                                                                       world->world)))
                                                              g8496)))
                                                         (x8482
                                                          (letrec ((x8483
                                                                    (letrec ((x8490
                                                                              (letrec ((x8491
                                                                                        (letrec ((x8494
                                                                                                  (input))
                                                                                                 (x8492
                                                                                                  (letrec ((x8493
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8493
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8494
                                                                                           x8492))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8491)))
                                                                             (x8484
                                                                              (letrec ((x8485
                                                                                        (letrec ((x8486
                                                                                                  (letrec ((x8489
                                                                                                            (input))
                                                                                                           (x8487
                                                                                                            (letrec ((x8488
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8488
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8489
                                                                                                     x8487))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8486))))
                                                                                (cons
                                                                                 x8485
                                                                                 '()))))
                                                                      (cons
                                                                       x8490
                                                                       x8484))))
                                                            (cons
                                                             'world
                                                             x8483))))
                                                  (x8495 x8482))
                                                (letrec ((x8515
                                                          (letrec ((xj7500
                                                                    (loc
                                                                     'module))
                                                                   (xk7501
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8516
                                                                      ((lambda (j7504
                                                                                k7505
                                                                                f7506)
                                                                         (letrec ((g8517
                                                                                   (lambda (g7502
                                                                                            g7503)
                                                                                     (letrec ((g8518
                                                                                               (letrec ((x8519
                                                                                                         (letrec ((x8521
                                                                                                                   (WORLD/C
                                                                                                                    j7504
                                                                                                                    k7505
                                                                                                                    g7502))
                                                                                                                  (x8520
                                                                                                                   (string?/c
                                                                                                                    j7504
                                                                                                                    k7505
                                                                                                                    g7503)))
                                                                                                           (f7506
                                                                                                            x8521
                                                                                                            x8520))))
                                                                                                 (WORLD/C
                                                                                                  j7504
                                                                                                  k7505
                                                                                                  x8519))))
                                                                                       g8518))))
                                                                           g8517))
                                                                       xj7500
                                                                       xk7501
                                                                       handle-key)))
                                                              g8516)))
                                                         (x8502
                                                          (letrec ((x8503
                                                                    (letrec ((x8510
                                                                              (letrec ((x8511
                                                                                        (letrec ((x8514
                                                                                                  (input))
                                                                                                 (x8512
                                                                                                  (letrec ((x8513
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8513
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8514
                                                                                           x8512))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8511)))
                                                                             (x8504
                                                                              (letrec ((x8505
                                                                                        (letrec ((x8506
                                                                                                  (letrec ((x8509
                                                                                                            (input))
                                                                                                           (x8507
                                                                                                            (letrec ((x8508
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8508
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8509
                                                                                                     x8507))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8506))))
                                                                                (cons
                                                                                 x8505
                                                                                 '()))))
                                                                      (cons
                                                                       x8510
                                                                       x8504))))
                                                            (cons
                                                             'world
                                                             x8503)))
                                                         (x8501 (input)))
                                                  (x8515 x8502 x8501))
                                                (letrec ((x8535
                                                          (letrec ((xj7507
                                                                    (loc
                                                                     'module))
                                                                   (xk7508
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8536
                                                                      ((lambda (j7510
                                                                                k7511
                                                                                f7512)
                                                                         (letrec ((g8537
                                                                                   (lambda (g7509)
                                                                                     (letrec ((g8538
                                                                                               (letrec ((x8539
                                                                                                         (letrec ((x8540
                                                                                                                   (WORLD/C
                                                                                                                    j7510
                                                                                                                    k7511
                                                                                                                    g7509)))
                                                                                                           (f7512
                                                                                                            x8540))))
                                                                                                 (boolean?/c
                                                                                                  j7510
                                                                                                  k7511
                                                                                                  x8539))))
                                                                                       g8538))))
                                                                           g8537))
                                                                       xj7507
                                                                       xk7508
                                                                       game-over?)))
                                                              g8536)))
                                                         (x8522
                                                          (letrec ((x8523
                                                                    (letrec ((x8530
                                                                              (letrec ((x8531
                                                                                        (letrec ((x8534
                                                                                                  (input))
                                                                                                 (x8532
                                                                                                  (letrec ((x8533
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8533
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8534
                                                                                           x8532))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8531)))
                                                                             (x8524
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
                                                                                           'posn
                                                                                           x8526))))
                                                                                (cons
                                                                                 x8525
                                                                                 '()))))
                                                                      (cons
                                                                       x8530
                                                                       x8524))))
                                                            (cons
                                                             'world
                                                             x8523))))
                                                  (x8535 x8522))
                                                (letrec ((x8554
                                                          (letrec ((xj7513
                                                                    (loc
                                                                     'module))
                                                                   (xk7514
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8555
                                                                      ((lambda (j7516
                                                                                k7517
                                                                                f7518)
                                                                         (letrec ((g8556
                                                                                   (lambda (g7515)
                                                                                     (letrec ((g8557
                                                                                               (letrec ((x8558
                                                                                                         (letrec ((x8559
                                                                                                                   (WORLD/C
                                                                                                                    j7516
                                                                                                                    k7517
                                                                                                                    g7515)))
                                                                                                           (f7518
                                                                                                            x8559))))
                                                                                                 (image/c
                                                                                                  j7516
                                                                                                  k7517
                                                                                                  x8558))))
                                                                                       g8557))))
                                                                           g8556))
                                                                       xj7513
                                                                       xk7514
                                                                       world->scene)))
                                                              g8555)))
                                                         (x8541
                                                          (letrec ((x8542
                                                                    (letrec ((x8549
                                                                              (letrec ((x8550
                                                                                        (letrec ((x8553
                                                                                                  (input))
                                                                                                 (x8551
                                                                                                  (letrec ((x8552
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8552
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8553
                                                                                           x8551))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8550)))
                                                                             (x8543
                                                                              (letrec ((x8544
                                                                                        (letrec ((x8545
                                                                                                  (letrec ((x8548
                                                                                                            (input))
                                                                                                           (x8546
                                                                                                            (letrec ((x8547
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8547
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8548
                                                                                                     x8546))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8545))))
                                                                                (cons
                                                                                 x8544
                                                                                 '()))))
                                                                      (cons
                                                                       x8549
                                                                       x8543))))
                                                            (cons
                                                             'world
                                                             x8542))))
                                                  (x8554 x8541))
                                                (letrec ((x8566
                                                          (letrec ((xj7519
                                                                    (loc
                                                                     'module))
                                                                   (xk7520
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8567
                                                                      ((lambda (j7523
                                                                                k7524
                                                                                f7525)
                                                                         (letrec ((g8568
                                                                                   (lambda (g7521
                                                                                            g7522)
                                                                                     (letrec ((g8569
                                                                                               (letrec ((x8570
                                                                                                         (letrec ((x8572
                                                                                                                   (POSN/C
                                                                                                                    j7523
                                                                                                                    k7524
                                                                                                                    g7521))
                                                                                                                  (x8571
                                                                                                                   (image/c
                                                                                                                    j7523
                                                                                                                    k7524
                                                                                                                    g7522)))
                                                                                                           (f7525
                                                                                                            x8572
                                                                                                            x8571))))
                                                                                                 (image/c
                                                                                                  j7523
                                                                                                  k7524
                                                                                                  x8570))))
                                                                                       g8569))))
                                                                           g8568))
                                                                       xj7519
                                                                       xk7520
                                                                       food+scene)))
                                                              g8567)))
                                                         (x8561
                                                          (letrec ((x8562
                                                                    (letrec ((x8565
                                                                              (input))
                                                                             (x8563
                                                                              (letrec ((x8564
                                                                                        (input)))
                                                                                (cons
                                                                                 x8564
                                                                                 '()))))
                                                                      (cons
                                                                       x8565
                                                                       x8563))))
                                                            (cons
                                                             'posn
                                                             x8562)))
                                                         (x8560
                                                          (cons 'image '())))
                                                  (x8566 x8561 x8560))
                                                (letrec ((x8577
                                                          (letrec ((xj7526
                                                                    (loc
                                                                     'module))
                                                                   (xk7527
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8578
                                                                      ((lambda (j7532
                                                                                k7533
                                                                                f7534)
                                                                         (letrec ((g8579
                                                                                   (lambda (g7528
                                                                                            g7529
                                                                                            g7530
                                                                                            g7531)
                                                                                     (letrec ((g8580
                                                                                               (letrec ((x8581
                                                                                                         (letrec ((x8585
                                                                                                                   (image/c
                                                                                                                    j7532
                                                                                                                    k7533
                                                                                                                    g7528))
                                                                                                                  (x8584
                                                                                                                   (real?/c
                                                                                                                    j7532
                                                                                                                    k7533
                                                                                                                    g7529))
                                                                                                                  (x8583
                                                                                                                   (real?/c
                                                                                                                    j7532
                                                                                                                    k7533
                                                                                                                    g7530))
                                                                                                                  (x8582
                                                                                                                   (image/c
                                                                                                                    j7532
                                                                                                                    k7533
                                                                                                                    g7531)))
                                                                                                           (f7534
                                                                                                            x8585
                                                                                                            x8584
                                                                                                            x8583
                                                                                                            x8582))))
                                                                                                 (image/c
                                                                                                  j7532
                                                                                                  k7533
                                                                                                  x8581))))
                                                                                       g8580))))
                                                                           g8579))
                                                                       xj7526
                                                                       xk7527
                                                                       place-image-on-grid)))
                                                              g8578)))
                                                         (x8576
                                                          (cons 'image '()))
                                                         (x8575 (input))
                                                         (x8574 (input))
                                                         (x8573
                                                          (cons 'image '())))
                                                  (x8577
                                                   x8576
                                                   x8575
                                                   x8574
                                                   x8573))
                                                (letrec ((x8592
                                                          (letrec ((xj7535
                                                                    (loc
                                                                     'module))
                                                                   (xk7536
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8593
                                                                      ((lambda (j7539
                                                                                k7540
                                                                                f7541)
                                                                         (letrec ((g8594
                                                                                   (lambda (g7537
                                                                                            g7538)
                                                                                     (letrec ((g8595
                                                                                               (letrec ((x8596
                                                                                                         (letrec ((x8598
                                                                                                                   (SNAKE/C
                                                                                                                    j7539
                                                                                                                    k7540
                                                                                                                    g7537))
                                                                                                                  (x8597
                                                                                                                   (image/c
                                                                                                                    j7539
                                                                                                                    k7540
                                                                                                                    g7538)))
                                                                                                           (f7541
                                                                                                            x8598
                                                                                                            x8597))))
                                                                                                 (image/c
                                                                                                  j7539
                                                                                                  k7540
                                                                                                  x8596))))
                                                                                       g8595))))
                                                                           g8594))
                                                                       xj7535
                                                                       xk7536
                                                                       snake+scene)))
                                                              g8593)))
                                                         (x8587
                                                          (letrec ((x8588
                                                                    (letrec ((x8591
                                                                              (input))
                                                                             (x8589
                                                                              (letrec ((x8590
                                                                                        (input)))
                                                                                (cons
                                                                                 x8590
                                                                                 '()))))
                                                                      (cons
                                                                       x8591
                                                                       x8589))))
                                                            (cons
                                                             'snake
                                                             x8588)))
                                                         (x8586
                                                          (cons 'image '())))
                                                  (x8592 x8587 x8586))
                                                (letrec ((x8601
                                                          (letrec ((xj7542
                                                                    (loc
                                                                     'module))
                                                                   (xk7543
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8602
                                                                      ((lambda (j7546
                                                                                k7547
                                                                                f7548)
                                                                         (letrec ((g8603
                                                                                   (lambda (g7544
                                                                                            g7545)
                                                                                     (letrec ((g8604
                                                                                               (letrec ((x8605
                                                                                                         (letrec ((x8607
                                                                                                                   (letrec ((x8608
                                                                                                                             (listof
                                                                                                                              POSN/C)))
                                                                                                                     (x8608
                                                                                                                      j7546
                                                                                                                      k7547
                                                                                                                      g7544)))
                                                                                                                  (x8606
                                                                                                                   (image/c
                                                                                                                    j7546
                                                                                                                    k7547
                                                                                                                    g7545)))
                                                                                                           (f7548
                                                                                                            x8607
                                                                                                            x8606))))
                                                                                                 (image/c
                                                                                                  j7546
                                                                                                  k7547
                                                                                                  x8605))))
                                                                                       g8604))))
                                                                           g8603))
                                                                       xj7542
                                                                       xk7543
                                                                       segments+scene)))
                                                              g8602)))
                                                         (x8600 (input))
                                                         (x8599
                                                          (cons 'image '())))
                                                  (x8601 x8600 x8599))
                                                (letrec ((x8615
                                                          (letrec ((xj7549
                                                                    (loc
                                                                     'module))
                                                                   (xk7550
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8616
                                                                      ((lambda (j7553
                                                                                k7554
                                                                                f7555)
                                                                         (letrec ((g8617
                                                                                   (lambda (g7551
                                                                                            g7552)
                                                                                     (letrec ((g8618
                                                                                               (letrec ((x8619
                                                                                                         (letrec ((x8621
                                                                                                                   (POSN/C
                                                                                                                    j7553
                                                                                                                    k7554
                                                                                                                    g7551))
                                                                                                                  (x8620
                                                                                                                   (image/c
                                                                                                                    j7553
                                                                                                                    k7554
                                                                                                                    g7552)))
                                                                                                           (f7555
                                                                                                            x8621
                                                                                                            x8620))))
                                                                                                 (image/c
                                                                                                  j7553
                                                                                                  k7554
                                                                                                  x8619))))
                                                                                       g8618))))
                                                                           g8617))
                                                                       xj7549
                                                                       xk7550
                                                                       segment+scene)))
                                                              g8616)))
                                                         (x8610
                                                          (letrec ((x8611
                                                                    (letrec ((x8614
                                                                              (input))
                                                                             (x8612
                                                                              (letrec ((x8613
                                                                                        (input)))
                                                                                (cons
                                                                                 x8613
                                                                                 '()))))
                                                                      (cons
                                                                       x8614
                                                                       x8612))))
                                                            (cons
                                                             'posn
                                                             x8611)))
                                                         (x8609
                                                          (cons 'image '())))
                                                  (x8615 x8610 x8609))))))
                                      g8381))))
                          g7600))))
              g7583)))
    g7582))
