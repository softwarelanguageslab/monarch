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
                                           (/
                                            (letrec ((xj7367 'server)
                                                     (xk7368 'client))
                                              (letrec ((g7725
                                                        ((lambda (j7371
                                                                  k7372
                                                                  f7373)
                                                           (letrec ((g7727
                                                                     (lambda (g7369
                                                                              g7370)
                                                                       (letrec ((g7728
                                                                                 (letrec ((x7729
                                                                                           (letrec ((x7731
                                                                                                     (number?/c
                                                                                                      j7371
                                                                                                      k7372
                                                                                                      g7369))
                                                                                                    (x7730
                                                                                                     (number?/c
                                                                                                      j7371
                                                                                                      k7372
                                                                                                      g7370)))
                                                                                             (f7373
                                                                                              x7731
                                                                                              x7730))))
                                                                                   (number?/c
                                                                                    j7371
                                                                                    k7372
                                                                                    x7729))))
                                                                         g7728))))
                                                             g7727))
                                                         xj7367
                                                         xk7368
                                                         (lambda (a b)
                                                           (letrec ((g7726
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7726)))))
                                                g7725)))
                                           (car
                                            (letrec ((xj7374 'server)
                                                     (xk7375 'client))
                                              (letrec ((g7732
                                                        ((lambda (j7377
                                                                  k7378
                                                                  f7379)
                                                           (letrec ((g7734
                                                                     (lambda (g7376)
                                                                       (letrec ((g7735
                                                                                 (letrec ((x7736
                                                                                           (letrec ((x7737
                                                                                                     (pair?/c
                                                                                                      j7377
                                                                                                      k7378
                                                                                                      g7376)))
                                                                                             (f7379
                                                                                              x7737))))
                                                                                   (any/c
                                                                                    j7377
                                                                                    k7378
                                                                                    x7736))))
                                                                         g7735))))
                                                             g7734))
                                                         xj7374
                                                         xk7375
                                                         (lambda (p)
                                                           (letrec ((g7733
                                                                     (orig-car
                                                                      p)))
                                                             g7733)))))
                                                g7732)))
                                           (cdr
                                            (letrec ((xj7380 'server)
                                                     (xk7381 'client))
                                              (letrec ((g7738
                                                        ((lambda (j7383
                                                                  k7384
                                                                  f7385)
                                                           (letrec ((g7740
                                                                     (lambda (g7382)
                                                                       (letrec ((g7741
                                                                                 (letrec ((x7742
                                                                                           (letrec ((x7743
                                                                                                     (pair?/c
                                                                                                      j7383
                                                                                                      k7384
                                                                                                      g7382)))
                                                                                             (f7385
                                                                                              x7743))))
                                                                                   (any/c
                                                                                    j7383
                                                                                    k7384
                                                                                    x7742))))
                                                                         g7741))))
                                                             g7740))
                                                         xj7380
                                                         xk7381
                                                         (lambda (p)
                                                           (letrec ((g7739
                                                                     (orig-cdr
                                                                      p)))
                                                             g7739)))))
                                                g7738)))
                                           (cons
                                            (letrec ((xj7386 'server)
                                                     (xk7387 'client))
                                              (letrec ((g7744
                                                        ((lambda (j7390
                                                                  k7391
                                                                  f7392)
                                                           (letrec ((g7746
                                                                     (lambda (g7388
                                                                              g7389)
                                                                       (letrec ((g7747
                                                                                 (letrec ((x7748
                                                                                           (letrec ((x7750
                                                                                                     (any/c
                                                                                                      j7390
                                                                                                      k7391
                                                                                                      g7388))
                                                                                                    (x7749
                                                                                                     (any/c
                                                                                                      j7390
                                                                                                      k7391
                                                                                                      g7389)))
                                                                                             (f7392
                                                                                              x7750
                                                                                              x7749))))
                                                                                   (pair?/c
                                                                                    j7390
                                                                                    k7391
                                                                                    x7748))))
                                                                         g7747))))
                                                             g7746))
                                                         xj7386
                                                         xk7387
                                                         (lambda (a b)
                                                           (letrec ((g7745
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7745)))))
                                                g7744)))
                                           (vector-ref
                                            (letrec ((xj7393 'server)
                                                     (xk7394 'client))
                                              (letrec ((g7751
                                                        ((lambda (j7396
                                                                  k7397
                                                                  f7398)
                                                           (letrec ((g7753
                                                                     (lambda (g7395)
                                                                       (letrec ((g7754
                                                                                 (letrec ((x7755
                                                                                           (letrec ((x7756
                                                                                                     (vector?/c
                                                                                                      j7396
                                                                                                      k7397
                                                                                                      g7395)))
                                                                                             (f7398
                                                                                              x7756))))
                                                                                   (integer?/c
                                                                                    j7396
                                                                                    k7397
                                                                                    x7755))))
                                                                         g7754))))
                                                             g7753))
                                                         xj7393
                                                         xk7394
                                                         (lambda (v i)
                                                           (letrec ((g7752
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7752)))))
                                                g7751)))
                                           (vector-set!
                                            (letrec ((xj7399 'server)
                                                     (xk7400 'client))
                                              (letrec ((g7757
                                                        ((lambda (j7403
                                                                  k7404
                                                                  f7405)
                                                           (letrec ((g7759
                                                                     (lambda (g7401
                                                                              g7402)
                                                                       (letrec ((g7760
                                                                                 (letrec ((x7761
                                                                                           (letrec ((x7763
                                                                                                     (vector?/c
                                                                                                      j7403
                                                                                                      k7404
                                                                                                      g7401))
                                                                                                    (x7762
                                                                                                     (integer?/c
                                                                                                      j7403
                                                                                                      k7404
                                                                                                      g7402)))
                                                                                             (f7405
                                                                                              x7763
                                                                                              x7762))))
                                                                                   (any/c
                                                                                    j7403
                                                                                    k7404
                                                                                    x7761))))
                                                                         g7760))))
                                                             g7759))
                                                         xj7399
                                                         xk7400
                                                         (lambda (vec i v)
                                                           (letrec ((g7758
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7758)))))
                                                g7757)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7764
                                                        (letrec ((x7765
                                                                  (letrec ((x7766
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7766))))
                                                          (cdr x7765))))
                                                g7764)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7767
                                                        (letrec ((x7770
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7770)))
                                                       (g7768
                                                        (letrec ((x7771
                                                                  (list? l)))
                                                          (assert x7771)))
                                                       (g7769
                                                        (letrec ((x-cnd7772
                                                                  (null? l)))
                                                          (if x-cnd7772
                                                            '()
                                                            (letrec ((x7775
                                                                      (letrec ((x7776
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7776)))
                                                                     (x7773
                                                                      (letrec ((x7774
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7774))))
                                                              (cons
                                                               x7775
                                                               x7773))))))
                                                g7769)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7777
                                                        (letrec ((x7778
                                                                  (car x)))
                                                          (cdr x7778))))
                                                g7777)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7779
                                                        (letrec ((x7780
                                                                  (letrec ((x7781
                                                                            (letrec ((x7782
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7782))))
                                                                    (cdr
                                                                     x7781))))
                                                          (car x7780))))
                                                g7779)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7783
                                                        (letrec ((x7784
                                                                  (letrec ((x7785
                                                                            (letrec ((x7786
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7786))))
                                                                    (car
                                                                     x7785))))
                                                          (cdr x7784))))
                                                g7783)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7787
                                                        (letrec ((x7790
                                                                  (string?
                                                                   filename)))
                                                          (assert x7790)))
                                                       (g7788
                                                        (letrec ((x7791
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7791)))
                                                       (g7789
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7792
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7793 res))
                                                            g7793))))
                                                g7789)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7794
                                                        (letrec ((x7795
                                                                  (letrec ((x7796
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7796))))
                                                          (car x7795))))
                                                g7794)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7797
                                                        (letrec ((x7798
                                                                  (letrec ((x7799
                                                                            (letrec ((x7800
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7800))))
                                                                    (car
                                                                     x7799))))
                                                          (cdr x7798))))
                                                g7797)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7801
                                                        (letrec ((x7803
                                                                  (list? l)))
                                                          (assert x7803)))
                                                       (g7802
                                                        (letrec ((x-cnd7804
                                                                  (null? l)))
                                                          (if x-cnd7804
                                                            #f
                                                            (letrec ((x-cnd7805
                                                                      (letrec ((x7806
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7806
                                                                         k))))
                                                              (if x-cnd7805
                                                                (car l)
                                                                (letrec ((x7807
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7807))))))))
                                                g7802)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7808
                                                        (letrec ((x7809
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7809))))
                                                g7808)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7810
                                                        (letrec ((x7812
                                                                  (list? l)))
                                                          (assert x7812)))
                                                       (g7811
                                                        (letrec ((x-cnd7813
                                                                  (null? l)))
                                                          (if x-cnd7813
                                                            ""
                                                            (letrec ((x7816
                                                                      (letrec ((x7817
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7817)))
                                                                     (x7814
                                                                      (letrec ((x7815
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7815))))
                                                              (string-append
                                                               x7816
                                                               x7814))))))
                                                g7811)))
                                           (char<=?
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
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7823
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7823))))
                                                g7820)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7824
                                                        (letrec ((x7825
                                                                  (letrec ((x7826
                                                                            (letrec ((x7827
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7827))))
                                                                    (cdr
                                                                     x7826))))
                                                          (cdr x7825))))
                                                g7824)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7828
                                                        (letrec ((x7831
                                                                  (list? l)))
                                                          (assert x7831)))
                                                       (g7829
                                                        (letrec ((x7832
                                                                  (number?)))
                                                          (assert x7832)))
                                                       (g7830
                                                        (letrec ((x-cnd7833
                                                                  (zero? k)))
                                                          (if x-cnd7833
                                                            x
                                                            (letrec ((x7835
                                                                      (cdr x))
                                                                     (x7834
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7835
                                                               x7834))))))
                                                g7830)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7836 '())) g7836)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7837
                                                        (letrec ((x-cnd7838
                                                                  (letrec ((x7839
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7839))))
                                                          (if x-cnd7838
                                                            (letrec ((x7840
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7840))
                                                            #f))))
                                                g7837)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7841
                                                        (letrec ((val7250
                                                                  (letrec ((x7842
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7842
                                                                     9))))
                                                          (letrec ((g7843
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x7844
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7844
                                                                                   10))))
                                                                        (letrec ((g7845
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x7846
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7846
                                                                                       32)))))
                                                                          g7845)))))
                                                            g7843))))
                                                g7841)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7847
                                                        (letrec ((x7848
                                                                  (letrec ((x7849
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7849))))
                                                          (cdr x7848))))
                                                g7847)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7850
                                                        (letrec ((x7852
                                                                  (number? x)))
                                                          (assert x7852)))
                                                       (g7851 (> x 0)))
                                                g7851)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g7853 (bool-top)))
                                                g7853)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7854 #f)) g7854)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7855
                                                        (letrec ((x7856
                                                                  (cdr x)))
                                                          (cdr x7856))))
                                                g7855)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7857
                                                        (letrec ((x7859
                                                                  (number? x)))
                                                          (assert x7859)))
                                                       (g7858
                                                        (letrec ((x-cnd7860
                                                                  (< x 0)))
                                                          (if x-cnd7860
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7858)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7861
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g7862
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd7863
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7863
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7864
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd7865
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7865
                                                                                                  (letrec ((x-cnd7866
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7866
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7867
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd7868
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7868
                                                                                                                (letrec ((x-cnd7869
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7869
                                                                                                                    (letrec ((x-cnd7870
                                                                                                                              (letrec ((x7872
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7871
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7872
                                                                                                                                 x7871))))
                                                                                                                      (if x-cnd7870
                                                                                                                        (letrec ((x7874
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7873
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7874
                                                                                                                           x7873))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7875
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd7876
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7876
                                                                                                                    (letrec ((x-cnd7877
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7877
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7878
                                                                                                                                    (letrec ((x-cnd7879
                                                                                                                                              (letrec ((x7880
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7880
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7879
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7881
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7882
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd7883
                                                                                                                                                                                      (letrec ((x7885
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7884
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7885
                                                                                                                                                                                         x7884))))
                                                                                                                                                                              (if x-cnd7883
                                                                                                                                                                                (letrec ((x7886
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7886))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7882))))
                                                                                                                                                      g7881))))
                                                                                                                                          (letrec ((g7887
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7887))
                                                                                                                                        #f))))
                                                                                                                            g7878))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7875)))))
                                                                                        g7867)))))
                                                                          g7864)))))
                                                            g7862))))
                                                g7861)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7888
                                                        (letrec ((x7889
                                                                  (letrec ((x7890
                                                                            (letrec ((x7891
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7891))))
                                                                    (car
                                                                     x7890))))
                                                          (cdr x7889))))
                                                g7888)))
                                           (caaddr
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
                                                          (car x7893))))
                                                g7892)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7896 (eq? x y)))
                                                g7896)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7897
                                                        (letrec ((x7900
                                                                  (string?
                                                                   filename)))
                                                          (assert x7900)))
                                                       (g7898
                                                        (letrec ((x7901
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7901)))
                                                       (g7899
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7902
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7903 res))
                                                            g7903))))
                                                g7899)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7904 (cons x '())))
                                                g7904)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7905
                                                        (letrec ((x7908
                                                                  (char? c1)))
                                                          (assert x7908)))
                                                       (g7906
                                                        (letrec ((x7909
                                                                  (char? c2)))
                                                          (assert x7909)))
                                                       (g7907
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7910
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7910))))
                                                g7907)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7911
                                                        (letrec ((x7912
                                                                  (letrec ((x7913
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7913))))
                                                          (cdr x7912))))
                                                g7911)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7914
                                                        (letrec ((x7915
                                                                  (letrec ((x7916
                                                                            (letrec ((x7917
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7917))))
                                                                    (car
                                                                     x7916))))
                                                          (cdr x7915))))
                                                g7914)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7918
                                                        (letrec ((x7919
                                                                  (letrec ((x7920
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7920))))
                                                          (car x7919))))
                                                g7918)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7921
                                                        (letrec ((x7922
                                                                  (letrec ((x7923
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7923))))
                                                          (car x7922))))
                                                g7921)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7924
                                                        (letrec ((x7927
                                                                  (char? c1)))
                                                          (assert x7927)))
                                                       (g7925
                                                        (letrec ((x7928
                                                                  (char? c2)))
                                                          (assert x7928)))
                                                       (g7926
                                                        (letrec ((x7929
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7929))))
                                                g7926)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7930
                                                        (letrec ((x7931
                                                                  (letrec ((x7932
                                                                            (letrec ((x7933
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7933))))
                                                                    (car
                                                                     x7932))))
                                                          (car x7931))))
                                                g7930)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7934
                                                        (letrec ((x7936
                                                                  (number? x)))
                                                          (assert x7936)))
                                                       (g7935 (< x 0)))
                                                g7935)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7937 (memq e l)))
                                                g7937)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7938
                                                        (letrec ((x7939
                                                                  (letrec ((x7940
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7940))))
                                                          (car x7939))))
                                                g7938)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7941 '())) g7941)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7942
                                                        (letrec ((x7944
                                                                  (list? l)))
                                                          (assert x7944)))
                                                       (g7943
                                                        (letrec ((x-cnd7945
                                                                  (null? l)))
                                                          (if x-cnd7945
                                                            '()
                                                            (letrec ((x7948
                                                                      (letrec ((x7949
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7949)))
                                                                     (x7946
                                                                      (letrec ((x7947
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7947))))
                                                              (append
                                                               x7948
                                                               x7946))))))
                                                g7943)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7950
                                                        (letrec ((x7951
                                                                  (letrec ((x7952
                                                                            (letrec ((x7953
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7953))))
                                                                    (car
                                                                     x7952))))
                                                          (car x7951))))
                                                g7950)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7954
                                                        (letrec ((x7955
                                                                  (letrec ((x7956
                                                                            (letrec ((x7957
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7957))))
                                                                    (cdr
                                                                     x7956))))
                                                          (cdr x7955))))
                                                g7954)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7958
                                                        (letrec ((x7960
                                                                  (number? x)))
                                                          (assert x7960)))
                                                       (g7959
                                                        (letrec ((x7961
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7961))))
                                                g7959)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7962
                                                        (letrec ((x7963
                                                                  (letrec ((x7964
                                                                            (letrec ((x7965
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7965))))
                                                                    (car
                                                                     x7964))))
                                                          (car x7963))))
                                                g7962)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7966
                                                        (letrec ((x7969
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7969)))
                                                       (g7967
                                                        (letrec ((x7970
                                                                  (list?
                                                                   args)))
                                                          (assert x7970)))
                                                       (g7968
                                                        (letrec ((x-cnd7971
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7971
                                                            (letrec ((g7972
                                                                      (proc)))
                                                              g7972)
                                                            (letrec ((x-cnd7973
                                                                      (letrec ((x7974
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7974))))
                                                              (if x-cnd7973
                                                                (letrec ((g7975
                                                                          (letrec ((x7976
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7976))))
                                                                  g7975)
                                                                (letrec ((x-cnd7977
                                                                          (letrec ((x7978
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7978))))
                                                                  (if x-cnd7977
                                                                    (letrec ((g7979
                                                                              (letrec ((x7981
                                                                                        (car
                                                                                         args))
                                                                                       (x7980
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7981
                                                                                 x7980))))
                                                                      g7979)
                                                                    (letrec ((x-cnd7982
                                                                              (letrec ((x7983
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7983))))
                                                                      (if x-cnd7982
                                                                        (letrec ((g7984
                                                                                  (letrec ((x7987
                                                                                            (car
                                                                                             args))
                                                                                           (x7986
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7985
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7987
                                                                                     x7986
                                                                                     x7985))))
                                                                          g7984)
                                                                        (letrec ((x-cnd7988
                                                                                  (letrec ((x7989
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7989))))
                                                                          (if x-cnd7988
                                                                            (letrec ((g7990
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
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7994
                                                                                         x7993
                                                                                         x7992
                                                                                         x7991))))
                                                                              g7990)
                                                                            (letrec ((x-cnd7995
                                                                                      (letrec ((x7996
                                                                                                (letrec ((x7997
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7997))))
                                                                                        (null?
                                                                                         x7996))))
                                                                              (if x-cnd7995
                                                                                (letrec ((g7998
                                                                                          (letrec ((x8004
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8003
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8002
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8001
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7999
                                                                                                    (letrec ((x8000
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8000))))
                                                                                            (proc
                                                                                             x8004
                                                                                             x8003
                                                                                             x8002
                                                                                             x8001
                                                                                             x7999))))
                                                                                  g7998)
                                                                                (letrec ((x-cnd8005
                                                                                          (letrec ((x8006
                                                                                                    (letrec ((x8007
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8007))))
                                                                                            (null?
                                                                                             x8006))))
                                                                                  (if x-cnd8005
                                                                                    (letrec ((g8008
                                                                                              (letrec ((x8016
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8015
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8014
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8013
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8011
                                                                                                        (letrec ((x8012
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8012)))
                                                                                                       (x8009
                                                                                                        (letrec ((x8010
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8010))))
                                                                                                (proc
                                                                                                 x8016
                                                                                                 x8015
                                                                                                 x8014
                                                                                                 x8013
                                                                                                 x8011
                                                                                                 x8009))))
                                                                                      g8008)
                                                                                    (letrec ((x-cnd8017
                                                                                              (letrec ((x8018
                                                                                                        (letrec ((x8019
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8019))))
                                                                                                (null?
                                                                                                 x8018))))
                                                                                      (if x-cnd8017
                                                                                        (letrec ((g8020
                                                                                                  (letrec ((x8030
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8029
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8028
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8027
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8025
                                                                                                            (letrec ((x8026
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8026)))
                                                                                                           (x8023
                                                                                                            (letrec ((x8024
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8024)))
                                                                                                           (x8021
                                                                                                            (letrec ((x8022
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8022))))
                                                                                                    (proc
                                                                                                     x8030
                                                                                                     x8029
                                                                                                     x8028
                                                                                                     x8027
                                                                                                     x8025
                                                                                                     x8023
                                                                                                     x8021))))
                                                                                          g8020)
                                                                                        (letrec ((g8031
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8031)))))))))))))))))))
                                                g7968)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8032
                                                        (letrec ((x8034
                                                                  (list? l)))
                                                          (assert x8034)))
                                                       (g8033
                                                        (letrec ((x-cnd8035
                                                                  (null? l)))
                                                          (if x-cnd8035
                                                            #f
                                                            (letrec ((x-cnd8036
                                                                      (letrec ((x8037
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8037
                                                                         e))))
                                                              (if x-cnd8036
                                                                l
                                                                (letrec ((x8038
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8038))))))))
                                                g8033)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8039
                                                        (letrec ((x8040
                                                                  (letrec ((x8041
                                                                            (letrec ((x8042
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8042))))
                                                                    (cdr
                                                                     x8041))))
                                                          (cdr x8040))))
                                                g8039)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8043
                                                        (letrec ((x8044
                                                                  (letrec ((x8045
                                                                            (letrec ((x8046
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8046))))
                                                                    (cdr
                                                                     x8045))))
                                                          (car x8044))))
                                                g8043)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8047 (random 42)))
                                                g8047)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8048
                                                        (letrec ((x8050
                                                                  (number? x)))
                                                          (assert x8050)))
                                                       (g8049 (= x 0)))
                                                g8049)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8051
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8052
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8052))))
                                                g8051)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8053
                                                        (letrec ((x8054
                                                                  (cdr x)))
                                                          (car x8054))))
                                                g8053)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8055
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd8056
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8056
                                                                      (letrec ((x8057
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8057))
                                                                      #f))))
                                                          (letrec ((g8058
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g8058))))
                                                g8055)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8059
                                                        (letrec ((x8060
                                                                  (letrec ((x8061
                                                                            (letrec ((x8062
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8062))))
                                                                    (cdr
                                                                     x8061))))
                                                          (cdr x8060))))
                                                g8059)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8063
                                                        (letrec ((x-cnd8064
                                                                  (letrec ((x8065
                                                                            #\0))
                                                                    (char<=?
                                                                     x8065
                                                                     c))))
                                                          (if x-cnd8064
                                                            (letrec ((x8066
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8066))
                                                            #f))))
                                                g8063)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8067
                                                        (letrec ((x8069
                                                                  (list? l)))
                                                          (assert x8069)))
                                                       (g8068
                                                        (letrec ((x-cnd8070
                                                                  (null? l)))
                                                          (if x-cnd8070
                                                            #f
                                                            (letrec ((x-cnd8071
                                                                      (letrec ((x8072
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8072
                                                                         k))))
                                                              (if x-cnd8071
                                                                (car l)
                                                                (letrec ((x8073
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8073))))))))
                                                g8068)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8074 (if x #f #t)))
                                                g8074)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8075 (append l1 l2)))
                                                g8075)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8076
                                                        (letrec ((x8078
                                                                  (list? l)))
                                                          (assert x8078)))
                                                       (g8077
                                                        (letrec ((x-cnd8079
                                                                  (null? l)))
                                                          (if x-cnd8079
                                                            #f
                                                            (letrec ((x-cnd8080
                                                                      (letrec ((x8081
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8081
                                                                         e))))
                                                              (if x-cnd8080
                                                                l
                                                                (letrec ((x8082
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8082))))))))
                                                g8077)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8083
                                                        (letrec ((x8084
                                                                  (letrec ((x8085
                                                                            (letrec ((x8086
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8086))))
                                                                    (cdr
                                                                     x8085))))
                                                          (car x8084))))
                                                g8083)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8087
                                                        (letrec ((x8089
                                                                  (list? l)))
                                                          (assert x8089)))
                                                       (g8088
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8090
                                                                              (letrec ((x-cnd8091
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8091
                                                                                  0
                                                                                  (letrec ((x8092
                                                                                            (letrec ((x8093
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8093))))
                                                                                    (+
                                                                                     1
                                                                                     x8092))))))
                                                                      g8090))))
                                                          (letrec ((g8094
                                                                    (rec l)))
                                                            g8094))))
                                                g8088)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8095
                                                        (letrec ((x8098
                                                                  (char? c1)))
                                                          (assert x8098)))
                                                       (g8096
                                                        (letrec ((x8099
                                                                  (char? c2)))
                                                          (assert x8099)))
                                                       (g8097
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8100
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8100))))
                                                g8097)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8101
                                                        (letrec ((x8102
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8102))))
                                                g8101)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8103
                                                        (letrec ((x8104
                                                                  (letrec ((x8105
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8105))))
                                                          (cdr x8104))))
                                                g8103)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8106
                                                        (letrec ((x8108
                                                                  (list? l)))
                                                          (assert x8108)))
                                                       (g8107
                                                        (letrec ((x-cnd8109
                                                                  (null? l)))
                                                          (if x-cnd8109
                                                            #f
                                                            (letrec ((x-cnd8110
                                                                      (letrec ((x8111
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8111
                                                                         k))))
                                                              (if x-cnd8110
                                                                (car l)
                                                                (letrec ((x8112
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8112))))))))
                                                g8107)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8113
                                                        (letrec ((x8114
                                                                  (car x)))
                                                          (car x8114))))
                                                g8113)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8115
                                                        (letrec ((x8118
                                                                  (char? c1)))
                                                          (assert x8118)))
                                                       (g8116
                                                        (letrec ((x8119
                                                                  (char? c2)))
                                                          (assert x8119)))
                                                       (g8117
                                                        (letrec ((x8120
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8120))))
                                                g8117)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8121
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8122
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8122))))
                                                g8121)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8123
                                                        (letrec ((x8126
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8126)))
                                                       (g8124
                                                        (letrec ((x8127
                                                                  (list? l)))
                                                          (assert x8127)))
                                                       (g8125
                                                        (letrec ((x-cnd8128
                                                                  (null? l)))
                                                          (if x-cnd8128
                                                            #t
                                                            (letrec ((x-cnd8129
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8129
                                                                (letrec ((g8130
                                                                          (letrec ((x8132
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8132)))
                                                                         (g8131
                                                                          (letrec ((x8133
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8133))))
                                                                  g8131)
                                                                '()))))))
                                                g8125)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8134
                                                        (letrec ((x8136
                                                                  (number? x)))
                                                          (assert x8136)))
                                                       (g8135
                                                        (letrec ((x-cnd8137
                                                                  (< x 0)))
                                                          (if x-cnd8137
                                                            (- 0 x)
                                                            x))))
                                                g8135)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8138
                                                        (letrec ((x8141
                                                                  (char? c1)))
                                                          (assert x8141)))
                                                       (g8139
                                                        (letrec ((x8142
                                                                  (char? c2)))
                                                          (assert x8142)))
                                                       (g8140
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8143
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8143))))
                                                g8140)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8144
                                                        (letrec ((x8145
                                                                  (letrec ((x8146
                                                                            (letrec ((x8147
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8147))))
                                                                    (cdr
                                                                     x8146))))
                                                          (car x8145))))
                                                g8144)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8148 #f)) g8148)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8149
                                                        (letrec ((x8151
                                                                  (letrec ((x8152
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8152)))
                                                                 (x8150
                                                                  (gcd m n)))
                                                          (/ x8151 x8150))))
                                                g8149)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8153
                                                        (letrec ((x8157
                                                                  (list? l)))
                                                          (assert x8157)))
                                                       (g8154
                                                        (letrec ((x8158
                                                                  (number?
                                                                   index)))
                                                          (assert x8158)))
                                                       (g8155
                                                        (letrec ((x8159
                                                                  (letrec ((x8160
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8160))))
                                                          (assert x8159)))
                                                       (g8156
                                                        (letrec ((x-cnd8161
                                                                  (= index 0)))
                                                          (if x-cnd8161
                                                            (car l)
                                                            (letrec ((x8163
                                                                      (cdr l))
                                                                     (x8162
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8163
                                                               x8162))))))
                                                g8156)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8164
                                                        (letrec ((x-cnd8165
                                                                  (= b 0)))
                                                          (if x-cnd8165
                                                            a
                                                            (letrec ((x8166
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8166))))))
                                                g8164)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8167
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8167)))
                                           (image?
                                            (lambda (image7556)
                                              (letrec ((g8168
                                                        (letrec ((x8169
                                                                  (car
                                                                   image7556)))
                                                          (eq? x8169 'image))))
                                                g8168)))
                                           (image/c
                                            (lambda (j7407 k7408 v7406)
                                              (letrec ((g8170
                                                        (cons image '())))
                                                g8170)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8171 (image)))
                                                g8171)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8172 (image)))
                                                g8172)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8173 (image)))
                                                g8173)))
                                           (posn
                                            (lambda (x7558 y7559)
                                              (letrec ((g8174
                                                        (letrec ((x8175
                                                                  (letrec ((x8176
                                                                            (orig-cons
                                                                             y7559
                                                                             '())))
                                                                    (orig-cons
                                                                     x7558
                                                                     x8176))))
                                                          (orig-cons
                                                           'posn
                                                           x8175))))
                                                g8174)))
                                           (posn?
                                            (lambda (posn7557)
                                              (letrec ((g8177
                                                        (letrec ((x8178
                                                                  (car
                                                                   posn7557)))
                                                          (eq? x8178 'posn))))
                                                g8177)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8179
                                                        (letrec ((x8180
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8180))))
                                                g8179)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8181
                                                        (letrec ((x8182
                                                                  (letrec ((x8183
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8183))))
                                                          (orig-car x8182))))
                                                g8181)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8184
                                                        (letrec ((x-cnd8185
                                                                  (letrec ((x8187
                                                                            (posn-x
                                                                             p1))
                                                                           (x8186
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8187
                                                                     x8186))))
                                                          (if x-cnd8185
                                                            (letrec ((x8189
                                                                      (posn-y
                                                                       p1))
                                                                     (x8188
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8189 x8188))
                                                            #f))))
                                                g8184)))
                                           (snake
                                            (lambda (dir7563 segs7564)
                                              (letrec ((g8190
                                                        (letrec ((x8191
                                                                  (letrec ((x8192
                                                                            (orig-cons
                                                                             segs7564
                                                                             '())))
                                                                    (orig-cons
                                                                     dir7563
                                                                     x8192))))
                                                          (orig-cons
                                                           'snake
                                                           x8191))))
                                                g8190)))
                                           (snake?
                                            (lambda (snake7562)
                                              (letrec ((g8193
                                                        (letrec ((x8194
                                                                  (car
                                                                   snake7562)))
                                                          (eq? x8194 'snake))))
                                                g8193)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g8195
                                                        (letrec ((x8196
                                                                  (orig-cdr
                                                                   snake)))
                                                          (orig-car x8196))))
                                                g8195)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g8197
                                                        (letrec ((x8198
                                                                  (letrec ((x8199
                                                                            (orig-cdr
                                                                             snake)))
                                                                    (orig-cdr
                                                                     x8199))))
                                                          (orig-car x8198))))
                                                g8197)))
                                           (world
                                            (lambda (snake7568 food7569)
                                              (letrec ((g8200
                                                        (letrec ((x8201
                                                                  (letrec ((x8202
                                                                            (orig-cons
                                                                             food7569
                                                                             '())))
                                                                    (orig-cons
                                                                     snake7568
                                                                     x8202))))
                                                          (orig-cons
                                                           'world
                                                           x8201))))
                                                g8200)))
                                           (world?
                                            (lambda (world7567)
                                              (letrec ((g8203
                                                        (letrec ((x8204
                                                                  (car
                                                                   world7567)))
                                                          (eq? x8204 'world))))
                                                g8203)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g8205
                                                        (letrec ((x8206
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8206))))
                                                g8205)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g8207
                                                        (letrec ((x8208
                                                                  (letrec ((x8209
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8209))))
                                                          (orig-car x8208))))
                                                g8207)))
                                           (DIR/C
                                            (lambda (g7413 g7414 g7415)
                                              (letrec ((g8210
                                                        (letrec ((x-cnd8211
                                                                  ((lambda (v7412)
                                                                     (letrec ((g8212
                                                                               (letrec ((x-cnd8213
                                                                                         (eq?
                                                                                          'up
                                                                                          v7412)))
                                                                                 (if x-cnd8213
                                                                                   #t
                                                                                   (letrec ((x-cnd8214
                                                                                             (eq?
                                                                                              'down
                                                                                              v7412)))
                                                                                     (if x-cnd8214
                                                                                       #t
                                                                                       (letrec ((x-cnd8215
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v7412)))
                                                                                         (if x-cnd8215
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v7412)))))))))
                                                                       g8212))
                                                                   g7415)))
                                                          (if x-cnd8211
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
                                                g8210)))
                                           (POSN/C
                                            (lambda (j7417 k7418 v7416)
                                              (letrec ((g8216
                                                        (letrec ((checked7419
                                                                  (letrec ((x8217
                                                                            (letrec ((x8218
                                                                                      (orig-cdr
                                                                                       v7416)))
                                                                              (orig-car
                                                                               x8218))))
                                                                    (real?/c
                                                                     j7417
                                                                     k7418
                                                                     x8217))))
                                                          (letrec ((g8219
                                                                    (letrec ((checked7420
                                                                              (letrec ((x8220
                                                                                        (letrec ((x8221
                                                                                                  (letrec ((x8222
                                                                                                            (orig-cdr
                                                                                                             v7416)))
                                                                                                    (orig-cdr
                                                                                                     x8222))))
                                                                                          (orig-car
                                                                                           x8221))))
                                                                                (real?/c
                                                                                 j7417
                                                                                 k7418
                                                                                 x8220))))
                                                                      (letrec ((g8223
                                                                                (letrec ((x8224
                                                                                          (letrec ((x8225
                                                                                                    (cons
                                                                                                     checked7420
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7419
                                                                                             x8225))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8224))))
                                                                        g8223))))
                                                            g8219))))
                                                g8216)))
                                           (SNAKE/C
                                            (lambda (j7423 k7424 v7422)
                                              (letrec ((g8226
                                                        (letrec ((checked7425
                                                                  (letrec ((x8227
                                                                            (letrec ((x8228
                                                                                      (orig-cdr
                                                                                       v7422)))
                                                                              (orig-car
                                                                               x8228))))
                                                                    (DIR/C
                                                                     j7423
                                                                     k7424
                                                                     x8227))))
                                                          (letrec ((g8229
                                                                    (letrec ((checked7426
                                                                              (letrec ((x8233
                                                                                        (letrec ((x8234
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x8234)))
                                                                                       (x8230
                                                                                        (letrec ((x8231
                                                                                                  (letrec ((x8232
                                                                                                            (orig-cdr
                                                                                                             v7422)))
                                                                                                    (orig-cdr
                                                                                                     x8232))))
                                                                                          (orig-car
                                                                                           x8231))))
                                                                                (x8233
                                                                                 j7423
                                                                                 k7424
                                                                                 x8230))))
                                                                      (letrec ((g8235
                                                                                (letrec ((x8236
                                                                                          (letrec ((x8237
                                                                                                    (cons
                                                                                                     checked7426
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7425
                                                                                             x8237))))
                                                                                  (cons
                                                                                   snake
                                                                                   x8236))))
                                                                        g8235))))
                                                            g8229))))
                                                g8226)))
                                           (WORLD/C
                                            (lambda (j7429 k7430 v7428)
                                              (letrec ((g8238
                                                        (letrec ((checked7431
                                                                  (letrec ((x8239
                                                                            (letrec ((x8240
                                                                                      (orig-cdr
                                                                                       v7428)))
                                                                              (orig-car
                                                                               x8240))))
                                                                    (SNAKE/C
                                                                     j7429
                                                                     k7430
                                                                     x8239))))
                                                          (letrec ((g8241
                                                                    (letrec ((checked7432
                                                                              (letrec ((x8242
                                                                                        (letrec ((x8243
                                                                                                  (letrec ((x8244
                                                                                                            (orig-cdr
                                                                                                             v7428)))
                                                                                                    (orig-cdr
                                                                                                     x8244))))
                                                                                          (orig-car
                                                                                           x8243))))
                                                                                (POSN/C
                                                                                 j7429
                                                                                 k7430
                                                                                 x8242))))
                                                                      (letrec ((g8245
                                                                                (letrec ((x8246
                                                                                          (letrec ((x8247
                                                                                                    (cons
                                                                                                     checked7432
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7431
                                                                                             x8247))))
                                                                                  (cons
                                                                                   world
                                                                                   x8246))))
                                                                        g8245))))
                                                            g8241))))
                                                g8238)))
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
                                            (letrec ((x8249
                                                      (letrec ((x8250
                                                                (letrec ((x8251
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x8251
                                                                   empty))))
                                                        (snake 'right x8250)))
                                                     (x8248 (posn 8 12)))
                                              (world x8249 x8248)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g8252
                                                        (letrec ((x8253
                                                                  (letrec ((x8254
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8254))))
                                                          (head-collide?
                                                           x8253))))
                                                g8252)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g8255
                                                        (letrec ((val7263
                                                                  (letrec ((x8256
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x8256
                                                                     0))))
                                                          (letrec ((g8257
                                                                    (if val7263
                                                                      val7263
                                                                      (letrec ((val7264
                                                                                (letrec ((x8258
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x8258
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g8259
                                                                                  (if val7264
                                                                                    val7264
                                                                                    (letrec ((val7265
                                                                                              (letrec ((x8260
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x8260
                                                                                                 0))))
                                                                                      (letrec ((g8261
                                                                                                (if val7265
                                                                                                  val7265
                                                                                                  (letrec ((x8262
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x8262
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g8261)))))
                                                                          g8259)))))
                                                            g8257))))
                                                g8255)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g8263
                                                        (letrec ((x8266
                                                                  (letrec ((x8267
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8267)))
                                                                 (x8264
                                                                  (letrec ((x8265
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x8265))))
                                                          (segs-self-collide?
                                                           x8266
                                                           x8264))))
                                                g8263)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g8268
                                                        (letrec ((x-cnd8269
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8269
                                                            (letrec ((g8270
                                                                      #f))
                                                              g8270)
                                                            (letrec ((g8271
                                                                      (letrec ((x8274
                                                                                (letrec ((x8275
                                                                                          (car
                                                                                           segs)))
                                                                                  (posn=?
                                                                                   x8275
                                                                                   h)))
                                                                               (x8272
                                                                                (letrec ((x8273
                                                                                          (cdr
                                                                                           segs)))
                                                                                  (segs-self-collide?
                                                                                   h
                                                                                   x8273))))
                                                                        (or x8274
                                                                            x8272))))
                                                              g8271)))))
                                                g8268)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g8276
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g8277
                                                                    (letrec ((x-cnd8278
                                                                              (empty?
                                                                               r)))
                                                                      (if x-cnd8278
                                                                        (letrec ((g8279
                                                                                  empty))
                                                                          g8279)
                                                                        (letrec ((g8280
                                                                                  (letrec ((x8282
                                                                                            (car
                                                                                             segs))
                                                                                           (x8281
                                                                                            (cut-tail
                                                                                             r)))
                                                                                    (cons
                                                                                     x8282
                                                                                     x8281))))
                                                                          g8280)))))
                                                            g8277))))
                                                g8276)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g8283
                                                        (letrec ((x-cnd8284
                                                                  (equal?
                                                                   'right
                                                                   dir)))
                                                          (if x-cnd8284
                                                            (letrec ((g8285
                                                                      (letrec ((x8287
                                                                                (letrec ((x8288
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (add1
                                                                                   x8288)))
                                                                               (x8286
                                                                                (posn-y
                                                                                 seg)))
                                                                        (posn
                                                                         x8287
                                                                         x8286))))
                                                              g8285)
                                                            (letrec ((x-cnd8289
                                                                      (equal?
                                                                       'left
                                                                       dir)))
                                                              (if x-cnd8289
                                                                (letrec ((g8290
                                                                          (letrec ((x8292
                                                                                    (letrec ((x8293
                                                                                              (posn-x
                                                                                               seg)))
                                                                                      (sub1
                                                                                       x8293)))
                                                                                   (x8291
                                                                                    (posn-y
                                                                                     seg)))
                                                                            (posn
                                                                             x8292
                                                                             x8291))))
                                                                  g8290)
                                                                (letrec ((x-cnd8294
                                                                          (equal?
                                                                           'down
                                                                           dir)))
                                                                  (if x-cnd8294
                                                                    (letrec ((g8295
                                                                              (letrec ((x8298
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8296
                                                                                        (letrec ((x8297
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (sub1
                                                                                           x8297))))
                                                                                (posn
                                                                                 x8298
                                                                                 x8296))))
                                                                      g8295)
                                                                    (letrec ((g8299
                                                                              (letrec ((x8302
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8300
                                                                                        (letrec ((x8301
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (add1
                                                                                           x8301))))
                                                                                (posn
                                                                                 x8302
                                                                                 x8300))))
                                                                      g8299)))))))))
                                                g8283)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g8303
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8304
                                                                    (letrec ((x8305
                                                                              (letrec ((x8308
                                                                                        (letrec ((x8309
                                                                                                  (letrec ((x8310
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8310))))
                                                                                          (next-head
                                                                                           x8309
                                                                                           d)))
                                                                                       (x8306
                                                                                        (letrec ((x8307
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x8307))))
                                                                                (cons
                                                                                 x8308
                                                                                 x8306))))
                                                                      (snake
                                                                       d
                                                                       x8305))))
                                                            g8304))))
                                                g8303)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g8311
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8312
                                                                    (letrec ((x8313
                                                                              (letrec ((x8315
                                                                                        (letrec ((x8316
                                                                                                  (letrec ((x8317
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8317))))
                                                                                          (next-head
                                                                                           x8316
                                                                                           d)))
                                                                                       (x8314
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x8315
                                                                                 x8314))))
                                                                      (snake
                                                                       d
                                                                       x8313))))
                                                            g8312))))
                                                g8311)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g8318
                                                        (letrec ((x-cnd8319
                                                                  (eating? w)))
                                                          (if x-cnd8319
                                                            (letrec ((g8320
                                                                      (snake-eat
                                                                       w)))
                                                              g8320)
                                                            (letrec ((g8321
                                                                      (letrec ((x8323
                                                                                (letrec ((x8324
                                                                                          (world-snake
                                                                                           w)))
                                                                                  (snake-slither
                                                                                   x8324)))
                                                                               (x8322
                                                                                (world-food
                                                                                 w)))
                                                                        (world
                                                                         x8323
                                                                         x8322))))
                                                              g8321)))))
                                                g8318)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g8325
                                                        (letrec ((x8329
                                                                  (world-food
                                                                   w))
                                                                 (x8326
                                                                  (letrec ((x8327
                                                                            (letrec ((x8328
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x8328))))
                                                                    (car
                                                                     x8327))))
                                                          (posn=?
                                                           x8329
                                                           x8326))))
                                                g8325)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g8330
                                                        (letrec ((x8331
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x8331))))
                                                g8330)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g8332
                                                        (letrec ((x8334
                                                                  (letrec ((x8335
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x8335
                                                                     dir)))
                                                                 (x8333
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x8334
                                                           x8333))))
                                                g8332)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g8336
                                                        (letrec ((x8340
                                                                  (letrec ((x8341
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x8341)))
                                                                 (x8337
                                                                  (letrec ((x8339
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x8338
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x8339
                                                                     x8338))))
                                                          (world
                                                           x8340
                                                           x8337))))
                                                g8336)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g8342
                                                        (letrec ((x-cnd8343
                                                                  (equal?
                                                                   ke
                                                                   "w")))
                                                          (if x-cnd8343
                                                            (letrec ((g8344
                                                                      (world-change-dir
                                                                       w
                                                                       'up)))
                                                              g8344)
                                                            (letrec ((x-cnd8345
                                                                      (equal?
                                                                       ke
                                                                       "s")))
                                                              (if x-cnd8345
                                                                (letrec ((g8346
                                                                          (world-change-dir
                                                                           w
                                                                           'down)))
                                                                  g8346)
                                                                (letrec ((x-cnd8347
                                                                          (equal?
                                                                           ke
                                                                           "a")))
                                                                  (if x-cnd8347
                                                                    (letrec ((g8348
                                                                              (world-change-dir
                                                                               w
                                                                               'left)))
                                                                      g8348)
                                                                    (letrec ((x-cnd8349
                                                                              (equal?
                                                                               ke
                                                                               "d")))
                                                                      (if x-cnd8349
                                                                        (letrec ((g8350
                                                                                  (world-change-dir
                                                                                   w
                                                                                   'right)))
                                                                          g8350)
                                                                        (letrec ((g8351
                                                                                  w))
                                                                          g8351)))))))))))
                                                g8342)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g8352
                                                        (letrec ((val7266
                                                                  (letrec ((x8353
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x8353))))
                                                          (letrec ((g8354
                                                                    (if val7266
                                                                      val7266
                                                                      (letrec ((x8355
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x8355)))))
                                                            g8354))))
                                                g8352)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g8356
                                                        (letrec ((x8359
                                                                  (world-snake
                                                                   w))
                                                                 (x8357
                                                                  (letrec ((x8358
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x8358
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x8359
                                                           x8357))))
                                                g8356)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g8360
                                                        (letrec ((x8362
                                                                  (posn-x f))
                                                                 (x8361
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x8362
                                                           x8361
                                                           scn))))
                                                g8360)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g8363
                                                        (letrec ((x8366
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x8364
                                                                  (letrec ((x8365
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x8365))))
                                                          (place-image
                                                           img
                                                           x8366
                                                           x8364
                                                           scn))))
                                                g8363)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g8367
                                                        (letrec ((x8368
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x8368
                                                           scn))))
                                                g8367)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g8369
                                                        (letrec ((x-cnd8370
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8370
                                                            (letrec ((g8371
                                                                      scn))
                                                              g8371)
                                                            (letrec ((g8372
                                                                      (letrec ((x8375
                                                                                (cdr
                                                                                 segs))
                                                                               (x8373
                                                                                (letrec ((x8374
                                                                                          (car
                                                                                           segs)))
                                                                                  (segment+scene
                                                                                   x8374
                                                                                   scn))))
                                                                        (segments+scene
                                                                         x8375
                                                                         x8373))))
                                                              g8372)))))
                                                g8369)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g8376
                                                        (letrec ((x8378
                                                                  (posn-x seg))
                                                                 (x8377
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x8378
                                                           x8377
                                                           scn))))
                                                g8376))))
                                    (letrec ((g8379
                                              (parallel
                                               (parallel
                                                (letrec ((x8390
                                                          (letrec ((xj7434
                                                                    (loc
                                                                     'module))
                                                                   (xk7435
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8391
                                                                      ((lambda (j7438
                                                                                k7439
                                                                                f7440)
                                                                         (letrec ((g8392
                                                                                   (lambda (g7436
                                                                                            g7437)
                                                                                     (letrec ((g8393
                                                                                               (letrec ((x8394
                                                                                                         (letrec ((x8396
                                                                                                                   (POSN/C
                                                                                                                    j7438
                                                                                                                    k7439
                                                                                                                    g7436))
                                                                                                                  (x8395
                                                                                                                   (POSN/C
                                                                                                                    j7438
                                                                                                                    k7439
                                                                                                                    g7437)))
                                                                                                           (f7440
                                                                                                            x8396
                                                                                                            x8395))))
                                                                                                 (boolean?/c
                                                                                                  j7438
                                                                                                  k7439
                                                                                                  x8394))))
                                                                                       g8393))))
                                                                           g8392))
                                                                       xj7434
                                                                       xk7435
                                                                       posn=?)))
                                                              g8391)))
                                                         (x8385
                                                          (letrec ((x8386
                                                                    (letrec ((x8389
                                                                              (input))
                                                                             (x8387
                                                                              (letrec ((x8388
                                                                                        (input)))
                                                                                (cons
                                                                                 x8388
                                                                                 '()))))
                                                                      (cons
                                                                       x8389
                                                                       x8387))))
                                                            (cons
                                                             'posn
                                                             x8386)))
                                                         (x8380
                                                          (letrec ((x8381
                                                                    (letrec ((x8384
                                                                              (input))
                                                                             (x8382
                                                                              (letrec ((x8383
                                                                                        (input)))
                                                                                (cons
                                                                                 x8383
                                                                                 '()))))
                                                                      (cons
                                                                       x8384
                                                                       x8382))))
                                                            (cons
                                                             'posn
                                                             x8381))))
                                                  (x8390 x8385 x8380))
                                                (letrec ((xj7441 (loc 'module))
                                                         (xk7442
                                                          (loc 'importer)))
                                                  (letrec ((g8397
                                                            (WORLD/C
                                                             xj7441
                                                             xk7442
                                                             WORLD)))
                                                    g8397))
                                                (letrec ((xj7443 (loc 'module))
                                                         (xk7444
                                                          (loc 'importer)))
                                                  (letrec ((g8398
                                                            (image/c
                                                             xj7443
                                                             xk7444
                                                             BACKGROUND)))
                                                    g8398))
                                                (letrec ((xj7445 (loc 'module))
                                                         (xk7446
                                                          (loc 'importer)))
                                                  (letrec ((g8399
                                                            (image/c
                                                             xj7445
                                                             xk7446
                                                             FOOD-IMAGE)))
                                                    g8399))
                                                (letrec ((xj7447 (loc 'module))
                                                         (xk7448
                                                          (loc 'importer)))
                                                  (letrec ((g8400
                                                            (image/c
                                                             xj7447
                                                             xk7448
                                                             SEGMENT-IMAGE)))
                                                    g8400))
                                                (letrec ((xj7449 (loc 'module))
                                                         (xk7450
                                                          (loc 'importer)))
                                                  (letrec ((g8401
                                                            (real?/c
                                                             xj7449
                                                             xk7450
                                                             GRID-SIZE)))
                                                    g8401))
                                                (letrec ((xj7451 (loc 'module))
                                                         (xk7452
                                                          (loc 'importer)))
                                                  (letrec ((g8402
                                                            (real?/c
                                                             xj7451
                                                             xk7452
                                                             BOARD-HEIGHT-PIXELS)))
                                                    g8402))
                                                (letrec ((xj7453 (loc 'module))
                                                         (xk7454
                                                          (loc 'importer)))
                                                  (letrec ((g8403
                                                            (real?/c
                                                             xj7453
                                                             xk7454
                                                             BOARD-WIDTH)))
                                                    g8403))
                                                (letrec ((xj7455 (loc 'module))
                                                         (xk7456
                                                          (loc 'importer)))
                                                  (letrec ((g8404
                                                            (real?/c
                                                             xj7455
                                                             xk7456
                                                             BOARD-HEIGHT)))
                                                    g8404))
                                                (letrec ((x8410
                                                          (letrec ((xj7457
                                                                    (loc
                                                                     'module))
                                                                   (xk7458
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8411
                                                                      ((lambda (j7460
                                                                                k7461
                                                                                f7462)
                                                                         (letrec ((g8412
                                                                                   (lambda (g7459)
                                                                                     (letrec ((g8413
                                                                                               (letrec ((x8414
                                                                                                         (letrec ((x8415
                                                                                                                   (SNAKE/C
                                                                                                                    j7460
                                                                                                                    k7461
                                                                                                                    g7459)))
                                                                                                           (f7462
                                                                                                            x8415))))
                                                                                                 (boolean?/c
                                                                                                  j7460
                                                                                                  k7461
                                                                                                  x8414))))
                                                                                       g8413))))
                                                                           g8412))
                                                                       xj7457
                                                                       xk7458
                                                                       snake-wall-collide?)))
                                                              g8411)))
                                                         (x8405
                                                          (letrec ((x8406
                                                                    (letrec ((x8409
                                                                              (input))
                                                                             (x8407
                                                                              (letrec ((x8408
                                                                                        (input)))
                                                                                (cons
                                                                                 x8408
                                                                                 '()))))
                                                                      (cons
                                                                       x8409
                                                                       x8407))))
                                                            (cons
                                                             'snake
                                                             x8406))))
                                                  (x8410 x8405))
                                                (letrec ((x8421
                                                          (letrec ((xj7463
                                                                    (loc
                                                                     'module))
                                                                   (xk7464
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8422
                                                                      ((lambda (j7466
                                                                                k7467
                                                                                f7468)
                                                                         (letrec ((g8423
                                                                                   (lambda (g7465)
                                                                                     (letrec ((g8424
                                                                                               (letrec ((x8425
                                                                                                         (letrec ((x8426
                                                                                                                   (SNAKE/C
                                                                                                                    j7466
                                                                                                                    k7467
                                                                                                                    g7465)))
                                                                                                           (f7468
                                                                                                            x8426))))
                                                                                                 (boolean?/c
                                                                                                  j7466
                                                                                                  k7467
                                                                                                  x8425))))
                                                                                       g8424))))
                                                                           g8423))
                                                                       xj7463
                                                                       xk7464
                                                                       snake-self-collide?)))
                                                              g8422)))
                                                         (x8416
                                                          (letrec ((x8417
                                                                    (letrec ((x8420
                                                                              (input))
                                                                             (x8418
                                                                              (letrec ((x8419
                                                                                        (input)))
                                                                                (cons
                                                                                 x8419
                                                                                 '()))))
                                                                      (cons
                                                                       x8420
                                                                       x8418))))
                                                            (cons
                                                             'snake
                                                             x8417))))
                                                  (x8421 x8416))
                                                (letrec ((x8428
                                                          (letrec ((xj7469
                                                                    (loc
                                                                     'module))
                                                                   (xk7470
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8429
                                                                      ((lambda (j7472
                                                                                k7473
                                                                                f7474)
                                                                         (letrec ((g8430
                                                                                   (lambda (g7471)
                                                                                     (letrec ((g8431
                                                                                               (letrec ((x8436
                                                                                                         (listof
                                                                                                          POSN/C))
                                                                                                        (x8432
                                                                                                         (letrec ((x8433
                                                                                                                   (letrec ((x8434
                                                                                                                             (letrec ((x8435
                                                                                                                                       (listof
                                                                                                                                        POSN/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x8435))))
                                                                                                                     (x8434
                                                                                                                      j7472
                                                                                                                      k7473
                                                                                                                      g7471))))
                                                                                                           (f7474
                                                                                                            x8433))))
                                                                                                 (x8436
                                                                                                  j7472
                                                                                                  k7473
                                                                                                  x8432))))
                                                                                       g8431))))
                                                                           g8430))
                                                                       xj7469
                                                                       xk7470
                                                                       cut-tail)))
                                                              g8429)))
                                                         (x8427 (input)))
                                                  (x8428 x8427))
                                                (letrec ((x8442
                                                          (letrec ((xj7475
                                                                    (loc
                                                                     'module))
                                                                   (xk7476
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8443
                                                                      ((lambda (j7478
                                                                                k7479
                                                                                f7480)
                                                                         (letrec ((g8444
                                                                                   (lambda (g7477)
                                                                                     (letrec ((g8445
                                                                                               (letrec ((x8446
                                                                                                         (letrec ((x8447
                                                                                                                   (SNAKE/C
                                                                                                                    j7478
                                                                                                                    k7479
                                                                                                                    g7477)))
                                                                                                           (f7480
                                                                                                            x8447))))
                                                                                                 (SNAKE/C
                                                                                                  j7478
                                                                                                  k7479
                                                                                                  x8446))))
                                                                                       g8445))))
                                                                           g8444))
                                                                       xj7475
                                                                       xk7476
                                                                       snake-slither)))
                                                              g8443)))
                                                         (x8437
                                                          (letrec ((x8438
                                                                    (letrec ((x8441
                                                                              (input))
                                                                             (x8439
                                                                              (letrec ((x8440
                                                                                        (input)))
                                                                                (cons
                                                                                 x8440
                                                                                 '()))))
                                                                      (cons
                                                                       x8441
                                                                       x8439))))
                                                            (cons
                                                             'snake
                                                             x8438))))
                                                  (x8442 x8437))
                                                (letrec ((x8453
                                                          (letrec ((xj7481
                                                                    (loc
                                                                     'module))
                                                                   (xk7482
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8454
                                                                      ((lambda (j7484
                                                                                k7485
                                                                                f7486)
                                                                         (letrec ((g8455
                                                                                   (lambda (g7483)
                                                                                     (letrec ((g8456
                                                                                               (letrec ((x8457
                                                                                                         (letrec ((x8458
                                                                                                                   (SNAKE/C
                                                                                                                    j7484
                                                                                                                    k7485
                                                                                                                    g7483)))
                                                                                                           (f7486
                                                                                                            x8458))))
                                                                                                 (SNAKE/C
                                                                                                  j7484
                                                                                                  k7485
                                                                                                  x8457))))
                                                                                       g8456))))
                                                                           g8455))
                                                                       xj7481
                                                                       xk7482
                                                                       snake-grow)))
                                                              g8454)))
                                                         (x8448
                                                          (letrec ((x8449
                                                                    (letrec ((x8452
                                                                              (input))
                                                                             (x8450
                                                                              (letrec ((x8451
                                                                                        (input)))
                                                                                (cons
                                                                                 x8451
                                                                                 '()))))
                                                                      (cons
                                                                       x8452
                                                                       x8450))))
                                                            (cons
                                                             'snake
                                                             x8449))))
                                                  (x8453 x8448))
                                                (letrec ((x8473
                                                          (letrec ((xj7487
                                                                    (loc
                                                                     'module))
                                                                   (xk7488
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8474
                                                                      ((lambda (j7491
                                                                                k7492
                                                                                f7493)
                                                                         (letrec ((g8475
                                                                                   (lambda (g7489
                                                                                            g7490)
                                                                                     (letrec ((g8476
                                                                                               (letrec ((x8477
                                                                                                         (letrec ((x8479
                                                                                                                   (WORLD/C
                                                                                                                    j7491
                                                                                                                    k7492
                                                                                                                    g7489))
                                                                                                                  (x8478
                                                                                                                   (DIR/C
                                                                                                                    j7491
                                                                                                                    k7492
                                                                                                                    g7490)))
                                                                                                           (f7493
                                                                                                            x8479
                                                                                                            x8478))))
                                                                                                 (WORLD/C
                                                                                                  j7491
                                                                                                  k7492
                                                                                                  x8477))))
                                                                                       g8476))))
                                                                           g8475))
                                                                       xj7487
                                                                       xk7488
                                                                       world-change-dir)))
                                                              g8474)))
                                                         (x8460
                                                          (letrec ((x8461
                                                                    (letrec ((x8468
                                                                              (letrec ((x8469
                                                                                        (letrec ((x8472
                                                                                                  (input))
                                                                                                 (x8470
                                                                                                  (letrec ((x8471
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8471
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8472
                                                                                           x8470))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8469)))
                                                                             (x8462
                                                                              (letrec ((x8463
                                                                                        (letrec ((x8464
                                                                                                  (letrec ((x8467
                                                                                                            (input))
                                                                                                           (x8465
                                                                                                            (letrec ((x8466
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8466
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8467
                                                                                                     x8465))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8464))))
                                                                                (cons
                                                                                 x8463
                                                                                 '()))))
                                                                      (cons
                                                                       x8468
                                                                       x8462))))
                                                            (cons
                                                             'world
                                                             x8461)))
                                                         (x8459 (input)))
                                                  (x8473 x8460 x8459))
                                                (letrec ((x8493
                                                          (letrec ((xj7494
                                                                    (loc
                                                                     'module))
                                                                   (xk7495
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8494
                                                                      ((lambda (j7497
                                                                                k7498
                                                                                f7499)
                                                                         (letrec ((g8495
                                                                                   (lambda (g7496)
                                                                                     (letrec ((g8496
                                                                                               (letrec ((x8497
                                                                                                         (letrec ((x8498
                                                                                                                   (WORLD/C
                                                                                                                    j7497
                                                                                                                    k7498
                                                                                                                    g7496)))
                                                                                                           (f7499
                                                                                                            x8498))))
                                                                                                 (WORLD/C
                                                                                                  j7497
                                                                                                  k7498
                                                                                                  x8497))))
                                                                                       g8496))))
                                                                           g8495))
                                                                       xj7494
                                                                       xk7495
                                                                       world->world)))
                                                              g8494)))
                                                         (x8480
                                                          (letrec ((x8481
                                                                    (letrec ((x8488
                                                                              (letrec ((x8489
                                                                                        (letrec ((x8492
                                                                                                  (input))
                                                                                                 (x8490
                                                                                                  (letrec ((x8491
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8491
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8492
                                                                                           x8490))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8489)))
                                                                             (x8482
                                                                              (letrec ((x8483
                                                                                        (letrec ((x8484
                                                                                                  (letrec ((x8487
                                                                                                            (input))
                                                                                                           (x8485
                                                                                                            (letrec ((x8486
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8486
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8487
                                                                                                     x8485))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8484))))
                                                                                (cons
                                                                                 x8483
                                                                                 '()))))
                                                                      (cons
                                                                       x8488
                                                                       x8482))))
                                                            (cons
                                                             'world
                                                             x8481))))
                                                  (x8493 x8480))
                                                (letrec ((x8513
                                                          (letrec ((xj7500
                                                                    (loc
                                                                     'module))
                                                                   (xk7501
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8514
                                                                      ((lambda (j7504
                                                                                k7505
                                                                                f7506)
                                                                         (letrec ((g8515
                                                                                   (lambda (g7502
                                                                                            g7503)
                                                                                     (letrec ((g8516
                                                                                               (letrec ((x8517
                                                                                                         (letrec ((x8519
                                                                                                                   (WORLD/C
                                                                                                                    j7504
                                                                                                                    k7505
                                                                                                                    g7502))
                                                                                                                  (x8518
                                                                                                                   (string?/c
                                                                                                                    j7504
                                                                                                                    k7505
                                                                                                                    g7503)))
                                                                                                           (f7506
                                                                                                            x8519
                                                                                                            x8518))))
                                                                                                 (WORLD/C
                                                                                                  j7504
                                                                                                  k7505
                                                                                                  x8517))))
                                                                                       g8516))))
                                                                           g8515))
                                                                       xj7500
                                                                       xk7501
                                                                       handle-key)))
                                                              g8514)))
                                                         (x8500
                                                          (letrec ((x8501
                                                                    (letrec ((x8508
                                                                              (letrec ((x8509
                                                                                        (letrec ((x8512
                                                                                                  (input))
                                                                                                 (x8510
                                                                                                  (letrec ((x8511
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8511
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8512
                                                                                           x8510))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8509)))
                                                                             (x8502
                                                                              (letrec ((x8503
                                                                                        (letrec ((x8504
                                                                                                  (letrec ((x8507
                                                                                                            (input))
                                                                                                           (x8505
                                                                                                            (letrec ((x8506
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8506
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8507
                                                                                                     x8505))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8504))))
                                                                                (cons
                                                                                 x8503
                                                                                 '()))))
                                                                      (cons
                                                                       x8508
                                                                       x8502))))
                                                            (cons
                                                             'world
                                                             x8501)))
                                                         (x8499 (input)))
                                                  (x8513 x8500 x8499))
                                                (letrec ((x8533
                                                          (letrec ((xj7507
                                                                    (loc
                                                                     'module))
                                                                   (xk7508
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8534
                                                                      ((lambda (j7510
                                                                                k7511
                                                                                f7512)
                                                                         (letrec ((g8535
                                                                                   (lambda (g7509)
                                                                                     (letrec ((g8536
                                                                                               (letrec ((x8537
                                                                                                         (letrec ((x8538
                                                                                                                   (WORLD/C
                                                                                                                    j7510
                                                                                                                    k7511
                                                                                                                    g7509)))
                                                                                                           (f7512
                                                                                                            x8538))))
                                                                                                 (boolean?/c
                                                                                                  j7510
                                                                                                  k7511
                                                                                                  x8537))))
                                                                                       g8536))))
                                                                           g8535))
                                                                       xj7507
                                                                       xk7508
                                                                       game-over?)))
                                                              g8534)))
                                                         (x8520
                                                          (letrec ((x8521
                                                                    (letrec ((x8528
                                                                              (letrec ((x8529
                                                                                        (letrec ((x8532
                                                                                                  (input))
                                                                                                 (x8530
                                                                                                  (letrec ((x8531
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8531
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8532
                                                                                           x8530))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8529)))
                                                                             (x8522
                                                                              (letrec ((x8523
                                                                                        (letrec ((x8524
                                                                                                  (letrec ((x8527
                                                                                                            (input))
                                                                                                           (x8525
                                                                                                            (letrec ((x8526
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8526
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8527
                                                                                                     x8525))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8524))))
                                                                                (cons
                                                                                 x8523
                                                                                 '()))))
                                                                      (cons
                                                                       x8528
                                                                       x8522))))
                                                            (cons
                                                             'world
                                                             x8521))))
                                                  (x8533 x8520))
                                                (letrec ((x8552
                                                          (letrec ((xj7513
                                                                    (loc
                                                                     'module))
                                                                   (xk7514
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8553
                                                                      ((lambda (j7516
                                                                                k7517
                                                                                f7518)
                                                                         (letrec ((g8554
                                                                                   (lambda (g7515)
                                                                                     (letrec ((g8555
                                                                                               (letrec ((x8556
                                                                                                         (letrec ((x8557
                                                                                                                   (WORLD/C
                                                                                                                    j7516
                                                                                                                    k7517
                                                                                                                    g7515)))
                                                                                                           (f7518
                                                                                                            x8557))))
                                                                                                 (image/c
                                                                                                  j7516
                                                                                                  k7517
                                                                                                  x8556))))
                                                                                       g8555))))
                                                                           g8554))
                                                                       xj7513
                                                                       xk7514
                                                                       world->scene)))
                                                              g8553)))
                                                         (x8539
                                                          (letrec ((x8540
                                                                    (letrec ((x8547
                                                                              (letrec ((x8548
                                                                                        (letrec ((x8551
                                                                                                  (input))
                                                                                                 (x8549
                                                                                                  (letrec ((x8550
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8550
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8551
                                                                                           x8549))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8548)))
                                                                             (x8541
                                                                              (letrec ((x8542
                                                                                        (letrec ((x8543
                                                                                                  (letrec ((x8546
                                                                                                            (input))
                                                                                                           (x8544
                                                                                                            (letrec ((x8545
                                                                                                                      (input)))
                                                                                                              (cons
                                                                                                               x8545
                                                                                                               '()))))
                                                                                                    (cons
                                                                                                     x8546
                                                                                                     x8544))))
                                                                                          (cons
                                                                                           'posn
                                                                                           x8543))))
                                                                                (cons
                                                                                 x8542
                                                                                 '()))))
                                                                      (cons
                                                                       x8547
                                                                       x8541))))
                                                            (cons
                                                             'world
                                                             x8540))))
                                                  (x8552 x8539))
                                                (letrec ((x8564
                                                          (letrec ((xj7519
                                                                    (loc
                                                                     'module))
                                                                   (xk7520
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8565
                                                                      ((lambda (j7523
                                                                                k7524
                                                                                f7525)
                                                                         (letrec ((g8566
                                                                                   (lambda (g7521
                                                                                            g7522)
                                                                                     (letrec ((g8567
                                                                                               (letrec ((x8568
                                                                                                         (letrec ((x8570
                                                                                                                   (POSN/C
                                                                                                                    j7523
                                                                                                                    k7524
                                                                                                                    g7521))
                                                                                                                  (x8569
                                                                                                                   (image/c
                                                                                                                    j7523
                                                                                                                    k7524
                                                                                                                    g7522)))
                                                                                                           (f7525
                                                                                                            x8570
                                                                                                            x8569))))
                                                                                                 (image/c
                                                                                                  j7523
                                                                                                  k7524
                                                                                                  x8568))))
                                                                                       g8567))))
                                                                           g8566))
                                                                       xj7519
                                                                       xk7520
                                                                       food+scene)))
                                                              g8565)))
                                                         (x8559
                                                          (letrec ((x8560
                                                                    (letrec ((x8563
                                                                              (input))
                                                                             (x8561
                                                                              (letrec ((x8562
                                                                                        (input)))
                                                                                (cons
                                                                                 x8562
                                                                                 '()))))
                                                                      (cons
                                                                       x8563
                                                                       x8561))))
                                                            (cons
                                                             'posn
                                                             x8560)))
                                                         (x8558
                                                          (cons 'image '())))
                                                  (x8564 x8559 x8558))
                                                (letrec ((x8575
                                                          (letrec ((xj7526
                                                                    (loc
                                                                     'module))
                                                                   (xk7527
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8576
                                                                      ((lambda (j7532
                                                                                k7533
                                                                                f7534)
                                                                         (letrec ((g8577
                                                                                   (lambda (g7528
                                                                                            g7529
                                                                                            g7530
                                                                                            g7531)
                                                                                     (letrec ((g8578
                                                                                               (letrec ((x8579
                                                                                                         (letrec ((x8583
                                                                                                                   (image/c
                                                                                                                    j7532
                                                                                                                    k7533
                                                                                                                    g7528))
                                                                                                                  (x8582
                                                                                                                   (real?/c
                                                                                                                    j7532
                                                                                                                    k7533
                                                                                                                    g7529))
                                                                                                                  (x8581
                                                                                                                   (real?/c
                                                                                                                    j7532
                                                                                                                    k7533
                                                                                                                    g7530))
                                                                                                                  (x8580
                                                                                                                   (image/c
                                                                                                                    j7532
                                                                                                                    k7533
                                                                                                                    g7531)))
                                                                                                           (f7534
                                                                                                            x8583
                                                                                                            x8582
                                                                                                            x8581
                                                                                                            x8580))))
                                                                                                 (image/c
                                                                                                  j7532
                                                                                                  k7533
                                                                                                  x8579))))
                                                                                       g8578))))
                                                                           g8577))
                                                                       xj7526
                                                                       xk7527
                                                                       place-image-on-grid)))
                                                              g8576)))
                                                         (x8574
                                                          (cons 'image '()))
                                                         (x8573 (input))
                                                         (x8572 (input))
                                                         (x8571
                                                          (cons 'image '())))
                                                  (x8575
                                                   x8574
                                                   x8573
                                                   x8572
                                                   x8571))
                                                (letrec ((x8590
                                                          (letrec ((xj7535
                                                                    (loc
                                                                     'module))
                                                                   (xk7536
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8591
                                                                      ((lambda (j7539
                                                                                k7540
                                                                                f7541)
                                                                         (letrec ((g8592
                                                                                   (lambda (g7537
                                                                                            g7538)
                                                                                     (letrec ((g8593
                                                                                               (letrec ((x8594
                                                                                                         (letrec ((x8596
                                                                                                                   (SNAKE/C
                                                                                                                    j7539
                                                                                                                    k7540
                                                                                                                    g7537))
                                                                                                                  (x8595
                                                                                                                   (image/c
                                                                                                                    j7539
                                                                                                                    k7540
                                                                                                                    g7538)))
                                                                                                           (f7541
                                                                                                            x8596
                                                                                                            x8595))))
                                                                                                 (image/c
                                                                                                  j7539
                                                                                                  k7540
                                                                                                  x8594))))
                                                                                       g8593))))
                                                                           g8592))
                                                                       xj7535
                                                                       xk7536
                                                                       snake+scene)))
                                                              g8591)))
                                                         (x8585
                                                          (letrec ((x8586
                                                                    (letrec ((x8589
                                                                              (input))
                                                                             (x8587
                                                                              (letrec ((x8588
                                                                                        (input)))
                                                                                (cons
                                                                                 x8588
                                                                                 '()))))
                                                                      (cons
                                                                       x8589
                                                                       x8587))))
                                                            (cons
                                                             'snake
                                                             x8586)))
                                                         (x8584
                                                          (cons 'image '())))
                                                  (x8590 x8585 x8584))
                                                (letrec ((x8599
                                                          (letrec ((xj7542
                                                                    (loc
                                                                     'module))
                                                                   (xk7543
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8600
                                                                      ((lambda (j7546
                                                                                k7547
                                                                                f7548)
                                                                         (letrec ((g8601
                                                                                   (lambda (g7544
                                                                                            g7545)
                                                                                     (letrec ((g8602
                                                                                               (letrec ((x8603
                                                                                                         (letrec ((x8605
                                                                                                                   (letrec ((x8606
                                                                                                                             (listof
                                                                                                                              POSN/C)))
                                                                                                                     (x8606
                                                                                                                      j7546
                                                                                                                      k7547
                                                                                                                      g7544)))
                                                                                                                  (x8604
                                                                                                                   (image/c
                                                                                                                    j7546
                                                                                                                    k7547
                                                                                                                    g7545)))
                                                                                                           (f7548
                                                                                                            x8605
                                                                                                            x8604))))
                                                                                                 (image/c
                                                                                                  j7546
                                                                                                  k7547
                                                                                                  x8603))))
                                                                                       g8602))))
                                                                           g8601))
                                                                       xj7542
                                                                       xk7543
                                                                       segments+scene)))
                                                              g8600)))
                                                         (x8598 (input))
                                                         (x8597
                                                          (cons 'image '())))
                                                  (x8599 x8598 x8597))
                                                (letrec ((x8613
                                                          (letrec ((xj7549
                                                                    (loc
                                                                     'module))
                                                                   (xk7550
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8614
                                                                      ((lambda (j7553
                                                                                k7554
                                                                                f7555)
                                                                         (letrec ((g8615
                                                                                   (lambda (g7551
                                                                                            g7552)
                                                                                     (letrec ((g8616
                                                                                               (letrec ((x8617
                                                                                                         (letrec ((x8619
                                                                                                                   (POSN/C
                                                                                                                    j7553
                                                                                                                    k7554
                                                                                                                    g7551))
                                                                                                                  (x8618
                                                                                                                   (image/c
                                                                                                                    j7553
                                                                                                                    k7554
                                                                                                                    g7552)))
                                                                                                           (f7555
                                                                                                            x8619
                                                                                                            x8618))))
                                                                                                 (image/c
                                                                                                  j7553
                                                                                                  k7554
                                                                                                  x8617))))
                                                                                       g8616))))
                                                                           g8615))
                                                                       xj7549
                                                                       xk7550
                                                                       segment+scene)))
                                                              g8614)))
                                                         (x8608
                                                          (letrec ((x8609
                                                                    (letrec ((x8612
                                                                              (input))
                                                                             (x8610
                                                                              (letrec ((x8611
                                                                                        (input)))
                                                                                (cons
                                                                                 x8611
                                                                                 '()))))
                                                                      (cons
                                                                       x8612
                                                                       x8610))))
                                                            (cons
                                                             'posn
                                                             x8609)))
                                                         (x8607
                                                          (cons 'image '())))
                                                  (x8613 x8608 x8607))))))
                                      g8379))))
                          g7600))))
              g7583)))
    g7582))
