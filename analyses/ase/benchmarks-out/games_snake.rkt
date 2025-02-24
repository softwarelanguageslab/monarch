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
                      (letrec ((orig-+ +)
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
                        (letrec ((g7576 '())
                                 (g7577
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7578
                                                        (lambda (k j lst)
                                                          (letrec ((g7579
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7580
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7580))
                                                                     lst)))
                                                            g7579))))
                                                g7578)))
                                           (real?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7581
                                                        (letrec ((x-cnd7582
                                                                  (real?
                                                                   g7267)))
                                                          (if x-cnd7582
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'real?)))))
                                                g7581)))
                                           (boolean?/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7583
                                                        (letrec ((x-cnd7584
                                                                  (boolean?
                                                                   g7270)))
                                                          (if x-cnd7584
                                                            g7270
                                                            (blame
                                                             g7268
                                                             'boolean?)))))
                                                g7583)))
                                           (number?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7585
                                                        (letrec ((x-cnd7586
                                                                  (number?
                                                                   g7273)))
                                                          (if x-cnd7586
                                                            g7273
                                                            (blame
                                                             g7271
                                                             'number?)))))
                                                g7585)))
                                           (any/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7587
                                                        (letrec ((x-cnd7588
                                                                  ((lambda (v)
                                                                     (letrec ((g7589
                                                                               #t))
                                                                       g7589))
                                                                   g7276)))
                                                          (if x-cnd7588
                                                            g7276
                                                            (blame
                                                             g7274
                                                             '(lambda (v)
                                                                #t))))))
                                                g7587)))
                                           (any?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7590
                                                        (letrec ((x-cnd7591
                                                                  ((lambda (v)
                                                                     (letrec ((g7592
                                                                               #t))
                                                                       g7592))
                                                                   g7279)))
                                                          (if x-cnd7591
                                                            g7279
                                                            (blame
                                                             g7277
                                                             '(lambda (v)
                                                                #t))))))
                                                g7590)))
                                           (cons?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7593
                                                        (letrec ((x-cnd7594
                                                                  (pair?
                                                                   g7282)))
                                                          (if x-cnd7594
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'pair?)))))
                                                g7593)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7595
                                                        (letrec ((x-cnd7596
                                                                  (pair?
                                                                   g7285)))
                                                          (if x-cnd7596
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'pair?)))))
                                                g7595)))
                                           (integer?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7597
                                                        (letrec ((x-cnd7598
                                                                  (integer?
                                                                   g7288)))
                                                          (if x-cnd7598
                                                            g7288
                                                            (blame
                                                             g7286
                                                             'integer?)))))
                                                g7597)))
                                           (symbol?/c
                                            (lambda (g7289 g7290 g7291)
                                              (letrec ((g7599
                                                        (letrec ((x-cnd7600
                                                                  (symbol?
                                                                   g7291)))
                                                          (if x-cnd7600
                                                            g7291
                                                            (blame
                                                             g7289
                                                             'symbol?)))))
                                                g7599)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7601
                                                        (lambda (k j v)
                                                          (letrec ((g7602
                                                                    (letrec ((x-cnd7603
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7603
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7602))))
                                                g7601)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7604
                                                        (lambda (k j v)
                                                          (letrec ((g7605
                                                                    (letrec ((x-cnd7606
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7606
                                                                        '()
                                                                        (letrec ((x7610
                                                                                  (letrec ((x7611
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7611)))
                                                                                 (x7607
                                                                                  (letrec ((x7609
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7608
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7609
                                                                                     k
                                                                                     j
                                                                                     x7608))))
                                                                          (orig-cons
                                                                           x7610
                                                                           x7607))))))
                                                            g7605))))
                                                g7604)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7612 #t)) g7612)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7613
                                                        (letrec ((x7614
                                                                  (= v 0)))
                                                          (not x7614))))
                                                g7613)))
                                           (nonzero?/c
                                            (lambda (g7292 g7293 g7294)
                                              (letrec ((g7615
                                                        (letrec ((x-cnd7616
                                                                  ((lambda (v)
                                                                     (letrec ((g7617
                                                                               (letrec ((x7618
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7618))))
                                                                       g7617))
                                                                   g7294)))
                                                          (if x-cnd7616
                                                            g7294
                                                            (blame
                                                             g7292
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7615)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7619
                                                        (lambda (g7295
                                                                 g7296
                                                                 g7297)
                                                          (letrec ((g7620
                                                                    (letrec ((x-cnd7621
                                                                              ((lambda (v)
                                                                                 (letrec ((g7622
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7622))
                                                                               g7297)))
                                                                      (if x-cnd7621
                                                                        g7297
                                                                        (blame
                                                                         g7295
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7620))))
                                                g7619)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7623
                                                        (lambda (g7298
                                                                 g7299
                                                                 g7300)
                                                          (letrec ((g7624
                                                                    (letrec ((x-cnd7625
                                                                              ((lambda (v)
                                                                                 (letrec ((g7626
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7626))
                                                                               g7300)))
                                                                      (if x-cnd7625
                                                                        g7300
                                                                        (blame
                                                                         g7298
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7624))))
                                                g7623)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7627
                                                        (lambda (g7301
                                                                 g7302
                                                                 g7303)
                                                          (letrec ((g7628
                                                                    (letrec ((x-cnd7629
                                                                              ((lambda (v)
                                                                                 (letrec ((g7630
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7630))
                                                                               g7303)))
                                                                      (if x-cnd7629
                                                                        g7303
                                                                        (blame
                                                                         g7301
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7628))))
                                                g7627)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7631
                                                        (lambda (g7304
                                                                 g7305
                                                                 g7306)
                                                          (letrec ((g7632
                                                                    (letrec ((x-cnd7633
                                                                              ((lambda (v)
                                                                                 (letrec ((g7634
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7634))
                                                                               g7306)))
                                                                      (if x-cnd7633
                                                                        g7306
                                                                        (blame
                                                                         g7304
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7632))))
                                                g7631)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7635
                                                        (lambda (g7307
                                                                 g7308
                                                                 g7309)
                                                          (letrec ((g7636
                                                                    (letrec ((x-cnd7637
                                                                              ((lambda (v)
                                                                                 (letrec ((g7638
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7638))
                                                                               g7309)))
                                                                      (if x-cnd7637
                                                                        g7309
                                                                        (blame
                                                                         g7307
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7636))))
                                                g7635)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7639 v)) g7639)))
                                           (+
                                            (letrec ((xj7310 'server)
                                                     (xk7311 'client))
                                              (letrec ((g7640
                                                        ((lambda (j7314
                                                                  k7315
                                                                  f7316)
                                                           (letrec ((g7642
                                                                     (lambda (g7312
                                                                              g7313)
                                                                       (letrec ((g7643
                                                                                 (letrec ((x7644
                                                                                           (letrec ((x7646
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7312))
                                                                                                    (x7645
                                                                                                     (number?/c
                                                                                                      j7314
                                                                                                      k7315
                                                                                                      g7313)))
                                                                                             (f7316
                                                                                              x7646
                                                                                              x7645))))
                                                                                   (number?/c
                                                                                    j7314
                                                                                    k7315
                                                                                    x7644))))
                                                                         g7643))))
                                                             g7642))
                                                         xj7310
                                                         xk7311
                                                         (lambda (a b)
                                                           (letrec ((g7641
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7641)))))
                                                g7640)))
                                           (-
                                            (letrec ((xj7317 'server)
                                                     (xk7318 'client))
                                              (letrec ((g7647
                                                        ((lambda (j7321
                                                                  k7322
                                                                  f7323)
                                                           (letrec ((g7649
                                                                     (lambda (g7319
                                                                              g7320)
                                                                       (letrec ((g7650
                                                                                 (letrec ((x7651
                                                                                           (letrec ((x7653
                                                                                                     (number?/c
                                                                                                      j7321
                                                                                                      k7322
                                                                                                      g7319))
                                                                                                    (x7652
                                                                                                     (number?/c
                                                                                                      j7321
                                                                                                      k7322
                                                                                                      g7320)))
                                                                                             (f7323
                                                                                              x7653
                                                                                              x7652))))
                                                                                   (number?/c
                                                                                    j7321
                                                                                    k7322
                                                                                    x7651))))
                                                                         g7650))))
                                                             g7649))
                                                         xj7317
                                                         xk7318
                                                         (lambda (a b)
                                                           (letrec ((g7648
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7648)))))
                                                g7647)))
                                           (*
                                            (letrec ((xj7324 'server)
                                                     (xk7325 'client))
                                              (letrec ((g7654
                                                        ((lambda (j7328
                                                                  k7329
                                                                  f7330)
                                                           (letrec ((g7656
                                                                     (lambda (g7326
                                                                              g7327)
                                                                       (letrec ((g7657
                                                                                 (letrec ((x7658
                                                                                           (letrec ((x7660
                                                                                                     (number?/c
                                                                                                      j7328
                                                                                                      k7329
                                                                                                      g7326))
                                                                                                    (x7659
                                                                                                     (number?/c
                                                                                                      j7328
                                                                                                      k7329
                                                                                                      g7327)))
                                                                                             (f7330
                                                                                              x7660
                                                                                              x7659))))
                                                                                   (number?/c
                                                                                    j7328
                                                                                    k7329
                                                                                    x7658))))
                                                                         g7657))))
                                                             g7656))
                                                         xj7324
                                                         xk7325
                                                         (lambda (a b)
                                                           (letrec ((g7655
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7655)))))
                                                g7654)))
                                           (<
                                            (letrec ((xj7331 'server)
                                                     (xk7332 'client))
                                              (letrec ((g7661
                                                        ((lambda (j7335
                                                                  k7336
                                                                  f7337)
                                                           (letrec ((g7663
                                                                     (lambda (g7333
                                                                              g7334)
                                                                       (letrec ((g7664
                                                                                 (letrec ((x7665
                                                                                           (letrec ((x7667
                                                                                                     (number?/c
                                                                                                      j7335
                                                                                                      k7336
                                                                                                      g7333))
                                                                                                    (x7666
                                                                                                     (number?/c
                                                                                                      j7335
                                                                                                      k7336
                                                                                                      g7334)))
                                                                                             (f7337
                                                                                              x7667
                                                                                              x7666))))
                                                                                   (boolean?/c
                                                                                    j7335
                                                                                    k7336
                                                                                    x7665))))
                                                                         g7664))))
                                                             g7663))
                                                         xj7331
                                                         xk7332
                                                         (lambda (a b)
                                                           (letrec ((g7662
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7662)))))
                                                g7661)))
                                           (>
                                            (letrec ((xj7338 'server)
                                                     (xk7339 'client))
                                              (letrec ((g7668
                                                        ((lambda (j7342
                                                                  k7343
                                                                  f7344)
                                                           (letrec ((g7670
                                                                     (lambda (g7340
                                                                              g7341)
                                                                       (letrec ((g7671
                                                                                 (letrec ((x7672
                                                                                           (letrec ((x7674
                                                                                                     (number?/c
                                                                                                      j7342
                                                                                                      k7343
                                                                                                      g7340))
                                                                                                    (x7673
                                                                                                     (number?/c
                                                                                                      j7342
                                                                                                      k7343
                                                                                                      g7341)))
                                                                                             (f7344
                                                                                              x7674
                                                                                              x7673))))
                                                                                   (boolean?/c
                                                                                    j7342
                                                                                    k7343
                                                                                    x7672))))
                                                                         g7671))))
                                                             g7670))
                                                         xj7338
                                                         xk7339
                                                         (lambda (a b)
                                                           (letrec ((g7669
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7669)))))
                                                g7668)))
                                           (<=
                                            (letrec ((xj7345 'server)
                                                     (xk7346 'client))
                                              (letrec ((g7675
                                                        ((lambda (j7349
                                                                  k7350
                                                                  f7351)
                                                           (letrec ((g7677
                                                                     (lambda (g7347
                                                                              g7348)
                                                                       (letrec ((g7678
                                                                                 (letrec ((x7679
                                                                                           (letrec ((x7681
                                                                                                     (number?/c
                                                                                                      j7349
                                                                                                      k7350
                                                                                                      g7347))
                                                                                                    (x7680
                                                                                                     (number?/c
                                                                                                      j7349
                                                                                                      k7350
                                                                                                      g7348)))
                                                                                             (f7351
                                                                                              x7681
                                                                                              x7680))))
                                                                                   (boolean?/c
                                                                                    j7349
                                                                                    k7350
                                                                                    x7679))))
                                                                         g7678))))
                                                             g7677))
                                                         xj7345
                                                         xk7346
                                                         (lambda (a b)
                                                           (letrec ((g7676
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7676)))))
                                                g7675)))
                                           (>=
                                            (letrec ((xj7352 'server)
                                                     (xk7353 'client))
                                              (letrec ((g7682
                                                        ((lambda (j7356
                                                                  k7357
                                                                  f7358)
                                                           (letrec ((g7684
                                                                     (lambda (g7354
                                                                              g7355)
                                                                       (letrec ((g7685
                                                                                 (letrec ((x7686
                                                                                           (letrec ((x7688
                                                                                                     (number?/c
                                                                                                      j7356
                                                                                                      k7357
                                                                                                      g7354))
                                                                                                    (x7687
                                                                                                     (number?/c
                                                                                                      j7356
                                                                                                      k7357
                                                                                                      g7355)))
                                                                                             (f7358
                                                                                              x7688
                                                                                              x7687))))
                                                                                   (boolean?/c
                                                                                    j7356
                                                                                    k7357
                                                                                    x7686))))
                                                                         g7685))))
                                                             g7684))
                                                         xj7352
                                                         xk7353
                                                         (lambda (a b)
                                                           (letrec ((g7683
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7683)))))
                                                g7682)))
                                           (/
                                            (letrec ((xj7359 'server)
                                                     (xk7360 'client))
                                              (letrec ((g7689
                                                        ((lambda (j7363
                                                                  k7364
                                                                  f7365)
                                                           (letrec ((g7691
                                                                     (lambda (g7361
                                                                              g7362)
                                                                       (letrec ((g7692
                                                                                 (letrec ((x7693
                                                                                           (letrec ((x7695
                                                                                                     (number?/c
                                                                                                      j7363
                                                                                                      k7364
                                                                                                      g7361))
                                                                                                    (x7694
                                                                                                     (number?/c
                                                                                                      j7363
                                                                                                      k7364
                                                                                                      g7362)))
                                                                                             (f7365
                                                                                              x7695
                                                                                              x7694))))
                                                                                   (number?/c
                                                                                    j7363
                                                                                    k7364
                                                                                    x7693))))
                                                                         g7692))))
                                                             g7691))
                                                         xj7359
                                                         xk7360
                                                         (lambda (a b)
                                                           (letrec ((g7690
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7690)))))
                                                g7689)))
                                           (car
                                            (letrec ((xj7366 'server)
                                                     (xk7367 'client))
                                              (letrec ((g7696
                                                        ((lambda (j7369
                                                                  k7370
                                                                  f7371)
                                                           (letrec ((g7698
                                                                     (lambda (g7368)
                                                                       (letrec ((g7699
                                                                                 (letrec ((x7700
                                                                                           (letrec ((x7701
                                                                                                     (pair?/c
                                                                                                      j7369
                                                                                                      k7370
                                                                                                      g7368)))
                                                                                             (f7371
                                                                                              x7701))))
                                                                                   (any/c
                                                                                    j7369
                                                                                    k7370
                                                                                    x7700))))
                                                                         g7699))))
                                                             g7698))
                                                         xj7366
                                                         xk7367
                                                         (lambda (p)
                                                           (letrec ((g7697
                                                                     (orig-car
                                                                      p)))
                                                             g7697)))))
                                                g7696)))
                                           (cdr
                                            (letrec ((xj7372 'server)
                                                     (xk7373 'client))
                                              (letrec ((g7702
                                                        ((lambda (j7375
                                                                  k7376
                                                                  f7377)
                                                           (letrec ((g7704
                                                                     (lambda (g7374)
                                                                       (letrec ((g7705
                                                                                 (letrec ((x7706
                                                                                           (letrec ((x7707
                                                                                                     (pair?/c
                                                                                                      j7375
                                                                                                      k7376
                                                                                                      g7374)))
                                                                                             (f7377
                                                                                              x7707))))
                                                                                   (any/c
                                                                                    j7375
                                                                                    k7376
                                                                                    x7706))))
                                                                         g7705))))
                                                             g7704))
                                                         xj7372
                                                         xk7373
                                                         (lambda (p)
                                                           (letrec ((g7703
                                                                     (orig-cdr
                                                                      p)))
                                                             g7703)))))
                                                g7702)))
                                           (cons
                                            (letrec ((xj7378 'server)
                                                     (xk7379 'client))
                                              (letrec ((g7708
                                                        ((lambda (j7382
                                                                  k7383
                                                                  f7384)
                                                           (letrec ((g7710
                                                                     (lambda (g7380
                                                                              g7381)
                                                                       (letrec ((g7711
                                                                                 (letrec ((x7712
                                                                                           (letrec ((x7714
                                                                                                     (any/c
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7380))
                                                                                                    (x7713
                                                                                                     (any/c
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7381)))
                                                                                             (f7384
                                                                                              x7714
                                                                                              x7713))))
                                                                                   (pair?/c
                                                                                    j7382
                                                                                    k7383
                                                                                    x7712))))
                                                                         g7711))))
                                                             g7710))
                                                         xj7378
                                                         xk7379
                                                         (lambda (a b)
                                                           (letrec ((g7709
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7709)))))
                                                g7708)))
                                           (vector-ref
                                            (letrec ((xj7385 'server)
                                                     (xk7386 'client))
                                              (letrec ((g7715
                                                        ((lambda (j7388
                                                                  k7389
                                                                  f7390)
                                                           (letrec ((g7717
                                                                     (lambda (g7387)
                                                                       (letrec ((g7718
                                                                                 (letrec ((x7719
                                                                                           (letrec ((x7720
                                                                                                     (vector?/c
                                                                                                      j7388
                                                                                                      k7389
                                                                                                      g7387)))
                                                                                             (f7390
                                                                                              x7720))))
                                                                                   (integer?/c
                                                                                    j7388
                                                                                    k7389
                                                                                    x7719))))
                                                                         g7718))))
                                                             g7717))
                                                         xj7385
                                                         xk7386
                                                         (lambda (v i)
                                                           (letrec ((g7716
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7716)))))
                                                g7715)))
                                           (vector-set!
                                            (letrec ((xj7391 'server)
                                                     (xk7392 'client))
                                              (letrec ((g7721
                                                        ((lambda (j7395
                                                                  k7396
                                                                  f7397)
                                                           (letrec ((g7723
                                                                     (lambda (g7393
                                                                              g7394)
                                                                       (letrec ((g7724
                                                                                 (letrec ((x7725
                                                                                           (letrec ((x7727
                                                                                                     (vector?/c
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7393))
                                                                                                    (x7726
                                                                                                     (integer?/c
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7394)))
                                                                                             (f7397
                                                                                              x7727
                                                                                              x7726))))
                                                                                   (any/c
                                                                                    j7395
                                                                                    k7396
                                                                                    x7725))))
                                                                         g7724))))
                                                             g7723))
                                                         xj7391
                                                         xk7392
                                                         (lambda (vec i v)
                                                           (letrec ((g7722
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7722)))))
                                                g7721)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7728
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7728)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7729
                                                        (letrec ((x7730
                                                                  (letrec ((x7731
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7731))))
                                                          (cdr x7730))))
                                                g7729)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7732
                                                        (letrec ((x7735
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7735)))
                                                       (g7733
                                                        (letrec ((x7736
                                                                  (list? l)))
                                                          (assert x7736)))
                                                       (g7734
                                                        (letrec ((x-cnd7737
                                                                  (null? l)))
                                                          (if x-cnd7737
                                                            '()
                                                            (letrec ((x7740
                                                                      (letrec ((x7741
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7741)))
                                                                     (x7738
                                                                      (letrec ((x7739
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7739))))
                                                              (cons
                                                               x7740
                                                               x7738))))))
                                                g7734)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7742
                                                        (letrec ((x7743
                                                                  (car x)))
                                                          (cdr x7743))))
                                                g7742)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7744
                                                        (letrec ((x7745
                                                                  (letrec ((x7746
                                                                            (letrec ((x7747
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7747))))
                                                                    (cdr
                                                                     x7746))))
                                                          (car x7745))))
                                                g7744)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7748
                                                        (letrec ((x7749
                                                                  (letrec ((x7750
                                                                            (letrec ((x7751
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7751))))
                                                                    (car
                                                                     x7750))))
                                                          (cdr x7749))))
                                                g7748)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7752
                                                        (letrec ((x7755
                                                                  (string?
                                                                   filename)))
                                                          (assert x7755)))
                                                       (g7753
                                                        (letrec ((x7756
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7756)))
                                                       (g7754
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7757
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7758 res))
                                                            g7758))))
                                                g7754)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7759
                                                        (letrec ((x7760
                                                                  (letrec ((x7761
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7761))))
                                                          (car x7760))))
                                                g7759)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7762
                                                        (letrec ((x7763
                                                                  (letrec ((x7764
                                                                            (letrec ((x7765
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7765))))
                                                                    (car
                                                                     x7764))))
                                                          (cdr x7763))))
                                                g7762)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7766
                                                        (letrec ((x7768
                                                                  (list? l)))
                                                          (assert x7768)))
                                                       (g7767
                                                        (letrec ((x-cnd7769
                                                                  (null? l)))
                                                          (if x-cnd7769
                                                            #f
                                                            (letrec ((x-cnd7770
                                                                      (letrec ((x7771
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7771
                                                                         k))))
                                                              (if x-cnd7770
                                                                (car l)
                                                                (letrec ((x7772
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7772))))))))
                                                g7767)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7773
                                                        (letrec ((x7774
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7774))))
                                                g7773)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7775
                                                        (letrec ((x7777
                                                                  (list? l)))
                                                          (assert x7777)))
                                                       (g7776
                                                        (letrec ((x-cnd7778
                                                                  (null? l)))
                                                          (if x-cnd7778
                                                            ""
                                                            (letrec ((x7781
                                                                      (letrec ((x7782
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7782)))
                                                                     (x7779
                                                                      (letrec ((x7780
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7780))))
                                                              (string-append
                                                               x7781
                                                               x7779))))))
                                                g7776)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7783
                                                        (letrec ((x7786
                                                                  (char? c1)))
                                                          (assert x7786)))
                                                       (g7784
                                                        (letrec ((x7787
                                                                  (char? c2)))
                                                          (assert x7787)))
                                                       (g7785
                                                        (letrec ((val7243
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7788
                                                                    (if val7243
                                                                      val7243
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7788))))
                                                g7785)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7789
                                                        (letrec ((x7790
                                                                  (letrec ((x7791
                                                                            (letrec ((x7792
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7792))))
                                                                    (cdr
                                                                     x7791))))
                                                          (cdr x7790))))
                                                g7789)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7793
                                                        (letrec ((x7796
                                                                  (list? l)))
                                                          (assert x7796)))
                                                       (g7794
                                                        (letrec ((x7797
                                                                  (number?)))
                                                          (assert x7797)))
                                                       (g7795
                                                        (letrec ((x-cnd7798
                                                                  (zero? k)))
                                                          (if x-cnd7798
                                                            x
                                                            (letrec ((x7800
                                                                      (cdr x))
                                                                     (x7799
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7800
                                                               x7799))))))
                                                g7795)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7801 '())) g7801)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7802
                                                        (letrec ((x-cnd7803
                                                                  (letrec ((x7804
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7804))))
                                                          (if x-cnd7803
                                                            (letrec ((x7805
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7805))
                                                            #f))))
                                                g7802)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7806
                                                        (letrec ((x7808
                                                                  (number? x)))
                                                          (assert x7808)))
                                                       (g7807
                                                        (letrec ((val7244
                                                                  (< x y)))
                                                          (letrec ((g7809
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7810
                                                                                  (if val7245
                                                                                    val7245
                                                                                    #f)))
                                                                          g7810)))))
                                                            g7809))))
                                                g7807)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7811
                                                        (letrec ((val7246
                                                                  (letrec ((x7812
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7812
                                                                     9))))
                                                          (letrec ((g7813
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x7814
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7814
                                                                                   10))))
                                                                        (letrec ((g7815
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((x7816
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7816
                                                                                       32)))))
                                                                          g7815)))))
                                                            g7813))))
                                                g7811)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7817
                                                        (letrec ((x7818
                                                                  (letrec ((x7819
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7819))))
                                                          (cdr x7818))))
                                                g7817)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7820
                                                        (letrec ((x7822
                                                                  (number? x)))
                                                          (assert x7822)))
                                                       (g7821 (> x 0)))
                                                g7821)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7823 #f)) g7823)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7824
                                                        (letrec ((x7825
                                                                  (cdr x)))
                                                          (cdr x7825))))
                                                g7824)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7826
                                                        (letrec ((x7828
                                                                  (number? x)))
                                                          (assert x7828)))
                                                       (g7827
                                                        (letrec ((x-cnd7829
                                                                  (< x 0)))
                                                          (if x-cnd7829
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7827)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7830
                                                        (letrec ((val7248
                                                                  (eq? a b)))
                                                          (letrec ((g7831
                                                                    (if val7248
                                                                      val7248
                                                                      (letrec ((val7249
                                                                                (letrec ((x-cnd7832
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7832
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7833
                                                                                  (if val7249
                                                                                    val7249
                                                                                    (letrec ((val7250
                                                                                              (letrec ((x-cnd7834
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7834
                                                                                                  (letrec ((x-cnd7835
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7835
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7836
                                                                                                (if val7250
                                                                                                  val7250
                                                                                                  (letrec ((val7251
                                                                                                            (letrec ((x-cnd7837
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7837
                                                                                                                (letrec ((x-cnd7838
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7838
                                                                                                                    (letrec ((x-cnd7839
                                                                                                                              (letrec ((x7841
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7840
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7841
                                                                                                                                 x7840))))
                                                                                                                      (if x-cnd7839
                                                                                                                        (letrec ((x7843
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7842
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7843
                                                                                                                           x7842))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7844
                                                                                                              (if val7251
                                                                                                                val7251
                                                                                                                (letrec ((x-cnd7845
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7845
                                                                                                                    (letrec ((x-cnd7846
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7846
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7847
                                                                                                                                    (letrec ((x-cnd7848
                                                                                                                                              (letrec ((x7849
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7849
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7848
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7850
                                                                                                                                                              (letrec ((val7252
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7851
                                                                                                                                                                          (if val7252
                                                                                                                                                                            val7252
                                                                                                                                                                            (letrec ((x-cnd7852
                                                                                                                                                                                      (letrec ((x7854
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7853
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7854
                                                                                                                                                                                         x7853))))
                                                                                                                                                                              (if x-cnd7852
                                                                                                                                                                                (letrec ((x7855
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7855))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7851))))
                                                                                                                                                      g7850))))
                                                                                                                                          (letrec ((g7856
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7856))
                                                                                                                                        #f))))
                                                                                                                            g7847))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7844)))))
                                                                                        g7836)))))
                                                                          g7833)))))
                                                            g7831))))
                                                g7830)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7857
                                                        (letrec ((x7858
                                                                  (letrec ((x7859
                                                                            (letrec ((x7860
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7860))))
                                                                    (car
                                                                     x7859))))
                                                          (cdr x7858))))
                                                g7857)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7861
                                                        (letrec ((x7862
                                                                  (letrec ((x7863
                                                                            (letrec ((x7864
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7864))))
                                                                    (car
                                                                     x7863))))
                                                          (car x7862))))
                                                g7861)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7865 (eq? x y)))
                                                g7865)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7866
                                                        (letrec ((x7868
                                                                  (number? x)))
                                                          (assert x7868)))
                                                       (g7867
                                                        (letrec ((val7253
                                                                  (> x y)))
                                                          (letrec ((g7869
                                                                    (if val7253
                                                                      val7253
                                                                      (letrec ((val7254
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7870
                                                                                  (if val7254
                                                                                    val7254
                                                                                    #f)))
                                                                          g7870)))))
                                                            g7869))))
                                                g7867)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7871
                                                        (letrec ((x7874
                                                                  (string?
                                                                   filename)))
                                                          (assert x7874)))
                                                       (g7872
                                                        (letrec ((x7875
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7875)))
                                                       (g7873
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7876
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7877 res))
                                                            g7877))))
                                                g7873)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7878 (cons x '())))
                                                g7878)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7879
                                                        (letrec ((x7882
                                                                  (char? c1)))
                                                          (assert x7882)))
                                                       (g7880
                                                        (letrec ((x7883
                                                                  (char? c2)))
                                                          (assert x7883)))
                                                       (g7881
                                                        (letrec ((val7255
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7884
                                                                    (if val7255
                                                                      val7255
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7884))))
                                                g7881)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7885
                                                        (letrec ((x7886
                                                                  (letrec ((x7887
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7887))))
                                                          (cdr x7886))))
                                                g7885)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7888
                                                        (letrec ((x7889
                                                                  (letrec ((x7890
                                                                            (letrec ((x7891
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7891))))
                                                                    (car
                                                                     x7890))))
                                                          (cdr x7889))))
                                                g7888)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7892
                                                        (letrec ((x7893
                                                                  (letrec ((x7894
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7894))))
                                                          (car x7893))))
                                                g7892)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7895
                                                        (letrec ((x7896
                                                                  (letrec ((x7897
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7897))))
                                                          (car x7896))))
                                                g7895)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7898
                                                        (letrec ((x7901
                                                                  (char? c1)))
                                                          (assert x7901)))
                                                       (g7899
                                                        (letrec ((x7902
                                                                  (char? c2)))
                                                          (assert x7902)))
                                                       (g7900
                                                        (letrec ((x7903
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7903))))
                                                g7900)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7904
                                                        (letrec ((x7905
                                                                  (letrec ((x7906
                                                                            (letrec ((x7907
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7907))))
                                                                    (car
                                                                     x7906))))
                                                          (car x7905))))
                                                g7904)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7908
                                                        (letrec ((x7910
                                                                  (number? x)))
                                                          (assert x7910)))
                                                       (g7909 (< x 0)))
                                                g7909)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7911 (memq e l)))
                                                g7911)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7912
                                                        (letrec ((x7913
                                                                  (letrec ((x7914
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7914))))
                                                          (car x7913))))
                                                g7912)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7915 '())) g7915)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7916
                                                        (letrec ((x7918
                                                                  (list? l)))
                                                          (assert x7918)))
                                                       (g7917
                                                        (letrec ((x-cnd7919
                                                                  (null? l)))
                                                          (if x-cnd7919
                                                            '()
                                                            (letrec ((x7922
                                                                      (letrec ((x7923
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x7923)))
                                                                     (x7920
                                                                      (letrec ((x7921
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x7921))))
                                                              (append
                                                               x7922
                                                               x7920))))))
                                                g7917)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g7924
                                                        (letrec ((x7925
                                                                  (letrec ((x7926
                                                                            (letrec ((x7927
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7927))))
                                                                    (car
                                                                     x7926))))
                                                          (car x7925))))
                                                g7924)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g7928
                                                        (letrec ((x7929
                                                                  (letrec ((x7930
                                                                            (letrec ((x7931
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7931))))
                                                                    (cdr
                                                                     x7930))))
                                                          (cdr x7929))))
                                                g7928)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g7932
                                                        (letrec ((x7934
                                                                  (number? x)))
                                                          (assert x7934)))
                                                       (g7933
                                                        (letrec ((x7935
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x7935))))
                                                g7933)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g7936
                                                        (letrec ((x7937
                                                                  (letrec ((x7938
                                                                            (letrec ((x7939
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7939))))
                                                                    (car
                                                                     x7938))))
                                                          (car x7937))))
                                                g7936)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g7940
                                                        (letrec ((x7943
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7943)))
                                                       (g7941
                                                        (letrec ((x7944
                                                                  (list?
                                                                   args)))
                                                          (assert x7944)))
                                                       (g7942
                                                        (letrec ((x-cnd7945
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd7945
                                                            (letrec ((g7946
                                                                      (proc)))
                                                              g7946)
                                                            (letrec ((x-cnd7947
                                                                      (letrec ((x7948
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x7948))))
                                                              (if x-cnd7947
                                                                (letrec ((g7949
                                                                          (letrec ((x7950
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x7950))))
                                                                  g7949)
                                                                (letrec ((x-cnd7951
                                                                          (letrec ((x7952
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x7952))))
                                                                  (if x-cnd7951
                                                                    (letrec ((g7953
                                                                              (letrec ((x7955
                                                                                        (car
                                                                                         args))
                                                                                       (x7954
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x7955
                                                                                 x7954))))
                                                                      g7953)
                                                                    (letrec ((x-cnd7956
                                                                              (letrec ((x7957
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x7957))))
                                                                      (if x-cnd7956
                                                                        (letrec ((g7958
                                                                                  (letrec ((x7961
                                                                                            (car
                                                                                             args))
                                                                                           (x7960
                                                                                            (cadr
                                                                                             args))
                                                                                           (x7959
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x7961
                                                                                     x7960
                                                                                     x7959))))
                                                                          g7958)
                                                                        (letrec ((x-cnd7962
                                                                                  (letrec ((x7963
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x7963))))
                                                                          (if x-cnd7962
                                                                            (letrec ((g7964
                                                                                      (letrec ((x7968
                                                                                                (car
                                                                                                 args))
                                                                                               (x7967
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x7966
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x7965
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x7968
                                                                                         x7967
                                                                                         x7966
                                                                                         x7965))))
                                                                              g7964)
                                                                            (letrec ((x-cnd7969
                                                                                      (letrec ((x7970
                                                                                                (letrec ((x7971
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x7971))))
                                                                                        (null?
                                                                                         x7970))))
                                                                              (if x-cnd7969
                                                                                (letrec ((g7972
                                                                                          (letrec ((x7978
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x7977
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x7976
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x7975
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x7973
                                                                                                    (letrec ((x7974
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x7974))))
                                                                                            (proc
                                                                                             x7978
                                                                                             x7977
                                                                                             x7976
                                                                                             x7975
                                                                                             x7973))))
                                                                                  g7972)
                                                                                (letrec ((x-cnd7979
                                                                                          (letrec ((x7980
                                                                                                    (letrec ((x7981
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x7981))))
                                                                                            (null?
                                                                                             x7980))))
                                                                                  (if x-cnd7979
                                                                                    (letrec ((g7982
                                                                                              (letrec ((x7990
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x7989
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x7988
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x7987
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x7985
                                                                                                        (letrec ((x7986
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x7986)))
                                                                                                       (x7983
                                                                                                        (letrec ((x7984
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x7984))))
                                                                                                (proc
                                                                                                 x7990
                                                                                                 x7989
                                                                                                 x7988
                                                                                                 x7987
                                                                                                 x7985
                                                                                                 x7983))))
                                                                                      g7982)
                                                                                    (letrec ((x-cnd7991
                                                                                              (letrec ((x7992
                                                                                                        (letrec ((x7993
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x7993))))
                                                                                                (null?
                                                                                                 x7992))))
                                                                                      (if x-cnd7991
                                                                                        (letrec ((g7994
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
                                                                                                               x8000)))
                                                                                                           (x7997
                                                                                                            (letrec ((x7998
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x7998)))
                                                                                                           (x7995
                                                                                                            (letrec ((x7996
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x7996))))
                                                                                                    (proc
                                                                                                     x8004
                                                                                                     x8003
                                                                                                     x8002
                                                                                                     x8001
                                                                                                     x7999
                                                                                                     x7997
                                                                                                     x7995))))
                                                                                          g7994)
                                                                                        (letrec ((g8005
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8005)))))))))))))))))))
                                                g7942)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8006
                                                        (letrec ((x8008
                                                                  (list? l)))
                                                          (assert x8008)))
                                                       (g8007
                                                        (letrec ((x-cnd8009
                                                                  (null? l)))
                                                          (if x-cnd8009
                                                            #f
                                                            (letrec ((x-cnd8010
                                                                      (letrec ((x8011
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8011
                                                                         e))))
                                                              (if x-cnd8010
                                                                l
                                                                (letrec ((x8012
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8012))))))))
                                                g8007)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8013
                                                        (letrec ((x8014
                                                                  (letrec ((x8015
                                                                            (letrec ((x8016
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8016))))
                                                                    (cdr
                                                                     x8015))))
                                                          (cdr x8014))))
                                                g8013)))
                                           (cadddr
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
                                                          (car x8018))))
                                                g8017)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8021 (random 42)))
                                                g8021)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8022
                                                        (letrec ((x8024
                                                                  (number? x)))
                                                          (assert x8024)))
                                                       (g8023 (= x 0)))
                                                g8023)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8025
                                                        (letrec ((val7256
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8026
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8026))))
                                                g8025)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8027
                                                        (letrec ((x8028
                                                                  (cdr x)))
                                                          (car x8028))))
                                                g8027)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8029
                                                        (letrec ((val7257
                                                                  (letrec ((x-cnd8030
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8030
                                                                      (letrec ((x8031
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8031))
                                                                      #f))))
                                                          (letrec ((g8032
                                                                    (if val7257
                                                                      val7257
                                                                      (null?
                                                                       l))))
                                                            g8032))))
                                                g8029)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8033
                                                        (letrec ((x8034
                                                                  (letrec ((x8035
                                                                            (letrec ((x8036
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8036))))
                                                                    (cdr
                                                                     x8035))))
                                                          (cdr x8034))))
                                                g8033)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8037
                                                        (letrec ((x-cnd8038
                                                                  (letrec ((x8039
                                                                            #\0))
                                                                    (char<=?
                                                                     x8039
                                                                     c))))
                                                          (if x-cnd8038
                                                            (letrec ((x8040
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8040))
                                                            #f))))
                                                g8037)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8041
                                                        (letrec ((x8043
                                                                  (list? l)))
                                                          (assert x8043)))
                                                       (g8042
                                                        (letrec ((x-cnd8044
                                                                  (null? l)))
                                                          (if x-cnd8044
                                                            #f
                                                            (letrec ((x-cnd8045
                                                                      (letrec ((x8046
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8046
                                                                         k))))
                                                              (if x-cnd8045
                                                                (car l)
                                                                (letrec ((x8047
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8047))))))))
                                                g8042)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8048 (if x #f #t)))
                                                g8048)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8049 (append l1 l2)))
                                                g8049)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8055
                                                                         e))))
                                                              (if x-cnd8054
                                                                l
                                                                (letrec ((x8056
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8056))))))))
                                                g8051)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8057
                                                        (letrec ((x8058
                                                                  (letrec ((x8059
                                                                            (letrec ((x8060
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8060))))
                                                                    (cdr
                                                                     x8059))))
                                                          (car x8058))))
                                                g8057)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8061
                                                        (letrec ((x8063
                                                                  (list? l)))
                                                          (assert x8063)))
                                                       (g8062
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8064
                                                                              (letrec ((x-cnd8065
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8065
                                                                                  0
                                                                                  (letrec ((x8066
                                                                                            (letrec ((x8067
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8067))))
                                                                                    (+
                                                                                     1
                                                                                     x8066))))))
                                                                      g8064))))
                                                          (letrec ((g8068
                                                                    (rec l)))
                                                            g8068))))
                                                g8062)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8069
                                                        (letrec ((x8072
                                                                  (char? c1)))
                                                          (assert x8072)))
                                                       (g8070
                                                        (letrec ((x8073
                                                                  (char? c2)))
                                                          (assert x8073)))
                                                       (g8071
                                                        (letrec ((val7258
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8074
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8074))))
                                                g8071)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8075
                                                        (letrec ((x8076
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8076))))
                                                g8075)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8077
                                                        (letrec ((x8078
                                                                  (letrec ((x8079
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8079))))
                                                          (cdr x8078))))
                                                g8077)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8080
                                                        (letrec ((x8082
                                                                  (list? l)))
                                                          (assert x8082)))
                                                       (g8081
                                                        (letrec ((x-cnd8083
                                                                  (null? l)))
                                                          (if x-cnd8083
                                                            #f
                                                            (letrec ((x-cnd8084
                                                                      (letrec ((x8085
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8085
                                                                         k))))
                                                              (if x-cnd8084
                                                                (car l)
                                                                (letrec ((x8086
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8086))))))))
                                                g8081)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8087
                                                        (letrec ((x8088
                                                                  (car x)))
                                                          (car x8088))))
                                                g8087)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8089
                                                        (letrec ((x8092
                                                                  (char? c1)))
                                                          (assert x8092)))
                                                       (g8090
                                                        (letrec ((x8093
                                                                  (char? c2)))
                                                          (assert x8093)))
                                                       (g8091
                                                        (letrec ((x8094
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8094))))
                                                g8091)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8095
                                                        (letrec ((val7259
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8096
                                                                    (if val7259
                                                                      val7259
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8096))))
                                                g8095)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8097
                                                        (letrec ((x8100
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8100)))
                                                       (g8098
                                                        (letrec ((x8101
                                                                  (list? l)))
                                                          (assert x8101)))
                                                       (g8099
                                                        (letrec ((x-cnd8102
                                                                  (null? l)))
                                                          (if x-cnd8102
                                                            #t
                                                            (letrec ((x-cnd8103
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8103
                                                                (letrec ((g8104
                                                                          (letrec ((x8106
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8106)))
                                                                         (g8105
                                                                          (letrec ((x8107
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8107))))
                                                                  g8105)
                                                                '()))))))
                                                g8099)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8108
                                                        (letrec ((x8110
                                                                  (number? x)))
                                                          (assert x8110)))
                                                       (g8109
                                                        (letrec ((x-cnd8111
                                                                  (< x 0)))
                                                          (if x-cnd8111
                                                            (- 0 x)
                                                            x))))
                                                g8109)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8112
                                                        (letrec ((x8115
                                                                  (char? c1)))
                                                          (assert x8115)))
                                                       (g8113
                                                        (letrec ((x8116
                                                                  (char? c2)))
                                                          (assert x8116)))
                                                       (g8114
                                                        (letrec ((val7260
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8117
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8117))))
                                                g8114)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8118
                                                        (letrec ((x8119
                                                                  (letrec ((x8120
                                                                            (letrec ((x8121
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8121))))
                                                                    (cdr
                                                                     x8120))))
                                                          (car x8119))))
                                                g8118)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8122 #f)) g8122)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8123
                                                        (letrec ((x8125
                                                                  (letrec ((x8126
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8126)))
                                                                 (x8124
                                                                  (gcd m n)))
                                                          (/ x8125 x8124))))
                                                g8123)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8127
                                                        (letrec ((x8129
                                                                  (number? x)))
                                                          (assert x8129)))
                                                       (g8128
                                                        (letrec ((x8130
                                                                  (<= x y)))
                                                          (not x8130))))
                                                g8128)))
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
                          g7577))))
              g7575)))
    g7574))
