(letrec ((any? (lambda (v) (letrec ((g7567 #t)) g7567)))
         (meta (lambda (v) (letrec ((g7568 v)) g7568)))
         (member
          (lambda (v lst)
            (letrec ((g7569
                      (letrec ((g7570
                                (letrec ((x-e7571 lst))
                                  (match
                                   x-e7571
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7572 (eq? v v1)))
                                       (if x-cnd7572 #t (member v vs)))))))))
                        g7570)))
              g7569)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7573 (lambda (v) (letrec ((g7574 v)) g7574)))) g7573)))
         (nonzero?
          (lambda (v)
            (letrec ((g7575 (letrec ((x7576 (= v 0))) (not x7576)))) g7575))))
  (letrec ((g7577
            (letrec ((g7578
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7579
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7579)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7580
                                            (letrec ((x7582 (number? x)))
                                              (assert x7582)))
                                           (g7581
                                            (letrec ((val7243 (> x y)))
                                              (letrec ((g7583
                                                        (if val7243
                                                          val7243
                                                          (letrec ((val7244
                                                                    (= x y)))
                                                            (letrec ((g7584
                                                                      (if val7244
                                                                        val7244
                                                                        #f)))
                                                              g7584)))))
                                                g7583))))
                                    g7581)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7585
                                            (letrec ((x7587 (number? x)))
                                              (assert x7587)))
                                           (g7586
                                            (letrec ((val7245 (< x y)))
                                              (letrec ((g7588
                                                        (if val7245
                                                          val7245
                                                          (letrec ((val7246
                                                                    (= x y)))
                                                            (letrec ((g7589
                                                                      (if val7246
                                                                        val7246
                                                                        #f)))
                                                              g7589)))))
                                                g7588))))
                                    g7586)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7590
                                            (letrec ((x7592 (number? x)))
                                              (assert x7592)))
                                           (g7591
                                            (letrec ((x7593 (<= x y)))
                                              (not x7593))))
                                    g7591)))
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
                        (letrec ((g7594 '())
                                 (g7595
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7596
                                                        (lambda (k j lst)
                                                          (letrec ((g7597
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7598
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7598))
                                                                     lst)))
                                                            g7597))))
                                                g7596)))
                                           (real?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7599
                                                        (letrec ((x-cnd7600
                                                                  (real?
                                                                   g7267)))
                                                          (if x-cnd7600
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'real?)))))
                                                g7599)))
                                           (boolean?/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7601
                                                        (letrec ((x-cnd7602
                                                                  (boolean?
                                                                   g7270)))
                                                          (if x-cnd7602
                                                            g7270
                                                            (blame
                                                             g7268
                                                             'boolean?)))))
                                                g7601)))
                                           (number?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7603
                                                        (letrec ((x-cnd7604
                                                                  (number?
                                                                   g7273)))
                                                          (if x-cnd7604
                                                            g7273
                                                            (blame
                                                             g7271
                                                             'number?)))))
                                                g7603)))
                                           (any/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7605
                                                        (letrec ((x-cnd7606
                                                                  ((lambda (v)
                                                                     (letrec ((g7607
                                                                               #t))
                                                                       g7607))
                                                                   g7276)))
                                                          (if x-cnd7606
                                                            g7276
                                                            (blame
                                                             g7274
                                                             '(lambda (v)
                                                                #t))))))
                                                g7605)))
                                           (any?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7608
                                                        (letrec ((x-cnd7609
                                                                  ((lambda (v)
                                                                     (letrec ((g7610
                                                                               #t))
                                                                       g7610))
                                                                   g7279)))
                                                          (if x-cnd7609
                                                            g7279
                                                            (blame
                                                             g7277
                                                             '(lambda (v)
                                                                #t))))))
                                                g7608)))
                                           (cons?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7611
                                                        (letrec ((x-cnd7612
                                                                  (pair?
                                                                   g7282)))
                                                          (if x-cnd7612
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'pair?)))))
                                                g7611)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7613
                                                        (letrec ((x-cnd7614
                                                                  (pair?
                                                                   g7285)))
                                                          (if x-cnd7614
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'pair?)))))
                                                g7613)))
                                           (integer?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7615
                                                        (letrec ((x-cnd7616
                                                                  (integer?
                                                                   g7288)))
                                                          (if x-cnd7616
                                                            g7288
                                                            (blame
                                                             g7286
                                                             'integer?)))))
                                                g7615)))
                                           (symbol?/c
                                            (lambda (g7289 g7290 g7291)
                                              (letrec ((g7617
                                                        (letrec ((x-cnd7618
                                                                  (symbol?
                                                                   g7291)))
                                                          (if x-cnd7618
                                                            g7291
                                                            (blame
                                                             g7289
                                                             'symbol?)))))
                                                g7617)))
                                           (string?/c
                                            (lambda (g7292 g7293 g7294)
                                              (letrec ((g7619
                                                        (letrec ((x-cnd7620
                                                                  (string?
                                                                   g7294)))
                                                          (if x-cnd7620
                                                            g7294
                                                            (blame
                                                             g7292
                                                             'string?)))))
                                                g7619)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7621
                                                        (lambda (k j v)
                                                          (letrec ((g7622
                                                                    (letrec ((x-cnd7623
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7623
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7622))))
                                                g7621)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7624
                                                        (lambda (k j v)
                                                          (letrec ((g7625
                                                                    (letrec ((x-cnd7626
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7626
                                                                        '()
                                                                        (letrec ((x7630
                                                                                  (letrec ((x7631
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7631)))
                                                                                 (x7627
                                                                                  (letrec ((x7629
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7628
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7629
                                                                                     k
                                                                                     j
                                                                                     x7628))))
                                                                          (orig-cons
                                                                           x7630
                                                                           x7627))))))
                                                            g7625))))
                                                g7624)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7632 #t)) g7632)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7633
                                                        (letrec ((x7634
                                                                  (= v 0)))
                                                          (not x7634))))
                                                g7633)))
                                           (nonzero?/c
                                            (lambda (g7295 g7296 g7297)
                                              (letrec ((g7635
                                                        (letrec ((x-cnd7636
                                                                  ((lambda (v)
                                                                     (letrec ((g7637
                                                                               (letrec ((x7638
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7638))))
                                                                       g7637))
                                                                   g7297)))
                                                          (if x-cnd7636
                                                            g7297
                                                            (blame
                                                             g7295
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7635)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7639
                                                        (lambda (g7298
                                                                 g7299
                                                                 g7300)
                                                          (letrec ((g7640
                                                                    (letrec ((x-cnd7641
                                                                              ((lambda (v)
                                                                                 (letrec ((g7642
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7642))
                                                                               g7300)))
                                                                      (if x-cnd7641
                                                                        g7300
                                                                        (blame
                                                                         g7298
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7640))))
                                                g7639)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7643
                                                        (lambda (g7301
                                                                 g7302
                                                                 g7303)
                                                          (letrec ((g7644
                                                                    (letrec ((x-cnd7645
                                                                              ((lambda (v)
                                                                                 (letrec ((g7646
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7646))
                                                                               g7303)))
                                                                      (if x-cnd7645
                                                                        g7303
                                                                        (blame
                                                                         g7301
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7644))))
                                                g7643)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7647
                                                        (lambda (g7304
                                                                 g7305
                                                                 g7306)
                                                          (letrec ((g7648
                                                                    (letrec ((x-cnd7649
                                                                              ((lambda (v)
                                                                                 (letrec ((g7650
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7650))
                                                                               g7306)))
                                                                      (if x-cnd7649
                                                                        g7306
                                                                        (blame
                                                                         g7304
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7648))))
                                                g7647)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7651
                                                        (lambda (g7307
                                                                 g7308
                                                                 g7309)
                                                          (letrec ((g7652
                                                                    (letrec ((x-cnd7653
                                                                              ((lambda (v)
                                                                                 (letrec ((g7654
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7654))
                                                                               g7309)))
                                                                      (if x-cnd7653
                                                                        g7309
                                                                        (blame
                                                                         g7307
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7652))))
                                                g7651)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7655
                                                        (lambda (g7310
                                                                 g7311
                                                                 g7312)
                                                          (letrec ((g7656
                                                                    (letrec ((x-cnd7657
                                                                              ((lambda (v)
                                                                                 (letrec ((g7658
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7658))
                                                                               g7312)))
                                                                      (if x-cnd7657
                                                                        g7312
                                                                        (blame
                                                                         g7310
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7656))))
                                                g7655)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7659 v)) g7659)))
                                           (+
                                            (letrec ((xj7313 'server)
                                                     (xk7314 'client))
                                              (letrec ((g7660
                                                        ((lambda (j7317
                                                                  k7318
                                                                  f7319)
                                                           (letrec ((g7662
                                                                     (lambda (g7315
                                                                              g7316)
                                                                       (letrec ((g7663
                                                                                 (letrec ((x7664
                                                                                           (letrec ((x7666
                                                                                                     (number?/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7315))
                                                                                                    (x7665
                                                                                                     (number?/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7316)))
                                                                                             (f7319
                                                                                              x7666
                                                                                              x7665))))
                                                                                   (number?/c
                                                                                    j7317
                                                                                    k7318
                                                                                    x7664))))
                                                                         g7663))))
                                                             g7662))
                                                         xj7313
                                                         xk7314
                                                         (lambda (a b)
                                                           (letrec ((g7661
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7661)))))
                                                g7660)))
                                           (-
                                            (letrec ((xj7320 'server)
                                                     (xk7321 'client))
                                              (letrec ((g7667
                                                        ((lambda (j7324
                                                                  k7325
                                                                  f7326)
                                                           (letrec ((g7669
                                                                     (lambda (g7322
                                                                              g7323)
                                                                       (letrec ((g7670
                                                                                 (letrec ((x7671
                                                                                           (letrec ((x7673
                                                                                                     (number?/c
                                                                                                      j7324
                                                                                                      k7325
                                                                                                      g7322))
                                                                                                    (x7672
                                                                                                     (number?/c
                                                                                                      j7324
                                                                                                      k7325
                                                                                                      g7323)))
                                                                                             (f7326
                                                                                              x7673
                                                                                              x7672))))
                                                                                   (number?/c
                                                                                    j7324
                                                                                    k7325
                                                                                    x7671))))
                                                                         g7670))))
                                                             g7669))
                                                         xj7320
                                                         xk7321
                                                         (lambda (a b)
                                                           (letrec ((g7668
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7668)))))
                                                g7667)))
                                           (*
                                            (letrec ((xj7327 'server)
                                                     (xk7328 'client))
                                              (letrec ((g7674
                                                        ((lambda (j7331
                                                                  k7332
                                                                  f7333)
                                                           (letrec ((g7676
                                                                     (lambda (g7329
                                                                              g7330)
                                                                       (letrec ((g7677
                                                                                 (letrec ((x7678
                                                                                           (letrec ((x7680
                                                                                                     (number?/c
                                                                                                      j7331
                                                                                                      k7332
                                                                                                      g7329))
                                                                                                    (x7679
                                                                                                     (number?/c
                                                                                                      j7331
                                                                                                      k7332
                                                                                                      g7330)))
                                                                                             (f7333
                                                                                              x7680
                                                                                              x7679))))
                                                                                   (number?/c
                                                                                    j7331
                                                                                    k7332
                                                                                    x7678))))
                                                                         g7677))))
                                                             g7676))
                                                         xj7327
                                                         xk7328
                                                         (lambda (a b)
                                                           (letrec ((g7675
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7675)))))
                                                g7674)))
                                           (<
                                            (letrec ((xj7334 'server)
                                                     (xk7335 'client))
                                              (letrec ((g7681
                                                        ((lambda (j7338
                                                                  k7339
                                                                  f7340)
                                                           (letrec ((g7683
                                                                     (lambda (g7336
                                                                              g7337)
                                                                       (letrec ((g7684
                                                                                 (letrec ((x7685
                                                                                           (letrec ((x7687
                                                                                                     (number?/c
                                                                                                      j7338
                                                                                                      k7339
                                                                                                      g7336))
                                                                                                    (x7686
                                                                                                     (number?/c
                                                                                                      j7338
                                                                                                      k7339
                                                                                                      g7337)))
                                                                                             (f7340
                                                                                              x7687
                                                                                              x7686))))
                                                                                   (boolean?/c
                                                                                    j7338
                                                                                    k7339
                                                                                    x7685))))
                                                                         g7684))))
                                                             g7683))
                                                         xj7334
                                                         xk7335
                                                         (lambda (a b)
                                                           (letrec ((g7682
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7682)))))
                                                g7681)))
                                           (>
                                            (letrec ((xj7341 'server)
                                                     (xk7342 'client))
                                              (letrec ((g7688
                                                        ((lambda (j7345
                                                                  k7346
                                                                  f7347)
                                                           (letrec ((g7690
                                                                     (lambda (g7343
                                                                              g7344)
                                                                       (letrec ((g7691
                                                                                 (letrec ((x7692
                                                                                           (letrec ((x7694
                                                                                                     (number?/c
                                                                                                      j7345
                                                                                                      k7346
                                                                                                      g7343))
                                                                                                    (x7693
                                                                                                     (number?/c
                                                                                                      j7345
                                                                                                      k7346
                                                                                                      g7344)))
                                                                                             (f7347
                                                                                              x7694
                                                                                              x7693))))
                                                                                   (boolean?/c
                                                                                    j7345
                                                                                    k7346
                                                                                    x7692))))
                                                                         g7691))))
                                                             g7690))
                                                         xj7341
                                                         xk7342
                                                         (lambda (a b)
                                                           (letrec ((g7689
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7689)))))
                                                g7688)))
                                           (<=
                                            (letrec ((xj7348 'server)
                                                     (xk7349 'client))
                                              (letrec ((g7695
                                                        ((lambda (j7352
                                                                  k7353
                                                                  f7354)
                                                           (letrec ((g7697
                                                                     (lambda (g7350
                                                                              g7351)
                                                                       (letrec ((g7698
                                                                                 (letrec ((x7699
                                                                                           (letrec ((x7701
                                                                                                     (number?/c
                                                                                                      j7352
                                                                                                      k7353
                                                                                                      g7350))
                                                                                                    (x7700
                                                                                                     (number?/c
                                                                                                      j7352
                                                                                                      k7353
                                                                                                      g7351)))
                                                                                             (f7354
                                                                                              x7701
                                                                                              x7700))))
                                                                                   (boolean?/c
                                                                                    j7352
                                                                                    k7353
                                                                                    x7699))))
                                                                         g7698))))
                                                             g7697))
                                                         xj7348
                                                         xk7349
                                                         (lambda (a b)
                                                           (letrec ((g7696
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7696)))))
                                                g7695)))
                                           (>=
                                            (letrec ((xj7355 'server)
                                                     (xk7356 'client))
                                              (letrec ((g7702
                                                        ((lambda (j7359
                                                                  k7360
                                                                  f7361)
                                                           (letrec ((g7704
                                                                     (lambda (g7357
                                                                              g7358)
                                                                       (letrec ((g7705
                                                                                 (letrec ((x7706
                                                                                           (letrec ((x7708
                                                                                                     (number?/c
                                                                                                      j7359
                                                                                                      k7360
                                                                                                      g7357))
                                                                                                    (x7707
                                                                                                     (number?/c
                                                                                                      j7359
                                                                                                      k7360
                                                                                                      g7358)))
                                                                                             (f7361
                                                                                              x7708
                                                                                              x7707))))
                                                                                   (boolean?/c
                                                                                    j7359
                                                                                    k7360
                                                                                    x7706))))
                                                                         g7705))))
                                                             g7704))
                                                         xj7355
                                                         xk7356
                                                         (lambda (a b)
                                                           (letrec ((g7703
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7703)))))
                                                g7702)))
                                           (/
                                            (letrec ((xj7362 'server)
                                                     (xk7363 'client))
                                              (letrec ((g7709
                                                        ((lambda (j7366
                                                                  k7367
                                                                  f7368)
                                                           (letrec ((g7711
                                                                     (lambda (g7364
                                                                              g7365)
                                                                       (letrec ((g7712
                                                                                 (letrec ((x7713
                                                                                           (letrec ((x7715
                                                                                                     (number?/c
                                                                                                      j7366
                                                                                                      k7367
                                                                                                      g7364))
                                                                                                    (x7714
                                                                                                     (number?/c
                                                                                                      j7366
                                                                                                      k7367
                                                                                                      g7365)))
                                                                                             (f7368
                                                                                              x7715
                                                                                              x7714))))
                                                                                   (number?/c
                                                                                    j7366
                                                                                    k7367
                                                                                    x7713))))
                                                                         g7712))))
                                                             g7711))
                                                         xj7362
                                                         xk7363
                                                         (lambda (a b)
                                                           (letrec ((g7710
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7710)))))
                                                g7709)))
                                           (car
                                            (letrec ((xj7369 'server)
                                                     (xk7370 'client))
                                              (letrec ((g7716
                                                        ((lambda (j7372
                                                                  k7373
                                                                  f7374)
                                                           (letrec ((g7718
                                                                     (lambda (g7371)
                                                                       (letrec ((g7719
                                                                                 (letrec ((x7720
                                                                                           (letrec ((x7721
                                                                                                     (pair?/c
                                                                                                      j7372
                                                                                                      k7373
                                                                                                      g7371)))
                                                                                             (f7374
                                                                                              x7721))))
                                                                                   (any/c
                                                                                    j7372
                                                                                    k7373
                                                                                    x7720))))
                                                                         g7719))))
                                                             g7718))
                                                         xj7369
                                                         xk7370
                                                         (lambda (p)
                                                           (letrec ((g7717
                                                                     (orig-car
                                                                      p)))
                                                             g7717)))))
                                                g7716)))
                                           (cdr
                                            (letrec ((xj7375 'server)
                                                     (xk7376 'client))
                                              (letrec ((g7722
                                                        ((lambda (j7378
                                                                  k7379
                                                                  f7380)
                                                           (letrec ((g7724
                                                                     (lambda (g7377)
                                                                       (letrec ((g7725
                                                                                 (letrec ((x7726
                                                                                           (letrec ((x7727
                                                                                                     (pair?/c
                                                                                                      j7378
                                                                                                      k7379
                                                                                                      g7377)))
                                                                                             (f7380
                                                                                              x7727))))
                                                                                   (any/c
                                                                                    j7378
                                                                                    k7379
                                                                                    x7726))))
                                                                         g7725))))
                                                             g7724))
                                                         xj7375
                                                         xk7376
                                                         (lambda (p)
                                                           (letrec ((g7723
                                                                     (orig-cdr
                                                                      p)))
                                                             g7723)))))
                                                g7722)))
                                           (cons
                                            (letrec ((xj7381 'server)
                                                     (xk7382 'client))
                                              (letrec ((g7728
                                                        ((lambda (j7385
                                                                  k7386
                                                                  f7387)
                                                           (letrec ((g7730
                                                                     (lambda (g7383
                                                                              g7384)
                                                                       (letrec ((g7731
                                                                                 (letrec ((x7732
                                                                                           (letrec ((x7734
                                                                                                     (any/c
                                                                                                      j7385
                                                                                                      k7386
                                                                                                      g7383))
                                                                                                    (x7733
                                                                                                     (any/c
                                                                                                      j7385
                                                                                                      k7386
                                                                                                      g7384)))
                                                                                             (f7387
                                                                                              x7734
                                                                                              x7733))))
                                                                                   (pair?/c
                                                                                    j7385
                                                                                    k7386
                                                                                    x7732))))
                                                                         g7731))))
                                                             g7730))
                                                         xj7381
                                                         xk7382
                                                         (lambda (a b)
                                                           (letrec ((g7729
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7729)))))
                                                g7728)))
                                           (vector-ref
                                            (letrec ((xj7388 'server)
                                                     (xk7389 'client))
                                              (letrec ((g7735
                                                        ((lambda (j7391
                                                                  k7392
                                                                  f7393)
                                                           (letrec ((g7737
                                                                     (lambda (g7390)
                                                                       (letrec ((g7738
                                                                                 (letrec ((x7739
                                                                                           (letrec ((x7740
                                                                                                     (vector?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7390)))
                                                                                             (f7393
                                                                                              x7740))))
                                                                                   (integer?/c
                                                                                    j7391
                                                                                    k7392
                                                                                    x7739))))
                                                                         g7738))))
                                                             g7737))
                                                         xj7388
                                                         xk7389
                                                         (lambda (v i)
                                                           (letrec ((g7736
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7736)))))
                                                g7735)))
                                           (vector-set!
                                            (letrec ((xj7394 'server)
                                                     (xk7395 'client))
                                              (letrec ((g7741
                                                        ((lambda (j7398
                                                                  k7399
                                                                  f7400)
                                                           (letrec ((g7743
                                                                     (lambda (g7396
                                                                              g7397)
                                                                       (letrec ((g7744
                                                                                 (letrec ((x7745
                                                                                           (letrec ((x7747
                                                                                                     (vector?/c
                                                                                                      j7398
                                                                                                      k7399
                                                                                                      g7396))
                                                                                                    (x7746
                                                                                                     (integer?/c
                                                                                                      j7398
                                                                                                      k7399
                                                                                                      g7397)))
                                                                                             (f7400
                                                                                              x7747
                                                                                              x7746))))
                                                                                   (any/c
                                                                                    j7398
                                                                                    k7399
                                                                                    x7745))))
                                                                         g7744))))
                                                             g7743))
                                                         xj7394
                                                         xk7395
                                                         (lambda (vec i v)
                                                           (letrec ((g7742
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7742)))))
                                                g7741)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7748
                                                        (letrec ((x7749
                                                                  (letrec ((x7750
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7750))))
                                                          (cdr x7749))))
                                                g7748)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7751
                                                        (letrec ((x7754
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7754)))
                                                       (g7752
                                                        (letrec ((x7755
                                                                  (list? l)))
                                                          (assert x7755)))
                                                       (g7753
                                                        (letrec ((x-cnd7756
                                                                  (null? l)))
                                                          (if x-cnd7756
                                                            '()
                                                            (letrec ((x7759
                                                                      (letrec ((x7760
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7760)))
                                                                     (x7757
                                                                      (letrec ((x7758
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7758))))
                                                              (cons
                                                               x7759
                                                               x7757))))))
                                                g7753)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7761
                                                        (letrec ((x7762
                                                                  (car x)))
                                                          (cdr x7762))))
                                                g7761)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7763
                                                        (letrec ((x7764
                                                                  (letrec ((x7765
                                                                            (letrec ((x7766
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7766))))
                                                                    (cdr
                                                                     x7765))))
                                                          (car x7764))))
                                                g7763)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7767
                                                        (letrec ((x7768
                                                                  (letrec ((x7769
                                                                            (letrec ((x7770
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7770))))
                                                                    (car
                                                                     x7769))))
                                                          (cdr x7768))))
                                                g7767)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7771
                                                        (letrec ((x7774
                                                                  (string?
                                                                   filename)))
                                                          (assert x7774)))
                                                       (g7772
                                                        (letrec ((x7775
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7775)))
                                                       (g7773
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7776
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7777 res))
                                                            g7777))))
                                                g7773)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7778
                                                        (letrec ((x7779
                                                                  (letrec ((x7780
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7780))))
                                                          (car x7779))))
                                                g7778)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7781
                                                        (letrec ((x7782
                                                                  (letrec ((x7783
                                                                            (letrec ((x7784
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7784))))
                                                                    (car
                                                                     x7783))))
                                                          (cdr x7782))))
                                                g7781)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7785
                                                        (letrec ((x7787
                                                                  (list? l)))
                                                          (assert x7787)))
                                                       (g7786
                                                        (letrec ((x-cnd7788
                                                                  (null? l)))
                                                          (if x-cnd7788
                                                            #f
                                                            (letrec ((x-cnd7789
                                                                      (letrec ((x7790
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7790
                                                                         k))))
                                                              (if x-cnd7789
                                                                (car l)
                                                                (letrec ((x7791
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7791))))))))
                                                g7786)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7792
                                                        (letrec ((x7793
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7793))))
                                                g7792)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7794
                                                        (letrec ((x7796
                                                                  (list? l)))
                                                          (assert x7796)))
                                                       (g7795
                                                        (letrec ((x-cnd7797
                                                                  (null? l)))
                                                          (if x-cnd7797
                                                            ""
                                                            (letrec ((x7800
                                                                      (letrec ((x7801
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7801)))
                                                                     (x7798
                                                                      (letrec ((x7799
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7799))))
                                                              (string-append
                                                               x7800
                                                               x7798))))))
                                                g7795)))
                                           (char<=?
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
                                                        (letrec ((val7247
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7807
                                                                    (if val7247
                                                                      val7247
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7807))))
                                                g7804)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7808
                                                        (letrec ((x7809
                                                                  (letrec ((x7810
                                                                            (letrec ((x7811
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7811))))
                                                                    (cdr
                                                                     x7810))))
                                                          (cdr x7809))))
                                                g7808)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7812
                                                        (letrec ((x7815
                                                                  (list? l)))
                                                          (assert x7815)))
                                                       (g7813
                                                        (letrec ((x7816
                                                                  (number?)))
                                                          (assert x7816)))
                                                       (g7814
                                                        (letrec ((x-cnd7817
                                                                  (zero? k)))
                                                          (if x-cnd7817
                                                            x
                                                            (letrec ((x7819
                                                                      (cdr x))
                                                                     (x7818
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7819
                                                               x7818))))))
                                                g7814)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7820 '())) g7820)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7821
                                                        (letrec ((x-cnd7822
                                                                  (letrec ((x7823
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7823))))
                                                          (if x-cnd7822
                                                            (letrec ((x7824
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7824))
                                                            #f))))
                                                g7821)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7825
                                                        (letrec ((val7248
                                                                  (letrec ((x7826
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7826
                                                                     9))))
                                                          (letrec ((g7827
                                                                    (if val7248
                                                                      val7248
                                                                      (letrec ((val7249
                                                                                (letrec ((x7828
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7828
                                                                                   10))))
                                                                        (letrec ((g7829
                                                                                  (if val7249
                                                                                    val7249
                                                                                    (letrec ((x7830
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7830
                                                                                       32)))))
                                                                          g7829)))))
                                                            g7827))))
                                                g7825)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7831
                                                        (letrec ((x7832
                                                                  (letrec ((x7833
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7833))))
                                                          (cdr x7832))))
                                                g7831)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7834
                                                        (letrec ((x7836
                                                                  (number? x)))
                                                          (assert x7836)))
                                                       (g7835 (> x 0)))
                                                g7835)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7837 #f)) g7837)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7838
                                                        (letrec ((x7839
                                                                  (cdr x)))
                                                          (cdr x7839))))
                                                g7838)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7840
                                                        (letrec ((x7842
                                                                  (number? x)))
                                                          (assert x7842)))
                                                       (g7841
                                                        (letrec ((x-cnd7843
                                                                  (< x 0)))
                                                          (if x-cnd7843
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7841)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7844
                                                        (letrec ((val7250
                                                                  (eq? a b)))
                                                          (letrec ((g7845
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x-cnd7846
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7846
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7847
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((val7252
                                                                                              (letrec ((x-cnd7848
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7848
                                                                                                  (letrec ((x-cnd7849
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7849
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7850
                                                                                                (if val7252
                                                                                                  val7252
                                                                                                  (letrec ((val7253
                                                                                                            (letrec ((x-cnd7851
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7851
                                                                                                                (letrec ((x-cnd7852
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7852
                                                                                                                    (letrec ((x-cnd7853
                                                                                                                              (letrec ((x7855
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7854
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7855
                                                                                                                                 x7854))))
                                                                                                                      (if x-cnd7853
                                                                                                                        (letrec ((x7857
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7856
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7857
                                                                                                                           x7856))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7858
                                                                                                              (if val7253
                                                                                                                val7253
                                                                                                                (letrec ((x-cnd7859
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7859
                                                                                                                    (letrec ((x-cnd7860
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7860
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7861
                                                                                                                                    (letrec ((x-cnd7862
                                                                                                                                              (letrec ((x7863
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7863
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7862
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7864
                                                                                                                                                              (letrec ((val7254
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7865
                                                                                                                                                                          (if val7254
                                                                                                                                                                            val7254
                                                                                                                                                                            (letrec ((x-cnd7866
                                                                                                                                                                                      (letrec ((x7868
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7867
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7868
                                                                                                                                                                                         x7867))))
                                                                                                                                                                              (if x-cnd7866
                                                                                                                                                                                (letrec ((x7869
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7869))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7865))))
                                                                                                                                                      g7864))))
                                                                                                                                          (letrec ((g7870
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7870))
                                                                                                                                        #f))))
                                                                                                                            g7861))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7858)))))
                                                                                        g7850)))))
                                                                          g7847)))))
                                                            g7845))))
                                                g7844)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7871
                                                        (letrec ((x7872
                                                                  (letrec ((x7873
                                                                            (letrec ((x7874
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7874))))
                                                                    (car
                                                                     x7873))))
                                                          (cdr x7872))))
                                                g7871)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7875
                                                        (letrec ((x7876
                                                                  (letrec ((x7877
                                                                            (letrec ((x7878
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7878))))
                                                                    (car
                                                                     x7877))))
                                                          (car x7876))))
                                                g7875)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7879 (eq? x y)))
                                                g7879)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7880
                                                        (letrec ((x7883
                                                                  (string?
                                                                   filename)))
                                                          (assert x7883)))
                                                       (g7881
                                                        (letrec ((x7884
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7884)))
                                                       (g7882
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7885
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7886 res))
                                                            g7886))))
                                                g7882)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7887 (cons x '())))
                                                g7887)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7888
                                                        (letrec ((x7891
                                                                  (char? c1)))
                                                          (assert x7891)))
                                                       (g7889
                                                        (letrec ((x7892
                                                                  (char? c2)))
                                                          (assert x7892)))
                                                       (g7890
                                                        (letrec ((val7255
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7893
                                                                    (if val7255
                                                                      val7255
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7893))))
                                                g7890)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7894
                                                        (letrec ((x7895
                                                                  (letrec ((x7896
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7896))))
                                                          (cdr x7895))))
                                                g7894)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7897
                                                        (letrec ((x7898
                                                                  (letrec ((x7899
                                                                            (letrec ((x7900
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7900))))
                                                                    (car
                                                                     x7899))))
                                                          (cdr x7898))))
                                                g7897)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7901
                                                        (letrec ((x7902
                                                                  (letrec ((x7903
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7903))))
                                                          (car x7902))))
                                                g7901)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7904
                                                        (letrec ((x7905
                                                                  (letrec ((x7906
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7906))))
                                                          (car x7905))))
                                                g7904)))
                                           (char-ci>?
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
                                                        (letrec ((x7912
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7912))))
                                                g7909)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7913
                                                        (letrec ((x7914
                                                                  (letrec ((x7915
                                                                            (letrec ((x7916
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7916))))
                                                                    (car
                                                                     x7915))))
                                                          (car x7914))))
                                                g7913)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7917
                                                        (letrec ((x7919
                                                                  (number? x)))
                                                          (assert x7919)))
                                                       (g7918 (< x 0)))
                                                g7918)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7920 (memq e l)))
                                                g7920)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7921
                                                        (letrec ((x7922
                                                                  (letrec ((x7923
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7923))))
                                                          (car x7922))))
                                                g7921)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7924 '())) g7924)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7925
                                                        (letrec ((x7927
                                                                  (list? l)))
                                                          (assert x7927)))
                                                       (g7926
                                                        (letrec ((x-cnd7928
                                                                  (null? l)))
                                                          (if x-cnd7928
                                                            '()
                                                            (letrec ((x7931
                                                                      (letrec ((x7932
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7932)))
                                                                     (x7929
                                                                      (letrec ((x7930
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7930))))
                                                              (append
                                                               x7931
                                                               x7929))))))
                                                g7926)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7933
                                                        (letrec ((x7934
                                                                  (letrec ((x7935
                                                                            (letrec ((x7936
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7936))))
                                                                    (car
                                                                     x7935))))
                                                          (car x7934))))
                                                g7933)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7937
                                                        (letrec ((x7938
                                                                  (letrec ((x7939
                                                                            (letrec ((x7940
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7940))))
                                                                    (cdr
                                                                     x7939))))
                                                          (cdr x7938))))
                                                g7937)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7941
                                                        (letrec ((x7943
                                                                  (number? x)))
                                                          (assert x7943)))
                                                       (g7942
                                                        (letrec ((x7944
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7944))))
                                                g7942)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7945
                                                        (letrec ((x7946
                                                                  (letrec ((x7947
                                                                            (letrec ((x7948
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7948))))
                                                                    (car
                                                                     x7947))))
                                                          (car x7946))))
                                                g7945)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7949
                                                        (letrec ((x7952
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7952)))
                                                       (g7950
                                                        (letrec ((x7953
                                                                  (list?
                                                                   args)))
                                                          (assert x7953)))
                                                       (g7951
                                                        (letrec ((x-cnd7954
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7954
                                                            (letrec ((g7955
                                                                      (proc)))
                                                              g7955)
                                                            (letrec ((x-cnd7956
                                                                      (letrec ((x7957
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7957))))
                                                              (if x-cnd7956
                                                                (letrec ((g7958
                                                                          (letrec ((x7959
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7959))))
                                                                  g7958)
                                                                (letrec ((x-cnd7960
                                                                          (letrec ((x7961
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7961))))
                                                                  (if x-cnd7960
                                                                    (letrec ((g7962
                                                                              (letrec ((x7964
                                                                                        (car
                                                                                         args))
                                                                                       (x7963
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7964
                                                                                 x7963))))
                                                                      g7962)
                                                                    (letrec ((x-cnd7965
                                                                              (letrec ((x7966
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7966))))
                                                                      (if x-cnd7965
                                                                        (letrec ((g7967
                                                                                  (letrec ((x7970
                                                                                            (car
                                                                                             args))
                                                                                           (x7969
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7968
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7970
                                                                                     x7969
                                                                                     x7968))))
                                                                          g7967)
                                                                        (letrec ((x-cnd7971
                                                                                  (letrec ((x7972
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7972))))
                                                                          (if x-cnd7971
                                                                            (letrec ((g7973
                                                                                      (letrec ((x7977
                                                                                                (car
                                                                                                 args))
                                                                                               (x7976
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7975
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7974
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7977
                                                                                         x7976
                                                                                         x7975
                                                                                         x7974))))
                                                                              g7973)
                                                                            (letrec ((x-cnd7978
                                                                                      (letrec ((x7979
                                                                                                (letrec ((x7980
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7980))))
                                                                                        (null?
                                                                                         x7979))))
                                                                              (if x-cnd7978
                                                                                (letrec ((g7981
                                                                                          (letrec ((x7987
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7986
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7985
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7984
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7982
                                                                                                    (letrec ((x7983
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7983))))
                                                                                            (proc
                                                                                             x7987
                                                                                             x7986
                                                                                             x7985
                                                                                             x7984
                                                                                             x7982))))
                                                                                  g7981)
                                                                                (letrec ((x-cnd7988
                                                                                          (letrec ((x7989
                                                                                                    (letrec ((x7990
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7990))))
                                                                                            (null?
                                                                                             x7989))))
                                                                                  (if x-cnd7988
                                                                                    (letrec ((g7991
                                                                                              (letrec ((x7999
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7998
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7997
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7996
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7994
                                                                                                        (letrec ((x7995
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7995)))
                                                                                                       (x7992
                                                                                                        (letrec ((x7993
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7993))))
                                                                                                (proc
                                                                                                 x7999
                                                                                                 x7998
                                                                                                 x7997
                                                                                                 x7996
                                                                                                 x7994
                                                                                                 x7992))))
                                                                                      g7991)
                                                                                    (letrec ((x-cnd8000
                                                                                              (letrec ((x8001
                                                                                                        (letrec ((x8002
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8002))))
                                                                                                (null?
                                                                                                 x8001))))
                                                                                      (if x-cnd8000
                                                                                        (letrec ((g8003
                                                                                                  (letrec ((x8013
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8012
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8011
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8010
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8008
                                                                                                            (letrec ((x8009
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8009)))
                                                                                                           (x8006
                                                                                                            (letrec ((x8007
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8007)))
                                                                                                           (x8004
                                                                                                            (letrec ((x8005
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8005))))
                                                                                                    (proc
                                                                                                     x8013
                                                                                                     x8012
                                                                                                     x8011
                                                                                                     x8010
                                                                                                     x8008
                                                                                                     x8006
                                                                                                     x8004))))
                                                                                          g8003)
                                                                                        (letrec ((g8014
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8014)))))))))))))))))))
                                                g7951)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8015
                                                        (letrec ((x8017
                                                                  (list? l)))
                                                          (assert x8017)))
                                                       (g8016
                                                        (letrec ((x-cnd8018
                                                                  (null? l)))
                                                          (if x-cnd8018
                                                            #f
                                                            (letrec ((x-cnd8019
                                                                      (letrec ((x8020
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8020
                                                                         e))))
                                                              (if x-cnd8019
                                                                l
                                                                (letrec ((x8021
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8021))))))))
                                                g8016)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8022
                                                        (letrec ((x8023
                                                                  (letrec ((x8024
                                                                            (letrec ((x8025
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8025))))
                                                                    (cdr
                                                                     x8024))))
                                                          (cdr x8023))))
                                                g8022)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8026
                                                        (letrec ((x8027
                                                                  (letrec ((x8028
                                                                            (letrec ((x8029
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8029))))
                                                                    (cdr
                                                                     x8028))))
                                                          (car x8027))))
                                                g8026)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8030 (random 42)))
                                                g8030)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8031
                                                        (letrec ((x8033
                                                                  (number? x)))
                                                          (assert x8033)))
                                                       (g8032 (= x 0)))
                                                g8032)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8034
                                                        (letrec ((val7256
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8035
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8035))))
                                                g8034)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8036
                                                        (letrec ((x8037
                                                                  (cdr x)))
                                                          (car x8037))))
                                                g8036)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8038
                                                        (letrec ((val7257
                                                                  (letrec ((x-cnd8039
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8039
                                                                      (letrec ((x8040
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8040))
                                                                      #f))))
                                                          (letrec ((g8041
                                                                    (if val7257
                                                                      val7257
                                                                      (null?
                                                                       l))))
                                                            g8041))))
                                                g8038)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8042
                                                        (letrec ((x8043
                                                                  (letrec ((x8044
                                                                            (letrec ((x8045
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8045))))
                                                                    (cdr
                                                                     x8044))))
                                                          (cdr x8043))))
                                                g8042)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8046
                                                        (letrec ((x-cnd8047
                                                                  (letrec ((x8048
                                                                            #\0))
                                                                    (char<=?
                                                                     x8048
                                                                     c))))
                                                          (if x-cnd8047
                                                            (letrec ((x8049
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8049))
                                                            #f))))
                                                g8046)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8050
                                                        (letrec ((x8052
                                                                  (list? l)))
                                                          (assert x8052)))
                                                       (g8051
                                                        (letrec ((x-cnd8053
                                                                  (null? l)))
                                                          (if x-cnd8053
                                                            #f
                                                            (letrec ((x-cnd8054
                                                                      (letrec ((x8055
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8055
                                                                         k))))
                                                              (if x-cnd8054
                                                                (car l)
                                                                (letrec ((x8056
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8056))))))))
                                                g8051)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8057 (if x #f #t)))
                                                g8057)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8058 (append l1 l2)))
                                                g8058)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8059
                                                        (letrec ((x8061
                                                                  (list? l)))
                                                          (assert x8061)))
                                                       (g8060
                                                        (letrec ((x-cnd8062
                                                                  (null? l)))
                                                          (if x-cnd8062
                                                            #f
                                                            (letrec ((x-cnd8063
                                                                      (letrec ((x8064
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8064
                                                                         e))))
                                                              (if x-cnd8063
                                                                l
                                                                (letrec ((x8065
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8065))))))))
                                                g8060)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8066
                                                        (letrec ((x8067
                                                                  (letrec ((x8068
                                                                            (letrec ((x8069
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8069))))
                                                                    (cdr
                                                                     x8068))))
                                                          (car x8067))))
                                                g8066)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8070
                                                        (letrec ((x8072
                                                                  (list? l)))
                                                          (assert x8072)))
                                                       (g8071
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8073
                                                                              (letrec ((x-cnd8074
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8074
                                                                                  0
                                                                                  (letrec ((x8075
                                                                                            (letrec ((x8076
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8076))))
                                                                                    (+
                                                                                     1
                                                                                     x8075))))))
                                                                      g8073))))
                                                          (letrec ((g8077
                                                                    (rec l)))
                                                            g8077))))
                                                g8071)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8078
                                                        (letrec ((x8081
                                                                  (char? c1)))
                                                          (assert x8081)))
                                                       (g8079
                                                        (letrec ((x8082
                                                                  (char? c2)))
                                                          (assert x8082)))
                                                       (g8080
                                                        (letrec ((val7258
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8083
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8083))))
                                                g8080)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8084
                                                        (letrec ((x8085
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8085))))
                                                g8084)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8086
                                                        (letrec ((x8087
                                                                  (letrec ((x8088
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8088))))
                                                          (cdr x8087))))
                                                g8086)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8089
                                                        (letrec ((x8091
                                                                  (list? l)))
                                                          (assert x8091)))
                                                       (g8090
                                                        (letrec ((x-cnd8092
                                                                  (null? l)))
                                                          (if x-cnd8092
                                                            #f
                                                            (letrec ((x-cnd8093
                                                                      (letrec ((x8094
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8094
                                                                         k))))
                                                              (if x-cnd8093
                                                                (car l)
                                                                (letrec ((x8095
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8095))))))))
                                                g8090)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8096
                                                        (letrec ((x8097
                                                                  (car x)))
                                                          (car x8097))))
                                                g8096)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8098
                                                        (letrec ((x8101
                                                                  (char? c1)))
                                                          (assert x8101)))
                                                       (g8099
                                                        (letrec ((x8102
                                                                  (char? c2)))
                                                          (assert x8102)))
                                                       (g8100
                                                        (letrec ((x8103
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8103))))
                                                g8100)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8104
                                                        (letrec ((val7259
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8105
                                                                    (if val7259
                                                                      val7259
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8105))))
                                                g8104)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8106
                                                        (letrec ((x8109
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8109)))
                                                       (g8107
                                                        (letrec ((x8110
                                                                  (list? l)))
                                                          (assert x8110)))
                                                       (g8108
                                                        (letrec ((x-cnd8111
                                                                  (null? l)))
                                                          (if x-cnd8111
                                                            #t
                                                            (letrec ((x-cnd8112
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8112
                                                                (letrec ((g8113
                                                                          (letrec ((x8115
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8115)))
                                                                         (g8114
                                                                          (letrec ((x8116
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8116))))
                                                                  g8114)
                                                                '()))))))
                                                g8108)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8117
                                                        (letrec ((x8119
                                                                  (number? x)))
                                                          (assert x8119)))
                                                       (g8118
                                                        (letrec ((x-cnd8120
                                                                  (< x 0)))
                                                          (if x-cnd8120
                                                            (- 0 x)
                                                            x))))
                                                g8118)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8121
                                                        (letrec ((x8124
                                                                  (char? c1)))
                                                          (assert x8124)))
                                                       (g8122
                                                        (letrec ((x8125
                                                                  (char? c2)))
                                                          (assert x8125)))
                                                       (g8123
                                                        (letrec ((val7260
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8126
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8126))))
                                                g8123)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8127
                                                        (letrec ((x8128
                                                                  (letrec ((x8129
                                                                            (letrec ((x8130
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8130))))
                                                                    (cdr
                                                                     x8129))))
                                                          (car x8128))))
                                                g8127)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8131 #f)) g8131)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8132
                                                        (letrec ((x8134
                                                                  (letrec ((x8135
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8135)))
                                                                 (x8133
                                                                  (gcd m n)))
                                                          (/ x8134 x8133))))
                                                g8132)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8136
                                                        (letrec ((x8140
                                                                  (list? l)))
                                                          (assert x8140)))
                                                       (g8137
                                                        (letrec ((x8141
                                                                  (number?
                                                                   index)))
                                                          (assert x8141)))
                                                       (g8138
                                                        (letrec ((x8142
                                                                  (letrec ((x8143
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8143))))
                                                          (assert x8142)))
                                                       (g8139
                                                        (letrec ((x-cnd8144
                                                                  (= index 0)))
                                                          (if x-cnd8144
                                                            (car l)
                                                            (letrec ((x8146
                                                                      (cdr l))
                                                                     (x8145
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8146
                                                               x8145))))))
                                                g8139)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8147
                                                        (letrec ((x-cnd8148
                                                                  (= b 0)))
                                                          (if x-cnd8148
                                                            a
                                                            (letrec ((x8149
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8149))))))
                                                g8147)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8150
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8150)))
                                           (image?
                                            (lambda (image7551)
                                              (letrec ((g8151
                                                        (letrec ((x8152
                                                                  (car
                                                                   image7551)))
                                                          (eq? x8152 'image))))
                                                g8151)))
                                           (image/c
                                            (lambda (j7402 k7403 v7401)
                                              (letrec ((g8153
                                                        (cons image '())))
                                                g8153)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8154 (image)))
                                                g8154)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8155 (image)))
                                                g8155)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8156 (image)))
                                                g8156)))
                                           (posn
                                            (lambda (x7553 y7554)
                                              (letrec ((g8157
                                                        (letrec ((x8158
                                                                  (letrec ((x8159
                                                                            (orig-cons
                                                                             y7554
                                                                             '())))
                                                                    (orig-cons
                                                                     x7553
                                                                     x8159))))
                                                          (orig-cons
                                                           'posn
                                                           x8158))))
                                                g8157)))
                                           (posn?
                                            (lambda (posn7552)
                                              (letrec ((g8160
                                                        (letrec ((x8161
                                                                  (car
                                                                   posn7552)))
                                                          (eq? x8161 'posn))))
                                                g8160)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8162
                                                        (letrec ((x8163
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8163))))
                                                g8162)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8164
                                                        (letrec ((x8165
                                                                  (letrec ((x8166
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8166))))
                                                          (orig-car x8165))))
                                                g8164)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8167
                                                        (letrec ((x-cnd8168
                                                                  (letrec ((x8170
                                                                            (posn-x
                                                                             p1))
                                                                           (x8169
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8170
                                                                     x8169))))
                                                          (if x-cnd8168
                                                            (letrec ((x8172
                                                                      (posn-y
                                                                       p1))
                                                                     (x8171
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8172 x8171))
                                                            #f))))
                                                g8167)))
                                           (snake
                                            (lambda (dir7558 segs7559)
                                              (letrec ((g8173
                                                        (letrec ((x8174
                                                                  (letrec ((x8175
                                                                            (orig-cons
                                                                             segs7559
                                                                             '())))
                                                                    (orig-cons
                                                                     dir7558
                                                                     x8175))))
                                                          (orig-cons
                                                           'snake
                                                           x8174))))
                                                g8173)))
                                           (snake?
                                            (lambda (snake7557)
                                              (letrec ((g8176
                                                        (letrec ((x8177
                                                                  (car
                                                                   snake7557)))
                                                          (eq? x8177 'snake))))
                                                g8176)))
                                           (snake-dir
                                            (lambda (snake)
                                              (letrec ((g8178
                                                        (letrec ((x8179
                                                                  (orig-cdr
                                                                   snake)))
                                                          (orig-car x8179))))
                                                g8178)))
                                           (snake-segs
                                            (lambda (snake)
                                              (letrec ((g8180
                                                        (letrec ((x8181
                                                                  (letrec ((x8182
                                                                            (orig-cdr
                                                                             snake)))
                                                                    (orig-cdr
                                                                     x8182))))
                                                          (orig-car x8181))))
                                                g8180)))
                                           (world
                                            (lambda (snake7563 food7564)
                                              (letrec ((g8183
                                                        (letrec ((x8184
                                                                  (letrec ((x8185
                                                                            (orig-cons
                                                                             food7564
                                                                             '())))
                                                                    (orig-cons
                                                                     snake7563
                                                                     x8185))))
                                                          (orig-cons
                                                           'world
                                                           x8184))))
                                                g8183)))
                                           (world?
                                            (lambda (world7562)
                                              (letrec ((g8186
                                                        (letrec ((x8187
                                                                  (car
                                                                   world7562)))
                                                          (eq? x8187 'world))))
                                                g8186)))
                                           (world-snake
                                            (lambda (world)
                                              (letrec ((g8188
                                                        (letrec ((x8189
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8189))))
                                                g8188)))
                                           (world-food
                                            (lambda (world)
                                              (letrec ((g8190
                                                        (letrec ((x8191
                                                                  (letrec ((x8192
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8192))))
                                                          (orig-car x8191))))
                                                g8190)))
                                           (DIR/C
                                            (lambda (g7408 g7409 g7410)
                                              (letrec ((g8193
                                                        (letrec ((x-cnd8194
                                                                  ((lambda (v7407)
                                                                     (letrec ((g8195
                                                                               (letrec ((x-cnd8196
                                                                                         (eq?
                                                                                          'up
                                                                                          v7407)))
                                                                                 (if x-cnd8196
                                                                                   #t
                                                                                   (letrec ((x-cnd8197
                                                                                             (eq?
                                                                                              'down
                                                                                              v7407)))
                                                                                     (if x-cnd8197
                                                                                       #t
                                                                                       (letrec ((x-cnd8198
                                                                                                 (eq?
                                                                                                  'left
                                                                                                  v7407)))
                                                                                         (if x-cnd8198
                                                                                           #t
                                                                                           (eq?
                                                                                            'right
                                                                                            v7407)))))))))
                                                                       g8195))
                                                                   g7410)))
                                                          (if x-cnd8194
                                                            g7410
                                                            (blame
                                                             g7408
                                                             '(lambda (v7407)
                                                                (if (eq?
                                                                     'up
                                                                     v7407)
                                                                  #t
                                                                  (if (eq?
                                                                       'down
                                                                       v7407)
                                                                    #t
                                                                    (if (eq?
                                                                         'left
                                                                         v7407)
                                                                      #t
                                                                      (eq?
                                                                       'right
                                                                       v7407))))))))))
                                                g8193)))
                                           (POSN/C
                                            (lambda (j7412 k7413 v7411)
                                              (letrec ((g8199
                                                        (letrec ((checked7414
                                                                  (letrec ((x8200
                                                                            (letrec ((x8201
                                                                                      (orig-cdr
                                                                                       v7411)))
                                                                              (orig-car
                                                                               x8201))))
                                                                    (real?/c
                                                                     j7412
                                                                     k7413
                                                                     x8200))))
                                                          (letrec ((g8202
                                                                    (letrec ((checked7415
                                                                              (letrec ((x8203
                                                                                        (letrec ((x8204
                                                                                                  (letrec ((x8205
                                                                                                            (orig-cdr
                                                                                                             v7411)))
                                                                                                    (orig-cdr
                                                                                                     x8205))))
                                                                                          (orig-car
                                                                                           x8204))))
                                                                                (real?/c
                                                                                 j7412
                                                                                 k7413
                                                                                 x8203))))
                                                                      (letrec ((g8206
                                                                                (letrec ((x8207
                                                                                          (letrec ((x8208
                                                                                                    (cons
                                                                                                     checked7415
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7414
                                                                                             x8208))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8207))))
                                                                        g8206))))
                                                            g8202))))
                                                g8199)))
                                           (SNAKE/C
                                            (lambda (j7418 k7419 v7417)
                                              (letrec ((g8209
                                                        (letrec ((checked7420
                                                                  (letrec ((x8210
                                                                            (letrec ((x8211
                                                                                      (orig-cdr
                                                                                       v7417)))
                                                                              (orig-car
                                                                               x8211))))
                                                                    (DIR/C
                                                                     j7418
                                                                     k7419
                                                                     x8210))))
                                                          (letrec ((g8212
                                                                    (letrec ((checked7421
                                                                              (letrec ((x8216
                                                                                        (letrec ((x8217
                                                                                                  (listof
                                                                                                   POSN/C)))
                                                                                          (and/c
                                                                                           cons?/c
                                                                                           x8217)))
                                                                                       (x8213
                                                                                        (letrec ((x8214
                                                                                                  (letrec ((x8215
                                                                                                            (orig-cdr
                                                                                                             v7417)))
                                                                                                    (orig-cdr
                                                                                                     x8215))))
                                                                                          (orig-car
                                                                                           x8214))))
                                                                                (x8216
                                                                                 j7418
                                                                                 k7419
                                                                                 x8213))))
                                                                      (letrec ((g8218
                                                                                (letrec ((x8219
                                                                                          (letrec ((x8220
                                                                                                    (cons
                                                                                                     checked7421
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7420
                                                                                             x8220))))
                                                                                  (cons
                                                                                   snake
                                                                                   x8219))))
                                                                        g8218))))
                                                            g8212))))
                                                g8209)))
                                           (WORLD/C
                                            (lambda (j7424 k7425 v7423)
                                              (letrec ((g8221
                                                        (letrec ((checked7426
                                                                  (letrec ((x8222
                                                                            (letrec ((x8223
                                                                                      (orig-cdr
                                                                                       v7423)))
                                                                              (orig-car
                                                                               x8223))))
                                                                    (SNAKE/C
                                                                     j7424
                                                                     k7425
                                                                     x8222))))
                                                          (letrec ((g8224
                                                                    (letrec ((checked7427
                                                                              (letrec ((x8225
                                                                                        (letrec ((x8226
                                                                                                  (letrec ((x8227
                                                                                                            (orig-cdr
                                                                                                             v7423)))
                                                                                                    (orig-cdr
                                                                                                     x8227))))
                                                                                          (orig-car
                                                                                           x8226))))
                                                                                (POSN/C
                                                                                 j7424
                                                                                 k7425
                                                                                 x8225))))
                                                                      (letrec ((g8228
                                                                                (letrec ((x8229
                                                                                          (letrec ((x8230
                                                                                                    (cons
                                                                                                     checked7427
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7426
                                                                                             x8230))))
                                                                                  (cons
                                                                                   world
                                                                                   x8229))))
                                                                        g8228))))
                                                            g8224))))
                                                g8221)))
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
                                            (letrec ((x8232
                                                      (letrec ((x8233
                                                                (letrec ((x8234
                                                                          (posn
                                                                           5
                                                                           3)))
                                                                  (cons
                                                                   x8234
                                                                   empty))))
                                                        (snake 'right x8233)))
                                                     (x8231 (posn 8 12)))
                                              (world x8232 x8231)))
                                           (snake-wall-collide?
                                            (lambda (snk)
                                              (letrec ((g8235
                                                        (letrec ((x8236
                                                                  (letrec ((x8237
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8237))))
                                                          (head-collide?
                                                           x8236))))
                                                g8235)))
                                           (head-collide?
                                            (lambda (p)
                                              (letrec ((g8238
                                                        (letrec ((val7261
                                                                  (letrec ((x8239
                                                                            (posn-x
                                                                             p)))
                                                                    (<=
                                                                     x8239
                                                                     0))))
                                                          (letrec ((g8240
                                                                    (if val7261
                                                                      val7261
                                                                      (letrec ((val7262
                                                                                (letrec ((x8241
                                                                                          (posn-x
                                                                                           p)))
                                                                                  (>=
                                                                                   x8241
                                                                                   BOARD-WIDTH))))
                                                                        (letrec ((g8242
                                                                                  (if val7262
                                                                                    val7262
                                                                                    (letrec ((val7263
                                                                                              (letrec ((x8243
                                                                                                        (posn-y
                                                                                                         p)))
                                                                                                (<=
                                                                                                 x8243
                                                                                                 0))))
                                                                                      (letrec ((g8244
                                                                                                (if val7263
                                                                                                  val7263
                                                                                                  (letrec ((x8245
                                                                                                            (posn-y
                                                                                                             p)))
                                                                                                    (>=
                                                                                                     x8245
                                                                                                     BOARD-HEIGHT)))))
                                                                                        g8244)))))
                                                                          g8242)))))
                                                            g8240))))
                                                g8238)))
                                           (snake-self-collide?
                                            (lambda (snk)
                                              (letrec ((g8246
                                                        (letrec ((x8249
                                                                  (letrec ((x8250
                                                                            (snake-segs
                                                                             snk)))
                                                                    (car
                                                                     x8250)))
                                                                 (x8247
                                                                  (letrec ((x8248
                                                                            (snake-segs
                                                                             snk)))
                                                                    (cdr
                                                                     x8248))))
                                                          (segs-self-collide?
                                                           x8249
                                                           x8247))))
                                                g8246)))
                                           (segs-self-collide?
                                            (lambda (h segs)
                                              (letrec ((g8251
                                                        (letrec ((x-cnd8252
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8252
                                                            (letrec ((g8253
                                                                      #f))
                                                              g8253)
                                                            (letrec ((g8254
                                                                      (letrec ((x8257
                                                                                (letrec ((x8258
                                                                                          (car
                                                                                           segs)))
                                                                                  (posn=?
                                                                                   x8258
                                                                                   h)))
                                                                               (x8255
                                                                                (letrec ((x8256
                                                                                          (cdr
                                                                                           segs)))
                                                                                  (segs-self-collide?
                                                                                   h
                                                                                   x8256))))
                                                                        (or x8257
                                                                            x8255))))
                                                              g8254)))))
                                                g8251)))
                                           (cut-tail
                                            (lambda (segs)
                                              (letrec ((g8259
                                                        (letrec ((r
                                                                  (cdr segs)))
                                                          (letrec ((g8260
                                                                    (letrec ((x-cnd8261
                                                                              (empty?
                                                                               r)))
                                                                      (if x-cnd8261
                                                                        (letrec ((g8262
                                                                                  empty))
                                                                          g8262)
                                                                        (letrec ((g8263
                                                                                  (letrec ((x8265
                                                                                            (car
                                                                                             segs))
                                                                                           (x8264
                                                                                            (cut-tail
                                                                                             r)))
                                                                                    (cons
                                                                                     x8265
                                                                                     x8264))))
                                                                          g8263)))))
                                                            g8260))))
                                                g8259)))
                                           (next-head
                                            (lambda (seg dir)
                                              (letrec ((g8266
                                                        (letrec ((x-cnd8267
                                                                  (equal?
                                                                   'right
                                                                   dir)))
                                                          (if x-cnd8267
                                                            (letrec ((g8268
                                                                      (letrec ((x8270
                                                                                (letrec ((x8271
                                                                                          (posn-x
                                                                                           seg)))
                                                                                  (add1
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
                                                                       'left
                                                                       dir)))
                                                              (if x-cnd8272
                                                                (letrec ((g8273
                                                                          (letrec ((x8275
                                                                                    (letrec ((x8276
                                                                                              (posn-x
                                                                                               seg)))
                                                                                      (sub1
                                                                                       x8276)))
                                                                                   (x8274
                                                                                    (posn-y
                                                                                     seg)))
                                                                            (posn
                                                                             x8275
                                                                             x8274))))
                                                                  g8273)
                                                                (letrec ((x-cnd8277
                                                                          (equal?
                                                                           'down
                                                                           dir)))
                                                                  (if x-cnd8277
                                                                    (letrec ((g8278
                                                                              (letrec ((x8281
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8279
                                                                                        (letrec ((x8280
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (sub1
                                                                                           x8280))))
                                                                                (posn
                                                                                 x8281
                                                                                 x8279))))
                                                                      g8278)
                                                                    (letrec ((g8282
                                                                              (letrec ((x8285
                                                                                        (posn-x
                                                                                         seg))
                                                                                       (x8283
                                                                                        (letrec ((x8284
                                                                                                  (posn-y
                                                                                                   seg)))
                                                                                          (add1
                                                                                           x8284))))
                                                                                (posn
                                                                                 x8285
                                                                                 x8283))))
                                                                      g8282)))))))))
                                                g8266)))
                                           (snake-slither
                                            (lambda (snk)
                                              (letrec ((g8286
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8287
                                                                    (letrec ((x8288
                                                                              (letrec ((x8291
                                                                                        (letrec ((x8292
                                                                                                  (letrec ((x8293
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8293))))
                                                                                          (next-head
                                                                                           x8292
                                                                                           d)))
                                                                                       (x8289
                                                                                        (letrec ((x8290
                                                                                                  (snake-segs
                                                                                                   snk)))
                                                                                          (cut-tail
                                                                                           x8290))))
                                                                                (cons
                                                                                 x8291
                                                                                 x8289))))
                                                                      (snake
                                                                       d
                                                                       x8288))))
                                                            g8287))))
                                                g8286)))
                                           (snake-grow
                                            (lambda (snk)
                                              (letrec ((g8294
                                                        (letrec ((d
                                                                  (snake-dir
                                                                   snk)))
                                                          (letrec ((g8295
                                                                    (letrec ((x8296
                                                                              (letrec ((x8298
                                                                                        (letrec ((x8299
                                                                                                  (letrec ((x8300
                                                                                                            (snake-segs
                                                                                                             snk)))
                                                                                                    (car
                                                                                                     x8300))))
                                                                                          (next-head
                                                                                           x8299
                                                                                           d)))
                                                                                       (x8297
                                                                                        (snake-segs
                                                                                         snk)))
                                                                                (cons
                                                                                 x8298
                                                                                 x8297))))
                                                                      (snake
                                                                       d
                                                                       x8296))))
                                                            g8295))))
                                                g8294)))
                                           (world->world
                                            (lambda (w)
                                              (letrec ((g8301
                                                        (letrec ((x-cnd8302
                                                                  (eating? w)))
                                                          (if x-cnd8302
                                                            (letrec ((g8303
                                                                      (snake-eat
                                                                       w)))
                                                              g8303)
                                                            (letrec ((g8304
                                                                      (letrec ((x8306
                                                                                (letrec ((x8307
                                                                                          (world-snake
                                                                                           w)))
                                                                                  (snake-slither
                                                                                   x8307)))
                                                                               (x8305
                                                                                (world-food
                                                                                 w)))
                                                                        (world
                                                                         x8306
                                                                         x8305))))
                                                              g8304)))))
                                                g8301)))
                                           (eating?
                                            (lambda (w)
                                              (letrec ((g8308
                                                        (letrec ((x8312
                                                                  (world-food
                                                                   w))
                                                                 (x8309
                                                                  (letrec ((x8310
                                                                            (letrec ((x8311
                                                                                      (world-snake
                                                                                       w)))
                                                                              (snake-segs
                                                                               x8311))))
                                                                    (car
                                                                     x8310))))
                                                          (posn=?
                                                           x8312
                                                           x8309))))
                                                g8308)))
                                           (snake-change-direction
                                            (lambda (snk dir)
                                              (letrec ((g8313
                                                        (letrec ((x8314
                                                                  (snake-segs
                                                                   snk)))
                                                          (snake dir x8314))))
                                                g8313)))
                                           (world-change-dir
                                            (lambda (w dir)
                                              (letrec ((g8315
                                                        (letrec ((x8317
                                                                  (letrec ((x8318
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-change-direction
                                                                     x8318
                                                                     dir)))
                                                                 (x8316
                                                                  (world-food
                                                                   w)))
                                                          (world
                                                           x8317
                                                           x8316))))
                                                g8315)))
                                           (snake-eat
                                            (lambda (w)
                                              (letrec ((g8319
                                                        (letrec ((x8323
                                                                  (letrec ((x8324
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-grow
                                                                     x8324)))
                                                                 (x8320
                                                                  (letrec ((x8322
                                                                            (-
                                                                             BOARD-WIDTH
                                                                             1))
                                                                           (x8321
                                                                            (-
                                                                             BOARD-HEIGHT
                                                                             1)))
                                                                    (posn
                                                                     x8322
                                                                     x8321))))
                                                          (world
                                                           x8323
                                                           x8320))))
                                                g8319)))
                                           (handle-key
                                            (lambda (w ke)
                                              (letrec ((g8325
                                                        (letrec ((x-cnd8326
                                                                  (equal?
                                                                   ke
                                                                   "w")))
                                                          (if x-cnd8326
                                                            (letrec ((g8327
                                                                      (world-change-dir
                                                                       w
                                                                       'up)))
                                                              g8327)
                                                            (letrec ((x-cnd8328
                                                                      (equal?
                                                                       ke
                                                                       "s")))
                                                              (if x-cnd8328
                                                                (letrec ((g8329
                                                                          (world-change-dir
                                                                           w
                                                                           'down)))
                                                                  g8329)
                                                                (letrec ((x-cnd8330
                                                                          (equal?
                                                                           ke
                                                                           "a")))
                                                                  (if x-cnd8330
                                                                    (letrec ((g8331
                                                                              (world-change-dir
                                                                               w
                                                                               'left)))
                                                                      g8331)
                                                                    (letrec ((x-cnd8332
                                                                              (equal?
                                                                               ke
                                                                               "d")))
                                                                      (if x-cnd8332
                                                                        (letrec ((g8333
                                                                                  (world-change-dir
                                                                                   w
                                                                                   'right)))
                                                                          g8333)
                                                                        (letrec ((g8334
                                                                                  w))
                                                                          g8334)))))))))))
                                                g8325)))
                                           (game-over?
                                            (lambda (w)
                                              (letrec ((g8335
                                                        (letrec ((val7264
                                                                  (letrec ((x8336
                                                                            (world-snake
                                                                             w)))
                                                                    (snake-wall-collide?
                                                                     x8336))))
                                                          (letrec ((g8337
                                                                    (if val7264
                                                                      val7264
                                                                      (letrec ((x8338
                                                                                (world-snake
                                                                                 w)))
                                                                        (snake-self-collide?
                                                                         x8338)))))
                                                            g8337))))
                                                g8335)))
                                           (world->scene
                                            (lambda (w)
                                              (letrec ((g8339
                                                        (letrec ((x8342
                                                                  (world-snake
                                                                   w))
                                                                 (x8340
                                                                  (letrec ((x8341
                                                                            (world-food
                                                                             w)))
                                                                    (food+scene
                                                                     x8341
                                                                     BACKGROUND))))
                                                          (snake+scene
                                                           x8342
                                                           x8340))))
                                                g8339)))
                                           (food+scene
                                            (lambda (f scn)
                                              (letrec ((g8343
                                                        (letrec ((x8345
                                                                  (posn-x f))
                                                                 (x8344
                                                                  (posn-y f)))
                                                          (place-image-on-grid
                                                           FOOD-IMAGE
                                                           x8345
                                                           x8344
                                                           scn))))
                                                g8343)))
                                           (place-image-on-grid
                                            (lambda (img x y scn)
                                              (letrec ((g8346
                                                        (letrec ((x8349
                                                                  (*
                                                                   GRID-SIZE
                                                                   x))
                                                                 (x8347
                                                                  (letrec ((x8348
                                                                            (*
                                                                             GRID-SIZE
                                                                             y)))
                                                                    (-
                                                                     BOARD-HEIGHT-PIXELS
                                                                     x8348))))
                                                          (place-image
                                                           img
                                                           x8349
                                                           x8347
                                                           scn))))
                                                g8346)))
                                           (snake+scene
                                            (lambda (snk scn)
                                              (letrec ((g8350
                                                        (letrec ((x8351
                                                                  (snake-segs
                                                                   snk)))
                                                          (segments+scene
                                                           x8351
                                                           scn))))
                                                g8350)))
                                           (segments+scene
                                            (lambda (segs scn)
                                              (letrec ((g8352
                                                        (letrec ((x-cnd8353
                                                                  (empty?
                                                                   segs)))
                                                          (if x-cnd8353
                                                            (letrec ((g8354
                                                                      scn))
                                                              g8354)
                                                            (letrec ((g8355
                                                                      (letrec ((x8358
                                                                                (cdr
                                                                                 segs))
                                                                               (x8356
                                                                                (letrec ((x8357
                                                                                          (car
                                                                                           segs)))
                                                                                  (segment+scene
                                                                                   x8357
                                                                                   scn))))
                                                                        (segments+scene
                                                                         x8358
                                                                         x8356))))
                                                              g8355)))))
                                                g8352)))
                                           (segment+scene
                                            (lambda (seg scn)
                                              (letrec ((g8359
                                                        (letrec ((x8361
                                                                  (posn-x seg))
                                                                 (x8360
                                                                  (posn-y
                                                                   seg)))
                                                          (place-image-on-grid
                                                           SEGMENT-IMAGE
                                                           x8361
                                                           x8360
                                                           scn))))
                                                g8359))))
                                    (letrec ((g8362
                                              (parallel
                                               (parallel
                                                (letrec ((x8373
                                                          (letrec ((xj7429
                                                                    (loc
                                                                     'module))
                                                                   (xk7430
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8374
                                                                      ((lambda (j7433
                                                                                k7434
                                                                                f7435)
                                                                         (letrec ((g8375
                                                                                   (lambda (g7431
                                                                                            g7432)
                                                                                     (letrec ((g8376
                                                                                               (letrec ((x8377
                                                                                                         (letrec ((x8379
                                                                                                                   (POSN/C
                                                                                                                    j7433
                                                                                                                    k7434
                                                                                                                    g7431))
                                                                                                                  (x8378
                                                                                                                   (POSN/C
                                                                                                                    j7433
                                                                                                                    k7434
                                                                                                                    g7432)))
                                                                                                           (f7435
                                                                                                            x8379
                                                                                                            x8378))))
                                                                                                 (boolean?/c
                                                                                                  j7433
                                                                                                  k7434
                                                                                                  x8377))))
                                                                                       g8376))))
                                                                           g8375))
                                                                       xj7429
                                                                       xk7430
                                                                       posn=?)))
                                                              g8374)))
                                                         (x8368
                                                          (letrec ((x8369
                                                                    (letrec ((x8372
                                                                              (input))
                                                                             (x8370
                                                                              (letrec ((x8371
                                                                                        (input)))
                                                                                (cons
                                                                                 x8371
                                                                                 '()))))
                                                                      (cons
                                                                       x8372
                                                                       x8370))))
                                                            (cons
                                                             'posn
                                                             x8369)))
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
                                                             x8364))))
                                                  (x8373 x8368 x8363))
                                                (letrec ((xj7436 (loc 'module))
                                                         (xk7437
                                                          (loc 'importer)))
                                                  (letrec ((g8380
                                                            (WORLD/C
                                                             xj7436
                                                             xk7437
                                                             WORLD)))
                                                    g8380))
                                                (letrec ((xj7438 (loc 'module))
                                                         (xk7439
                                                          (loc 'importer)))
                                                  (letrec ((g8381
                                                            (image/c
                                                             xj7438
                                                             xk7439
                                                             BACKGROUND)))
                                                    g8381))
                                                (letrec ((xj7440 (loc 'module))
                                                         (xk7441
                                                          (loc 'importer)))
                                                  (letrec ((g8382
                                                            (image/c
                                                             xj7440
                                                             xk7441
                                                             FOOD-IMAGE)))
                                                    g8382))
                                                (letrec ((xj7442 (loc 'module))
                                                         (xk7443
                                                          (loc 'importer)))
                                                  (letrec ((g8383
                                                            (image/c
                                                             xj7442
                                                             xk7443
                                                             SEGMENT-IMAGE)))
                                                    g8383))
                                                (letrec ((xj7444 (loc 'module))
                                                         (xk7445
                                                          (loc 'importer)))
                                                  (letrec ((g8384
                                                            (real?/c
                                                             xj7444
                                                             xk7445
                                                             GRID-SIZE)))
                                                    g8384))
                                                (letrec ((xj7446 (loc 'module))
                                                         (xk7447
                                                          (loc 'importer)))
                                                  (letrec ((g8385
                                                            (real?/c
                                                             xj7446
                                                             xk7447
                                                             BOARD-HEIGHT-PIXELS)))
                                                    g8385))
                                                (letrec ((xj7448 (loc 'module))
                                                         (xk7449
                                                          (loc 'importer)))
                                                  (letrec ((g8386
                                                            (real?/c
                                                             xj7448
                                                             xk7449
                                                             BOARD-WIDTH)))
                                                    g8386))
                                                (letrec ((xj7450 (loc 'module))
                                                         (xk7451
                                                          (loc 'importer)))
                                                  (letrec ((g8387
                                                            (real?/c
                                                             xj7450
                                                             xk7451
                                                             BOARD-HEIGHT)))
                                                    g8387))
                                                (letrec ((x8393
                                                          (letrec ((xj7452
                                                                    (loc
                                                                     'module))
                                                                   (xk7453
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8394
                                                                      ((lambda (j7455
                                                                                k7456
                                                                                f7457)
                                                                         (letrec ((g8395
                                                                                   (lambda (g7454)
                                                                                     (letrec ((g8396
                                                                                               (letrec ((x8397
                                                                                                         (letrec ((x8398
                                                                                                                   (SNAKE/C
                                                                                                                    j7455
                                                                                                                    k7456
                                                                                                                    g7454)))
                                                                                                           (f7457
                                                                                                            x8398))))
                                                                                                 (boolean?/c
                                                                                                  j7455
                                                                                                  k7456
                                                                                                  x8397))))
                                                                                       g8396))))
                                                                           g8395))
                                                                       xj7452
                                                                       xk7453
                                                                       snake-wall-collide?)))
                                                              g8394)))
                                                         (x8388
                                                          (letrec ((x8389
                                                                    (letrec ((x8392
                                                                              (input))
                                                                             (x8390
                                                                              (letrec ((x8391
                                                                                        (input)))
                                                                                (cons
                                                                                 x8391
                                                                                 '()))))
                                                                      (cons
                                                                       x8392
                                                                       x8390))))
                                                            (cons
                                                             'snake
                                                             x8389))))
                                                  (x8393 x8388))
                                                (letrec ((x8404
                                                          (letrec ((xj7458
                                                                    (loc
                                                                     'module))
                                                                   (xk7459
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8405
                                                                      ((lambda (j7461
                                                                                k7462
                                                                                f7463)
                                                                         (letrec ((g8406
                                                                                   (lambda (g7460)
                                                                                     (letrec ((g8407
                                                                                               (letrec ((x8408
                                                                                                         (letrec ((x8409
                                                                                                                   (SNAKE/C
                                                                                                                    j7461
                                                                                                                    k7462
                                                                                                                    g7460)))
                                                                                                           (f7463
                                                                                                            x8409))))
                                                                                                 (boolean?/c
                                                                                                  j7461
                                                                                                  k7462
                                                                                                  x8408))))
                                                                                       g8407))))
                                                                           g8406))
                                                                       xj7458
                                                                       xk7459
                                                                       snake-self-collide?)))
                                                              g8405)))
                                                         (x8399
                                                          (letrec ((x8400
                                                                    (letrec ((x8403
                                                                              (input))
                                                                             (x8401
                                                                              (letrec ((x8402
                                                                                        (input)))
                                                                                (cons
                                                                                 x8402
                                                                                 '()))))
                                                                      (cons
                                                                       x8403
                                                                       x8401))))
                                                            (cons
                                                             'snake
                                                             x8400))))
                                                  (x8404 x8399))
                                                (letrec ((x8411
                                                          (letrec ((xj7464
                                                                    (loc
                                                                     'module))
                                                                   (xk7465
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8412
                                                                      ((lambda (j7467
                                                                                k7468
                                                                                f7469)
                                                                         (letrec ((g8413
                                                                                   (lambda (g7466)
                                                                                     (letrec ((g8414
                                                                                               (letrec ((x8419
                                                                                                         (listof
                                                                                                          POSN/C))
                                                                                                        (x8415
                                                                                                         (letrec ((x8416
                                                                                                                   (letrec ((x8417
                                                                                                                             (letrec ((x8418
                                                                                                                                       (listof
                                                                                                                                        POSN/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x8418))))
                                                                                                                     (x8417
                                                                                                                      j7467
                                                                                                                      k7468
                                                                                                                      g7466))))
                                                                                                           (f7469
                                                                                                            x8416))))
                                                                                                 (x8419
                                                                                                  j7467
                                                                                                  k7468
                                                                                                  x8415))))
                                                                                       g8414))))
                                                                           g8413))
                                                                       xj7464
                                                                       xk7465
                                                                       cut-tail)))
                                                              g8412)))
                                                         (x8410 (input)))
                                                  (x8411 x8410))
                                                (letrec ((x8425
                                                          (letrec ((xj7470
                                                                    (loc
                                                                     'module))
                                                                   (xk7471
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8426
                                                                      ((lambda (j7473
                                                                                k7474
                                                                                f7475)
                                                                         (letrec ((g8427
                                                                                   (lambda (g7472)
                                                                                     (letrec ((g8428
                                                                                               (letrec ((x8429
                                                                                                         (letrec ((x8430
                                                                                                                   (SNAKE/C
                                                                                                                    j7473
                                                                                                                    k7474
                                                                                                                    g7472)))
                                                                                                           (f7475
                                                                                                            x8430))))
                                                                                                 (SNAKE/C
                                                                                                  j7473
                                                                                                  k7474
                                                                                                  x8429))))
                                                                                       g8428))))
                                                                           g8427))
                                                                       xj7470
                                                                       xk7471
                                                                       snake-slither)))
                                                              g8426)))
                                                         (x8420
                                                          (letrec ((x8421
                                                                    (letrec ((x8424
                                                                              (input))
                                                                             (x8422
                                                                              (letrec ((x8423
                                                                                        (input)))
                                                                                (cons
                                                                                 x8423
                                                                                 '()))))
                                                                      (cons
                                                                       x8424
                                                                       x8422))))
                                                            (cons
                                                             'snake
                                                             x8421))))
                                                  (x8425 x8420))
                                                (letrec ((x8436
                                                          (letrec ((xj7476
                                                                    (loc
                                                                     'module))
                                                                   (xk7477
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8437
                                                                      ((lambda (j7479
                                                                                k7480
                                                                                f7481)
                                                                         (letrec ((g8438
                                                                                   (lambda (g7478)
                                                                                     (letrec ((g8439
                                                                                               (letrec ((x8440
                                                                                                         (letrec ((x8441
                                                                                                                   (SNAKE/C
                                                                                                                    j7479
                                                                                                                    k7480
                                                                                                                    g7478)))
                                                                                                           (f7481
                                                                                                            x8441))))
                                                                                                 (SNAKE/C
                                                                                                  j7479
                                                                                                  k7480
                                                                                                  x8440))))
                                                                                       g8439))))
                                                                           g8438))
                                                                       xj7476
                                                                       xk7477
                                                                       snake-grow)))
                                                              g8437)))
                                                         (x8431
                                                          (letrec ((x8432
                                                                    (letrec ((x8435
                                                                              (input))
                                                                             (x8433
                                                                              (letrec ((x8434
                                                                                        (input)))
                                                                                (cons
                                                                                 x8434
                                                                                 '()))))
                                                                      (cons
                                                                       x8435
                                                                       x8433))))
                                                            (cons
                                                             'snake
                                                             x8432))))
                                                  (x8436 x8431))
                                                (letrec ((x8456
                                                          (letrec ((xj7482
                                                                    (loc
                                                                     'module))
                                                                   (xk7483
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8457
                                                                      ((lambda (j7486
                                                                                k7487
                                                                                f7488)
                                                                         (letrec ((g8458
                                                                                   (lambda (g7484
                                                                                            g7485)
                                                                                     (letrec ((g8459
                                                                                               (letrec ((x8460
                                                                                                         (letrec ((x8462
                                                                                                                   (WORLD/C
                                                                                                                    j7486
                                                                                                                    k7487
                                                                                                                    g7484))
                                                                                                                  (x8461
                                                                                                                   (DIR/C
                                                                                                                    j7486
                                                                                                                    k7487
                                                                                                                    g7485)))
                                                                                                           (f7488
                                                                                                            x8462
                                                                                                            x8461))))
                                                                                                 (WORLD/C
                                                                                                  j7486
                                                                                                  k7487
                                                                                                  x8460))))
                                                                                       g8459))))
                                                                           g8458))
                                                                       xj7482
                                                                       xk7483
                                                                       world-change-dir)))
                                                              g8457)))
                                                         (x8443
                                                          (letrec ((x8444
                                                                    (letrec ((x8451
                                                                              (letrec ((x8452
                                                                                        (letrec ((x8455
                                                                                                  (input))
                                                                                                 (x8453
                                                                                                  (letrec ((x8454
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8454
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8455
                                                                                           x8453))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8452)))
                                                                             (x8445
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
                                                                                           'posn
                                                                                           x8447))))
                                                                                (cons
                                                                                 x8446
                                                                                 '()))))
                                                                      (cons
                                                                       x8451
                                                                       x8445))))
                                                            (cons
                                                             'world
                                                             x8444)))
                                                         (x8442 (input)))
                                                  (x8456 x8443 x8442))
                                                (letrec ((x8476
                                                          (letrec ((xj7489
                                                                    (loc
                                                                     'module))
                                                                   (xk7490
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8477
                                                                      ((lambda (j7492
                                                                                k7493
                                                                                f7494)
                                                                         (letrec ((g8478
                                                                                   (lambda (g7491)
                                                                                     (letrec ((g8479
                                                                                               (letrec ((x8480
                                                                                                         (letrec ((x8481
                                                                                                                   (WORLD/C
                                                                                                                    j7492
                                                                                                                    k7493
                                                                                                                    g7491)))
                                                                                                           (f7494
                                                                                                            x8481))))
                                                                                                 (WORLD/C
                                                                                                  j7492
                                                                                                  k7493
                                                                                                  x8480))))
                                                                                       g8479))))
                                                                           g8478))
                                                                       xj7489
                                                                       xk7490
                                                                       world->world)))
                                                              g8477)))
                                                         (x8463
                                                          (letrec ((x8464
                                                                    (letrec ((x8471
                                                                              (letrec ((x8472
                                                                                        (letrec ((x8475
                                                                                                  (input))
                                                                                                 (x8473
                                                                                                  (letrec ((x8474
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8474
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8475
                                                                                           x8473))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8472)))
                                                                             (x8465
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
                                                                                           'posn
                                                                                           x8467))))
                                                                                (cons
                                                                                 x8466
                                                                                 '()))))
                                                                      (cons
                                                                       x8471
                                                                       x8465))))
                                                            (cons
                                                             'world
                                                             x8464))))
                                                  (x8476 x8463))
                                                (letrec ((x8496
                                                          (letrec ((xj7495
                                                                    (loc
                                                                     'module))
                                                                   (xk7496
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8497
                                                                      ((lambda (j7499
                                                                                k7500
                                                                                f7501)
                                                                         (letrec ((g8498
                                                                                   (lambda (g7497
                                                                                            g7498)
                                                                                     (letrec ((g8499
                                                                                               (letrec ((x8500
                                                                                                         (letrec ((x8502
                                                                                                                   (WORLD/C
                                                                                                                    j7499
                                                                                                                    k7500
                                                                                                                    g7497))
                                                                                                                  (x8501
                                                                                                                   (string?/c
                                                                                                                    j7499
                                                                                                                    k7500
                                                                                                                    g7498)))
                                                                                                           (f7501
                                                                                                            x8502
                                                                                                            x8501))))
                                                                                                 (WORLD/C
                                                                                                  j7499
                                                                                                  k7500
                                                                                                  x8500))))
                                                                                       g8499))))
                                                                           g8498))
                                                                       xj7495
                                                                       xk7496
                                                                       handle-key)))
                                                              g8497)))
                                                         (x8483
                                                          (letrec ((x8484
                                                                    (letrec ((x8491
                                                                              (letrec ((x8492
                                                                                        (letrec ((x8495
                                                                                                  (input))
                                                                                                 (x8493
                                                                                                  (letrec ((x8494
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8494
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8495
                                                                                           x8493))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8492)))
                                                                             (x8485
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
                                                                                           'posn
                                                                                           x8487))))
                                                                                (cons
                                                                                 x8486
                                                                                 '()))))
                                                                      (cons
                                                                       x8491
                                                                       x8485))))
                                                            (cons
                                                             'world
                                                             x8484)))
                                                         (x8482 (input)))
                                                  (x8496 x8483 x8482))
                                                (letrec ((x8516
                                                          (letrec ((xj7502
                                                                    (loc
                                                                     'module))
                                                                   (xk7503
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8517
                                                                      ((lambda (j7505
                                                                                k7506
                                                                                f7507)
                                                                         (letrec ((g8518
                                                                                   (lambda (g7504)
                                                                                     (letrec ((g8519
                                                                                               (letrec ((x8520
                                                                                                         (letrec ((x8521
                                                                                                                   (WORLD/C
                                                                                                                    j7505
                                                                                                                    k7506
                                                                                                                    g7504)))
                                                                                                           (f7507
                                                                                                            x8521))))
                                                                                                 (boolean?/c
                                                                                                  j7505
                                                                                                  k7506
                                                                                                  x8520))))
                                                                                       g8519))))
                                                                           g8518))
                                                                       xj7502
                                                                       xk7503
                                                                       game-over?)))
                                                              g8517)))
                                                         (x8503
                                                          (letrec ((x8504
                                                                    (letrec ((x8511
                                                                              (letrec ((x8512
                                                                                        (letrec ((x8515
                                                                                                  (input))
                                                                                                 (x8513
                                                                                                  (letrec ((x8514
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x8514
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x8515
                                                                                           x8513))))
                                                                                (cons
                                                                                 'snake
                                                                                 x8512)))
                                                                             (x8505
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
                                                                                           'posn
                                                                                           x8507))))
                                                                                (cons
                                                                                 x8506
                                                                                 '()))))
                                                                      (cons
                                                                       x8511
                                                                       x8505))))
                                                            (cons
                                                             'world
                                                             x8504))))
                                                  (x8516 x8503))
                                                (letrec ((x8535
                                                          (letrec ((xj7508
                                                                    (loc
                                                                     'module))
                                                                   (xk7509
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8536
                                                                      ((lambda (j7511
                                                                                k7512
                                                                                f7513)
                                                                         (letrec ((g8537
                                                                                   (lambda (g7510)
                                                                                     (letrec ((g8538
                                                                                               (letrec ((x8539
                                                                                                         (letrec ((x8540
                                                                                                                   (WORLD/C
                                                                                                                    j7511
                                                                                                                    k7512
                                                                                                                    g7510)))
                                                                                                           (f7513
                                                                                                            x8540))))
                                                                                                 (image/c
                                                                                                  j7511
                                                                                                  k7512
                                                                                                  x8539))))
                                                                                       g8538))))
                                                                           g8537))
                                                                       xj7508
                                                                       xk7509
                                                                       world->scene)))
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
                                                (letrec ((x8547
                                                          (letrec ((xj7514
                                                                    (loc
                                                                     'module))
                                                                   (xk7515
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8548
                                                                      ((lambda (j7518
                                                                                k7519
                                                                                f7520)
                                                                         (letrec ((g8549
                                                                                   (lambda (g7516
                                                                                            g7517)
                                                                                     (letrec ((g8550
                                                                                               (letrec ((x8551
                                                                                                         (letrec ((x8553
                                                                                                                   (POSN/C
                                                                                                                    j7518
                                                                                                                    k7519
                                                                                                                    g7516))
                                                                                                                  (x8552
                                                                                                                   (image/c
                                                                                                                    j7518
                                                                                                                    k7519
                                                                                                                    g7517)))
                                                                                                           (f7520
                                                                                                            x8553
                                                                                                            x8552))))
                                                                                                 (image/c
                                                                                                  j7518
                                                                                                  k7519
                                                                                                  x8551))))
                                                                                       g8550))))
                                                                           g8549))
                                                                       xj7514
                                                                       xk7515
                                                                       food+scene)))
                                                              g8548)))
                                                         (x8542
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
                                                             x8543)))
                                                         (x8541
                                                          (cons 'image '())))
                                                  (x8547 x8542 x8541))
                                                (letrec ((x8558
                                                          (letrec ((xj7521
                                                                    (loc
                                                                     'module))
                                                                   (xk7522
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8559
                                                                      ((lambda (j7527
                                                                                k7528
                                                                                f7529)
                                                                         (letrec ((g8560
                                                                                   (lambda (g7523
                                                                                            g7524
                                                                                            g7525
                                                                                            g7526)
                                                                                     (letrec ((g8561
                                                                                               (letrec ((x8562
                                                                                                         (letrec ((x8566
                                                                                                                   (image/c
                                                                                                                    j7527
                                                                                                                    k7528
                                                                                                                    g7523))
                                                                                                                  (x8565
                                                                                                                   (real?/c
                                                                                                                    j7527
                                                                                                                    k7528
                                                                                                                    g7524))
                                                                                                                  (x8564
                                                                                                                   (real?/c
                                                                                                                    j7527
                                                                                                                    k7528
                                                                                                                    g7525))
                                                                                                                  (x8563
                                                                                                                   (image/c
                                                                                                                    j7527
                                                                                                                    k7528
                                                                                                                    g7526)))
                                                                                                           (f7529
                                                                                                            x8566
                                                                                                            x8565
                                                                                                            x8564
                                                                                                            x8563))))
                                                                                                 (image/c
                                                                                                  j7527
                                                                                                  k7528
                                                                                                  x8562))))
                                                                                       g8561))))
                                                                           g8560))
                                                                       xj7521
                                                                       xk7522
                                                                       place-image-on-grid)))
                                                              g8559)))
                                                         (x8557
                                                          (cons 'image '()))
                                                         (x8556 (input))
                                                         (x8555 (input))
                                                         (x8554
                                                          (cons 'image '())))
                                                  (x8558
                                                   x8557
                                                   x8556
                                                   x8555
                                                   x8554))
                                                (letrec ((x8573
                                                          (letrec ((xj7530
                                                                    (loc
                                                                     'module))
                                                                   (xk7531
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8574
                                                                      ((lambda (j7534
                                                                                k7535
                                                                                f7536)
                                                                         (letrec ((g8575
                                                                                   (lambda (g7532
                                                                                            g7533)
                                                                                     (letrec ((g8576
                                                                                               (letrec ((x8577
                                                                                                         (letrec ((x8579
                                                                                                                   (SNAKE/C
                                                                                                                    j7534
                                                                                                                    k7535
                                                                                                                    g7532))
                                                                                                                  (x8578
                                                                                                                   (image/c
                                                                                                                    j7534
                                                                                                                    k7535
                                                                                                                    g7533)))
                                                                                                           (f7536
                                                                                                            x8579
                                                                                                            x8578))))
                                                                                                 (image/c
                                                                                                  j7534
                                                                                                  k7535
                                                                                                  x8577))))
                                                                                       g8576))))
                                                                           g8575))
                                                                       xj7530
                                                                       xk7531
                                                                       snake+scene)))
                                                              g8574)))
                                                         (x8568
                                                          (letrec ((x8569
                                                                    (letrec ((x8572
                                                                              (input))
                                                                             (x8570
                                                                              (letrec ((x8571
                                                                                        (input)))
                                                                                (cons
                                                                                 x8571
                                                                                 '()))))
                                                                      (cons
                                                                       x8572
                                                                       x8570))))
                                                            (cons
                                                             'snake
                                                             x8569)))
                                                         (x8567
                                                          (cons 'image '())))
                                                  (x8573 x8568 x8567))
                                                (letrec ((x8582
                                                          (letrec ((xj7537
                                                                    (loc
                                                                     'module))
                                                                   (xk7538
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8583
                                                                      ((lambda (j7541
                                                                                k7542
                                                                                f7543)
                                                                         (letrec ((g8584
                                                                                   (lambda (g7539
                                                                                            g7540)
                                                                                     (letrec ((g8585
                                                                                               (letrec ((x8586
                                                                                                         (letrec ((x8588
                                                                                                                   (letrec ((x8589
                                                                                                                             (listof
                                                                                                                              POSN/C)))
                                                                                                                     (x8589
                                                                                                                      j7541
                                                                                                                      k7542
                                                                                                                      g7539)))
                                                                                                                  (x8587
                                                                                                                   (image/c
                                                                                                                    j7541
                                                                                                                    k7542
                                                                                                                    g7540)))
                                                                                                           (f7543
                                                                                                            x8588
                                                                                                            x8587))))
                                                                                                 (image/c
                                                                                                  j7541
                                                                                                  k7542
                                                                                                  x8586))))
                                                                                       g8585))))
                                                                           g8584))
                                                                       xj7537
                                                                       xk7538
                                                                       segments+scene)))
                                                              g8583)))
                                                         (x8581 (input))
                                                         (x8580
                                                          (cons 'image '())))
                                                  (x8582 x8581 x8580))
                                                (letrec ((x8596
                                                          (letrec ((xj7544
                                                                    (loc
                                                                     'module))
                                                                   (xk7545
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8597
                                                                      ((lambda (j7548
                                                                                k7549
                                                                                f7550)
                                                                         (letrec ((g8598
                                                                                   (lambda (g7546
                                                                                            g7547)
                                                                                     (letrec ((g8599
                                                                                               (letrec ((x8600
                                                                                                         (letrec ((x8602
                                                                                                                   (POSN/C
                                                                                                                    j7548
                                                                                                                    k7549
                                                                                                                    g7546))
                                                                                                                  (x8601
                                                                                                                   (image/c
                                                                                                                    j7548
                                                                                                                    k7549
                                                                                                                    g7547)))
                                                                                                           (f7550
                                                                                                            x8602
                                                                                                            x8601))))
                                                                                                 (image/c
                                                                                                  j7548
                                                                                                  k7549
                                                                                                  x8600))))
                                                                                       g8599))))
                                                                           g8598))
                                                                       xj7544
                                                                       xk7545
                                                                       segment+scene)))
                                                              g8597)))
                                                         (x8591
                                                          (letrec ((x8592
                                                                    (letrec ((x8595
                                                                              (input))
                                                                             (x8593
                                                                              (letrec ((x8594
                                                                                        (input)))
                                                                                (cons
                                                                                 x8594
                                                                                 '()))))
                                                                      (cons
                                                                       x8595
                                                                       x8593))))
                                                            (cons
                                                             'posn
                                                             x8592)))
                                                         (x8590
                                                          (cons 'image '())))
                                                  (x8596 x8591 x8590))))))
                                      g8362))))
                          g7595))))
              g7578)))
    g7577))
