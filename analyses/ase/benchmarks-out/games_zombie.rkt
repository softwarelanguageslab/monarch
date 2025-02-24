(letrec ((any? (lambda (v) (letrec ((g7646 #t)) g7646)))
         (meta (lambda (v) (letrec ((g7647 v)) g7647)))
         (member
          (lambda (v lst)
            (letrec ((g7648
                      (letrec ((g7649
                                (letrec ((x-e7650 lst))
                                  (match
                                   x-e7650
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7651 (eq? v v1)))
                                       (if x-cnd7651 #t (member v vs)))))))))
                        g7649)))
              g7648)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7652 (lambda (v) (letrec ((g7653 v)) g7653)))) g7652)))
         (nonzero?
          (lambda (v)
            (letrec ((g7654 (letrec ((x7655 (= v 0))) (not x7655)))) g7654))))
  (letrec ((g7656
            (letrec ((g7657
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
                        (letrec ((g7658 '())
                                 (g7659
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7660
                                                        (lambda (k j lst)
                                                          (letrec ((g7661
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7662
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7662))
                                                                     lst)))
                                                            g7661))))
                                                g7660)))
                                           (real?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7663
                                                        (letrec ((x-cnd7664
                                                                  (real?
                                                                   g7263)))
                                                          (if x-cnd7664
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'real?)))))
                                                g7663)))
                                           (boolean?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7665
                                                        (letrec ((x-cnd7666
                                                                  (boolean?
                                                                   g7266)))
                                                          (if x-cnd7666
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'boolean?)))))
                                                g7665)))
                                           (number?/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7667
                                                        (letrec ((x-cnd7668
                                                                  (number?
                                                                   g7269)))
                                                          (if x-cnd7668
                                                            g7269
                                                            (blame
                                                             g7267
                                                             'number?)))))
                                                g7667)))
                                           (any/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7669
                                                        (letrec ((x-cnd7670
                                                                  ((lambda (v)
                                                                     (letrec ((g7671
                                                                               #t))
                                                                       g7671))
                                                                   g7272)))
                                                          (if x-cnd7670
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7669)))
                                           (any?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7672
                                                        (letrec ((x-cnd7673
                                                                  ((lambda (v)
                                                                     (letrec ((g7674
                                                                               #t))
                                                                       g7674))
                                                                   g7275)))
                                                          (if x-cnd7673
                                                            g7275
                                                            (blame
                                                             g7273
                                                             '(lambda (v)
                                                                #t))))))
                                                g7672)))
                                           (cons?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7675
                                                        (letrec ((x-cnd7676
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7676
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7675)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7677
                                                        (letrec ((x-cnd7678
                                                                  (pair?
                                                                   g7281)))
                                                          (if x-cnd7678
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'pair?)))))
                                                g7677)))
                                           (integer?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7679
                                                        (letrec ((x-cnd7680
                                                                  (integer?
                                                                   g7284)))
                                                          (if x-cnd7680
                                                            g7284
                                                            (blame
                                                             g7282
                                                             'integer?)))))
                                                g7679)))
                                           (symbol?/c
                                            (lambda (g7285 g7286 g7287)
                                              (letrec ((g7681
                                                        (letrec ((x-cnd7682
                                                                  (symbol?
                                                                   g7287)))
                                                          (if x-cnd7682
                                                            g7287
                                                            (blame
                                                             g7285
                                                             'symbol?)))))
                                                g7681)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7683
                                                        (lambda (k j v)
                                                          (letrec ((g7684
                                                                    (letrec ((x-cnd7685
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7685
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7684))))
                                                g7683)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7686
                                                        (lambda (k j v)
                                                          (letrec ((g7687
                                                                    (letrec ((x-cnd7688
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7688
                                                                        '()
                                                                        (letrec ((x7692
                                                                                  (letrec ((x7693
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7693)))
                                                                                 (x7689
                                                                                  (letrec ((x7691
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7690
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7691
                                                                                     k
                                                                                     j
                                                                                     x7690))))
                                                                          (orig-cons
                                                                           x7692
                                                                           x7689))))))
                                                            g7687))))
                                                g7686)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7694 #t)) g7694)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7695
                                                        (letrec ((x7696
                                                                  (= v 0)))
                                                          (not x7696))))
                                                g7695)))
                                           (nonzero?/c
                                            (lambda (g7288 g7289 g7290)
                                              (letrec ((g7697
                                                        (letrec ((x-cnd7698
                                                                  ((lambda (v)
                                                                     (letrec ((g7699
                                                                               (letrec ((x7700
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7700))))
                                                                       g7699))
                                                                   g7290)))
                                                          (if x-cnd7698
                                                            g7290
                                                            (blame
                                                             g7288
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7697)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7701
                                                        (lambda (g7291
                                                                 g7292
                                                                 g7293)
                                                          (letrec ((g7702
                                                                    (letrec ((x-cnd7703
                                                                              ((lambda (v)
                                                                                 (letrec ((g7704
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7704))
                                                                               g7293)))
                                                                      (if x-cnd7703
                                                                        g7293
                                                                        (blame
                                                                         g7291
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7702))))
                                                g7701)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7705
                                                        (lambda (g7294
                                                                 g7295
                                                                 g7296)
                                                          (letrec ((g7706
                                                                    (letrec ((x-cnd7707
                                                                              ((lambda (v)
                                                                                 (letrec ((g7708
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7708))
                                                                               g7296)))
                                                                      (if x-cnd7707
                                                                        g7296
                                                                        (blame
                                                                         g7294
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7706))))
                                                g7705)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7709
                                                        (lambda (g7297
                                                                 g7298
                                                                 g7299)
                                                          (letrec ((g7710
                                                                    (letrec ((x-cnd7711
                                                                              ((lambda (v)
                                                                                 (letrec ((g7712
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7712))
                                                                               g7299)))
                                                                      (if x-cnd7711
                                                                        g7299
                                                                        (blame
                                                                         g7297
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7710))))
                                                g7709)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7713
                                                        (lambda (g7300
                                                                 g7301
                                                                 g7302)
                                                          (letrec ((g7714
                                                                    (letrec ((x-cnd7715
                                                                              ((lambda (v)
                                                                                 (letrec ((g7716
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7716))
                                                                               g7302)))
                                                                      (if x-cnd7715
                                                                        g7302
                                                                        (blame
                                                                         g7300
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7714))))
                                                g7713)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7717
                                                        (lambda (g7303
                                                                 g7304
                                                                 g7305)
                                                          (letrec ((g7718
                                                                    (letrec ((x-cnd7719
                                                                              ((lambda (v)
                                                                                 (letrec ((g7720
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7720))
                                                                               g7305)))
                                                                      (if x-cnd7719
                                                                        g7305
                                                                        (blame
                                                                         g7303
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7718))))
                                                g7717)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7721 v)) g7721)))
                                           (+
                                            (letrec ((xj7306 'server)
                                                     (xk7307 'client))
                                              (letrec ((g7722
                                                        ((lambda (j7310
                                                                  k7311
                                                                  f7312)
                                                           (letrec ((g7724
                                                                     (lambda (g7308
                                                                              g7309)
                                                                       (letrec ((g7725
                                                                                 (letrec ((x7726
                                                                                           (letrec ((x7728
                                                                                                     (number?/c
                                                                                                      j7310
                                                                                                      k7311
                                                                                                      g7308))
                                                                                                    (x7727
                                                                                                     (number?/c
                                                                                                      j7310
                                                                                                      k7311
                                                                                                      g7309)))
                                                                                             (f7312
                                                                                              x7728
                                                                                              x7727))))
                                                                                   (number?/c
                                                                                    j7310
                                                                                    k7311
                                                                                    x7726))))
                                                                         g7725))))
                                                             g7724))
                                                         xj7306
                                                         xk7307
                                                         (lambda (a b)
                                                           (letrec ((g7723
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7723)))))
                                                g7722)))
                                           (-
                                            (letrec ((xj7313 'server)
                                                     (xk7314 'client))
                                              (letrec ((g7729
                                                        ((lambda (j7317
                                                                  k7318
                                                                  f7319)
                                                           (letrec ((g7731
                                                                     (lambda (g7315
                                                                              g7316)
                                                                       (letrec ((g7732
                                                                                 (letrec ((x7733
                                                                                           (letrec ((x7735
                                                                                                     (number?/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7315))
                                                                                                    (x7734
                                                                                                     (number?/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7316)))
                                                                                             (f7319
                                                                                              x7735
                                                                                              x7734))))
                                                                                   (number?/c
                                                                                    j7317
                                                                                    k7318
                                                                                    x7733))))
                                                                         g7732))))
                                                             g7731))
                                                         xj7313
                                                         xk7314
                                                         (lambda (a b)
                                                           (letrec ((g7730
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7730)))))
                                                g7729)))
                                           (*
                                            (letrec ((xj7320 'server)
                                                     (xk7321 'client))
                                              (letrec ((g7736
                                                        ((lambda (j7324
                                                                  k7325
                                                                  f7326)
                                                           (letrec ((g7738
                                                                     (lambda (g7322
                                                                              g7323)
                                                                       (letrec ((g7739
                                                                                 (letrec ((x7740
                                                                                           (letrec ((x7742
                                                                                                     (number?/c
                                                                                                      j7324
                                                                                                      k7325
                                                                                                      g7322))
                                                                                                    (x7741
                                                                                                     (number?/c
                                                                                                      j7324
                                                                                                      k7325
                                                                                                      g7323)))
                                                                                             (f7326
                                                                                              x7742
                                                                                              x7741))))
                                                                                   (number?/c
                                                                                    j7324
                                                                                    k7325
                                                                                    x7740))))
                                                                         g7739))))
                                                             g7738))
                                                         xj7320
                                                         xk7321
                                                         (lambda (a b)
                                                           (letrec ((g7737
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7737)))))
                                                g7736)))
                                           (<
                                            (letrec ((xj7327 'server)
                                                     (xk7328 'client))
                                              (letrec ((g7743
                                                        ((lambda (j7331
                                                                  k7332
                                                                  f7333)
                                                           (letrec ((g7745
                                                                     (lambda (g7329
                                                                              g7330)
                                                                       (letrec ((g7746
                                                                                 (letrec ((x7747
                                                                                           (letrec ((x7749
                                                                                                     (number?/c
                                                                                                      j7331
                                                                                                      k7332
                                                                                                      g7329))
                                                                                                    (x7748
                                                                                                     (number?/c
                                                                                                      j7331
                                                                                                      k7332
                                                                                                      g7330)))
                                                                                             (f7333
                                                                                              x7749
                                                                                              x7748))))
                                                                                   (boolean?/c
                                                                                    j7331
                                                                                    k7332
                                                                                    x7747))))
                                                                         g7746))))
                                                             g7745))
                                                         xj7327
                                                         xk7328
                                                         (lambda (a b)
                                                           (letrec ((g7744
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7744)))))
                                                g7743)))
                                           (>
                                            (letrec ((xj7334 'server)
                                                     (xk7335 'client))
                                              (letrec ((g7750
                                                        ((lambda (j7338
                                                                  k7339
                                                                  f7340)
                                                           (letrec ((g7752
                                                                     (lambda (g7336
                                                                              g7337)
                                                                       (letrec ((g7753
                                                                                 (letrec ((x7754
                                                                                           (letrec ((x7756
                                                                                                     (number?/c
                                                                                                      j7338
                                                                                                      k7339
                                                                                                      g7336))
                                                                                                    (x7755
                                                                                                     (number?/c
                                                                                                      j7338
                                                                                                      k7339
                                                                                                      g7337)))
                                                                                             (f7340
                                                                                              x7756
                                                                                              x7755))))
                                                                                   (boolean?/c
                                                                                    j7338
                                                                                    k7339
                                                                                    x7754))))
                                                                         g7753))))
                                                             g7752))
                                                         xj7334
                                                         xk7335
                                                         (lambda (a b)
                                                           (letrec ((g7751
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7751)))))
                                                g7750)))
                                           (<=
                                            (letrec ((xj7341 'server)
                                                     (xk7342 'client))
                                              (letrec ((g7757
                                                        ((lambda (j7345
                                                                  k7346
                                                                  f7347)
                                                           (letrec ((g7759
                                                                     (lambda (g7343
                                                                              g7344)
                                                                       (letrec ((g7760
                                                                                 (letrec ((x7761
                                                                                           (letrec ((x7763
                                                                                                     (number?/c
                                                                                                      j7345
                                                                                                      k7346
                                                                                                      g7343))
                                                                                                    (x7762
                                                                                                     (number?/c
                                                                                                      j7345
                                                                                                      k7346
                                                                                                      g7344)))
                                                                                             (f7347
                                                                                              x7763
                                                                                              x7762))))
                                                                                   (boolean?/c
                                                                                    j7345
                                                                                    k7346
                                                                                    x7761))))
                                                                         g7760))))
                                                             g7759))
                                                         xj7341
                                                         xk7342
                                                         (lambda (a b)
                                                           (letrec ((g7758
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7758)))))
                                                g7757)))
                                           (>=
                                            (letrec ((xj7348 'server)
                                                     (xk7349 'client))
                                              (letrec ((g7764
                                                        ((lambda (j7352
                                                                  k7353
                                                                  f7354)
                                                           (letrec ((g7766
                                                                     (lambda (g7350
                                                                              g7351)
                                                                       (letrec ((g7767
                                                                                 (letrec ((x7768
                                                                                           (letrec ((x7770
                                                                                                     (number?/c
                                                                                                      j7352
                                                                                                      k7353
                                                                                                      g7350))
                                                                                                    (x7769
                                                                                                     (number?/c
                                                                                                      j7352
                                                                                                      k7353
                                                                                                      g7351)))
                                                                                             (f7354
                                                                                              x7770
                                                                                              x7769))))
                                                                                   (boolean?/c
                                                                                    j7352
                                                                                    k7353
                                                                                    x7768))))
                                                                         g7767))))
                                                             g7766))
                                                         xj7348
                                                         xk7349
                                                         (lambda (a b)
                                                           (letrec ((g7765
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7765)))))
                                                g7764)))
                                           (/
                                            (letrec ((xj7355 'server)
                                                     (xk7356 'client))
                                              (letrec ((g7771
                                                        ((lambda (j7359
                                                                  k7360
                                                                  f7361)
                                                           (letrec ((g7773
                                                                     (lambda (g7357
                                                                              g7358)
                                                                       (letrec ((g7774
                                                                                 (letrec ((x7775
                                                                                           (letrec ((x7777
                                                                                                     (number?/c
                                                                                                      j7359
                                                                                                      k7360
                                                                                                      g7357))
                                                                                                    (x7776
                                                                                                     (number?/c
                                                                                                      j7359
                                                                                                      k7360
                                                                                                      g7358)))
                                                                                             (f7361
                                                                                              x7777
                                                                                              x7776))))
                                                                                   (number?/c
                                                                                    j7359
                                                                                    k7360
                                                                                    x7775))))
                                                                         g7774))))
                                                             g7773))
                                                         xj7355
                                                         xk7356
                                                         (lambda (a b)
                                                           (letrec ((g7772
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7772)))))
                                                g7771)))
                                           (car
                                            (letrec ((xj7362 'server)
                                                     (xk7363 'client))
                                              (letrec ((g7778
                                                        ((lambda (j7365
                                                                  k7366
                                                                  f7367)
                                                           (letrec ((g7780
                                                                     (lambda (g7364)
                                                                       (letrec ((g7781
                                                                                 (letrec ((x7782
                                                                                           (letrec ((x7783
                                                                                                     (pair?/c
                                                                                                      j7365
                                                                                                      k7366
                                                                                                      g7364)))
                                                                                             (f7367
                                                                                              x7783))))
                                                                                   (any/c
                                                                                    j7365
                                                                                    k7366
                                                                                    x7782))))
                                                                         g7781))))
                                                             g7780))
                                                         xj7362
                                                         xk7363
                                                         (lambda (p)
                                                           (letrec ((g7779
                                                                     (orig-car
                                                                      p)))
                                                             g7779)))))
                                                g7778)))
                                           (cdr
                                            (letrec ((xj7368 'server)
                                                     (xk7369 'client))
                                              (letrec ((g7784
                                                        ((lambda (j7371
                                                                  k7372
                                                                  f7373)
                                                           (letrec ((g7786
                                                                     (lambda (g7370)
                                                                       (letrec ((g7787
                                                                                 (letrec ((x7788
                                                                                           (letrec ((x7789
                                                                                                     (pair?/c
                                                                                                      j7371
                                                                                                      k7372
                                                                                                      g7370)))
                                                                                             (f7373
                                                                                              x7789))))
                                                                                   (any/c
                                                                                    j7371
                                                                                    k7372
                                                                                    x7788))))
                                                                         g7787))))
                                                             g7786))
                                                         xj7368
                                                         xk7369
                                                         (lambda (p)
                                                           (letrec ((g7785
                                                                     (orig-cdr
                                                                      p)))
                                                             g7785)))))
                                                g7784)))
                                           (cons
                                            (letrec ((xj7374 'server)
                                                     (xk7375 'client))
                                              (letrec ((g7790
                                                        ((lambda (j7378
                                                                  k7379
                                                                  f7380)
                                                           (letrec ((g7792
                                                                     (lambda (g7376
                                                                              g7377)
                                                                       (letrec ((g7793
                                                                                 (letrec ((x7794
                                                                                           (letrec ((x7796
                                                                                                     (any/c
                                                                                                      j7378
                                                                                                      k7379
                                                                                                      g7376))
                                                                                                    (x7795
                                                                                                     (any/c
                                                                                                      j7378
                                                                                                      k7379
                                                                                                      g7377)))
                                                                                             (f7380
                                                                                              x7796
                                                                                              x7795))))
                                                                                   (pair?/c
                                                                                    j7378
                                                                                    k7379
                                                                                    x7794))))
                                                                         g7793))))
                                                             g7792))
                                                         xj7374
                                                         xk7375
                                                         (lambda (a b)
                                                           (letrec ((g7791
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7791)))))
                                                g7790)))
                                           (vector-ref
                                            (letrec ((xj7381 'server)
                                                     (xk7382 'client))
                                              (letrec ((g7797
                                                        ((lambda (j7384
                                                                  k7385
                                                                  f7386)
                                                           (letrec ((g7799
                                                                     (lambda (g7383)
                                                                       (letrec ((g7800
                                                                                 (letrec ((x7801
                                                                                           (letrec ((x7802
                                                                                                     (vector?/c
                                                                                                      j7384
                                                                                                      k7385
                                                                                                      g7383)))
                                                                                             (f7386
                                                                                              x7802))))
                                                                                   (integer?/c
                                                                                    j7384
                                                                                    k7385
                                                                                    x7801))))
                                                                         g7800))))
                                                             g7799))
                                                         xj7381
                                                         xk7382
                                                         (lambda (v i)
                                                           (letrec ((g7798
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7798)))))
                                                g7797)))
                                           (vector-set!
                                            (letrec ((xj7387 'server)
                                                     (xk7388 'client))
                                              (letrec ((g7803
                                                        ((lambda (j7391
                                                                  k7392
                                                                  f7393)
                                                           (letrec ((g7805
                                                                     (lambda (g7389
                                                                              g7390)
                                                                       (letrec ((g7806
                                                                                 (letrec ((x7807
                                                                                           (letrec ((x7809
                                                                                                     (vector?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7389))
                                                                                                    (x7808
                                                                                                     (integer?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7390)))
                                                                                             (f7393
                                                                                              x7809
                                                                                              x7808))))
                                                                                   (any/c
                                                                                    j7391
                                                                                    k7392
                                                                                    x7807))))
                                                                         g7806))))
                                                             g7805))
                                                         xj7387
                                                         xk7388
                                                         (lambda (vec i v)
                                                           (letrec ((g7804
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7804)))))
                                                g7803)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7810
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7810)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7811
                                                        (letrec ((x7812
                                                                  (letrec ((x7813
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7813))))
                                                          (cdr x7812))))
                                                g7811)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7814
                                                        (letrec ((x7817
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7817)))
                                                       (g7815
                                                        (letrec ((x7818
                                                                  (list? l)))
                                                          (assert x7818)))
                                                       (g7816
                                                        (letrec ((x-cnd7819
                                                                  (null? l)))
                                                          (if x-cnd7819
                                                            '()
                                                            (letrec ((x7822
                                                                      (letrec ((x7823
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7823)))
                                                                     (x7820
                                                                      (letrec ((x7821
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7821))))
                                                              (cons
                                                               x7822
                                                               x7820))))))
                                                g7816)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7824
                                                        (letrec ((x7825
                                                                  (car x)))
                                                          (cdr x7825))))
                                                g7824)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7826
                                                        (letrec ((x7827
                                                                  (letrec ((x7828
                                                                            (letrec ((x7829
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7829))))
                                                                    (cdr
                                                                     x7828))))
                                                          (car x7827))))
                                                g7826)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7830
                                                        (letrec ((x7831
                                                                  (letrec ((x7832
                                                                            (letrec ((x7833
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7833))))
                                                                    (car
                                                                     x7832))))
                                                          (cdr x7831))))
                                                g7830)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7834
                                                        (letrec ((x7837
                                                                  (string?
                                                                   filename)))
                                                          (assert x7837)))
                                                       (g7835
                                                        (letrec ((x7838
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7838)))
                                                       (g7836
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7839
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7840 res))
                                                            g7840))))
                                                g7836)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7841
                                                        (letrec ((x7842
                                                                  (letrec ((x7843
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7843))))
                                                          (car x7842))))
                                                g7841)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7844
                                                        (letrec ((x7845
                                                                  (letrec ((x7846
                                                                            (letrec ((x7847
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7847))))
                                                                    (car
                                                                     x7846))))
                                                          (cdr x7845))))
                                                g7844)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7848
                                                        (letrec ((x7850
                                                                  (list? l)))
                                                          (assert x7850)))
                                                       (g7849
                                                        (letrec ((x-cnd7851
                                                                  (null? l)))
                                                          (if x-cnd7851
                                                            #f
                                                            (letrec ((x-cnd7852
                                                                      (letrec ((x7853
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7853
                                                                         k))))
                                                              (if x-cnd7852
                                                                (car l)
                                                                (letrec ((x7854
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7854))))))))
                                                g7849)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7855
                                                        (letrec ((x7856
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7856))))
                                                g7855)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7857
                                                        (letrec ((x7859
                                                                  (list? l)))
                                                          (assert x7859)))
                                                       (g7858
                                                        (letrec ((x-cnd7860
                                                                  (null? l)))
                                                          (if x-cnd7860
                                                            ""
                                                            (letrec ((x7863
                                                                      (letrec ((x7864
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7864)))
                                                                     (x7861
                                                                      (letrec ((x7862
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7862))))
                                                              (string-append
                                                               x7863
                                                               x7861))))))
                                                g7858)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7865
                                                        (letrec ((x7868
                                                                  (char? c1)))
                                                          (assert x7868)))
                                                       (g7866
                                                        (letrec ((x7869
                                                                  (char? c2)))
                                                          (assert x7869)))
                                                       (g7867
                                                        (letrec ((val7243
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7870
                                                                    (if val7243
                                                                      val7243
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7870))))
                                                g7867)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7871
                                                        (letrec ((x7872
                                                                  (letrec ((x7873
                                                                            (letrec ((x7874
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7874))))
                                                                    (cdr
                                                                     x7873))))
                                                          (cdr x7872))))
                                                g7871)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7875
                                                        (letrec ((x7878
                                                                  (list? l)))
                                                          (assert x7878)))
                                                       (g7876
                                                        (letrec ((x7879
                                                                  (number?)))
                                                          (assert x7879)))
                                                       (g7877
                                                        (letrec ((x-cnd7880
                                                                  (zero? k)))
                                                          (if x-cnd7880
                                                            x
                                                            (letrec ((x7882
                                                                      (cdr x))
                                                                     (x7881
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7882
                                                               x7881))))))
                                                g7877)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7883 '())) g7883)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7884
                                                        (letrec ((x-cnd7885
                                                                  (letrec ((x7886
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7886))))
                                                          (if x-cnd7885
                                                            (letrec ((x7887
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7887))
                                                            #f))))
                                                g7884)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g7888
                                                        (letrec ((x7890
                                                                  (number? x)))
                                                          (assert x7890)))
                                                       (g7889
                                                        (letrec ((val7244
                                                                  (< x y)))
                                                          (letrec ((g7891
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7892
                                                                                  (if val7245
                                                                                    val7245
                                                                                    #f)))
                                                                          g7892)))))
                                                            g7891))))
                                                g7889)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7893
                                                        (letrec ((val7246
                                                                  (letrec ((x7894
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7894
                                                                     9))))
                                                          (letrec ((g7895
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x7896
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7896
                                                                                   10))))
                                                                        (letrec ((g7897
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((x7898
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7898
                                                                                       32)))))
                                                                          g7897)))))
                                                            g7895))))
                                                g7893)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7899
                                                        (letrec ((x7900
                                                                  (letrec ((x7901
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7901))))
                                                          (cdr x7900))))
                                                g7899)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7902
                                                        (letrec ((x7904
                                                                  (number? x)))
                                                          (assert x7904)))
                                                       (g7903 (> x 0)))
                                                g7903)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7905 #f)) g7905)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7906
                                                        (letrec ((x7907
                                                                  (cdr x)))
                                                          (cdr x7907))))
                                                g7906)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7908
                                                        (letrec ((x7910
                                                                  (number? x)))
                                                          (assert x7910)))
                                                       (g7909
                                                        (letrec ((x-cnd7911
                                                                  (< x 0)))
                                                          (if x-cnd7911
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7909)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7912
                                                        (letrec ((val7248
                                                                  (eq? a b)))
                                                          (letrec ((g7913
                                                                    (if val7248
                                                                      val7248
                                                                      (letrec ((val7249
                                                                                (letrec ((x-cnd7914
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7914
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7915
                                                                                  (if val7249
                                                                                    val7249
                                                                                    (letrec ((val7250
                                                                                              (letrec ((x-cnd7916
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7916
                                                                                                  (letrec ((x-cnd7917
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7917
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7918
                                                                                                (if val7250
                                                                                                  val7250
                                                                                                  (letrec ((val7251
                                                                                                            (letrec ((x-cnd7919
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7919
                                                                                                                (letrec ((x-cnd7920
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7920
                                                                                                                    (letrec ((x-cnd7921
                                                                                                                              (letrec ((x7923
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7922
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7923
                                                                                                                                 x7922))))
                                                                                                                      (if x-cnd7921
                                                                                                                        (letrec ((x7925
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7924
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7925
                                                                                                                           x7924))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7926
                                                                                                              (if val7251
                                                                                                                val7251
                                                                                                                (letrec ((x-cnd7927
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7927
                                                                                                                    (letrec ((x-cnd7928
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7928
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7929
                                                                                                                                    (letrec ((x-cnd7930
                                                                                                                                              (letrec ((x7931
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7931
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7930
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7932
                                                                                                                                                              (letrec ((val7252
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7933
                                                                                                                                                                          (if val7252
                                                                                                                                                                            val7252
                                                                                                                                                                            (letrec ((x-cnd7934
                                                                                                                                                                                      (letrec ((x7936
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7935
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7936
                                                                                                                                                                                         x7935))))
                                                                                                                                                                              (if x-cnd7934
                                                                                                                                                                                (letrec ((x7937
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7937))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7933))))
                                                                                                                                                      g7932))))
                                                                                                                                          (letrec ((g7938
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7938))
                                                                                                                                        #f))))
                                                                                                                            g7929))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7926)))))
                                                                                        g7918)))))
                                                                          g7915)))))
                                                            g7913))))
                                                g7912)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7939
                                                        (letrec ((x7940
                                                                  (letrec ((x7941
                                                                            (letrec ((x7942
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7942))))
                                                                    (car
                                                                     x7941))))
                                                          (cdr x7940))))
                                                g7939)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7943
                                                        (letrec ((x7944
                                                                  (letrec ((x7945
                                                                            (letrec ((x7946
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7946))))
                                                                    (car
                                                                     x7945))))
                                                          (car x7944))))
                                                g7943)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7947 (eq? x y)))
                                                g7947)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g7948
                                                        (letrec ((x7950
                                                                  (number? x)))
                                                          (assert x7950)))
                                                       (g7949
                                                        (letrec ((val7253
                                                                  (> x y)))
                                                          (letrec ((g7951
                                                                    (if val7253
                                                                      val7253
                                                                      (letrec ((val7254
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g7952
                                                                                  (if val7254
                                                                                    val7254
                                                                                    #f)))
                                                                          g7952)))))
                                                            g7951))))
                                                g7949)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7953
                                                        (letrec ((x7956
                                                                  (string?
                                                                   filename)))
                                                          (assert x7956)))
                                                       (g7954
                                                        (letrec ((x7957
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7957)))
                                                       (g7955
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7958
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7959 res))
                                                            g7959))))
                                                g7955)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7960 (cons x '())))
                                                g7960)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7961
                                                        (letrec ((x7964
                                                                  (char? c1)))
                                                          (assert x7964)))
                                                       (g7962
                                                        (letrec ((x7965
                                                                  (char? c2)))
                                                          (assert x7965)))
                                                       (g7963
                                                        (letrec ((val7255
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7966
                                                                    (if val7255
                                                                      val7255
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7966))))
                                                g7963)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7967
                                                        (letrec ((x7968
                                                                  (letrec ((x7969
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7969))))
                                                          (cdr x7968))))
                                                g7967)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7970
                                                        (letrec ((x7971
                                                                  (letrec ((x7972
                                                                            (letrec ((x7973
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7973))))
                                                                    (car
                                                                     x7972))))
                                                          (cdr x7971))))
                                                g7970)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7974
                                                        (letrec ((x7975
                                                                  (letrec ((x7976
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7976))))
                                                          (car x7975))))
                                                g7974)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7977
                                                        (letrec ((x7978
                                                                  (letrec ((x7979
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7979))))
                                                          (car x7978))))
                                                g7977)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7980
                                                        (letrec ((x7983
                                                                  (char? c1)))
                                                          (assert x7983)))
                                                       (g7981
                                                        (letrec ((x7984
                                                                  (char? c2)))
                                                          (assert x7984)))
                                                       (g7982
                                                        (letrec ((x7985
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7985))))
                                                g7982)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7986
                                                        (letrec ((x7987
                                                                  (letrec ((x7988
                                                                            (letrec ((x7989
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7989))))
                                                                    (car
                                                                     x7988))))
                                                          (car x7987))))
                                                g7986)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7990
                                                        (letrec ((x7992
                                                                  (number? x)))
                                                          (assert x7992)))
                                                       (g7991 (< x 0)))
                                                g7991)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7993 (memq e l)))
                                                g7993)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7994
                                                        (letrec ((x7995
                                                                  (letrec ((x7996
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7996))))
                                                          (car x7995))))
                                                g7994)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g7997 '())) g7997)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g7998
                                                        (letrec ((x8000
                                                                  (list? l)))
                                                          (assert x8000)))
                                                       (g7999
                                                        (letrec ((x-cnd8001
                                                                  (null? l)))
                                                          (if x-cnd8001
                                                            '()
                                                            (letrec ((x8004
                                                                      (letrec ((x8005
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8005)))
                                                                     (x8002
                                                                      (letrec ((x8003
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8003))))
                                                              (append
                                                               x8004
                                                               x8002))))))
                                                g7999)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8006
                                                        (letrec ((x8007
                                                                  (letrec ((x8008
                                                                            (letrec ((x8009
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8009))))
                                                                    (car
                                                                     x8008))))
                                                          (car x8007))))
                                                g8006)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8010
                                                        (letrec ((x8011
                                                                  (letrec ((x8012
                                                                            (letrec ((x8013
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8013))))
                                                                    (cdr
                                                                     x8012))))
                                                          (cdr x8011))))
                                                g8010)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8014
                                                        (letrec ((x8016
                                                                  (number? x)))
                                                          (assert x8016)))
                                                       (g8015
                                                        (letrec ((x8017
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8017))))
                                                g8015)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8018
                                                        (letrec ((x8019
                                                                  (letrec ((x8020
                                                                            (letrec ((x8021
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8021))))
                                                                    (car
                                                                     x8020))))
                                                          (car x8019))))
                                                g8018)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8022
                                                        (letrec ((x8025
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8025)))
                                                       (g8023
                                                        (letrec ((x8026
                                                                  (list?
                                                                   args)))
                                                          (assert x8026)))
                                                       (g8024
                                                        (letrec ((x-cnd8027
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8027
                                                            (letrec ((g8028
                                                                      (proc)))
                                                              g8028)
                                                            (letrec ((x-cnd8029
                                                                      (letrec ((x8030
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8030))))
                                                              (if x-cnd8029
                                                                (letrec ((g8031
                                                                          (letrec ((x8032
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8032))))
                                                                  g8031)
                                                                (letrec ((x-cnd8033
                                                                          (letrec ((x8034
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8034))))
                                                                  (if x-cnd8033
                                                                    (letrec ((g8035
                                                                              (letrec ((x8037
                                                                                        (car
                                                                                         args))
                                                                                       (x8036
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8037
                                                                                 x8036))))
                                                                      g8035)
                                                                    (letrec ((x-cnd8038
                                                                              (letrec ((x8039
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8039))))
                                                                      (if x-cnd8038
                                                                        (letrec ((g8040
                                                                                  (letrec ((x8043
                                                                                            (car
                                                                                             args))
                                                                                           (x8042
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8041
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8043
                                                                                     x8042
                                                                                     x8041))))
                                                                          g8040)
                                                                        (letrec ((x-cnd8044
                                                                                  (letrec ((x8045
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8045))))
                                                                          (if x-cnd8044
                                                                            (letrec ((g8046
                                                                                      (letrec ((x8050
                                                                                                (car
                                                                                                 args))
                                                                                               (x8049
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8048
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8047
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8050
                                                                                         x8049
                                                                                         x8048
                                                                                         x8047))))
                                                                              g8046)
                                                                            (letrec ((x-cnd8051
                                                                                      (letrec ((x8052
                                                                                                (letrec ((x8053
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8053))))
                                                                                        (null?
                                                                                         x8052))))
                                                                              (if x-cnd8051
                                                                                (letrec ((g8054
                                                                                          (letrec ((x8060
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8059
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8058
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8057
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8055
                                                                                                    (letrec ((x8056
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8056))))
                                                                                            (proc
                                                                                             x8060
                                                                                             x8059
                                                                                             x8058
                                                                                             x8057
                                                                                             x8055))))
                                                                                  g8054)
                                                                                (letrec ((x-cnd8061
                                                                                          (letrec ((x8062
                                                                                                    (letrec ((x8063
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8063))))
                                                                                            (null?
                                                                                             x8062))))
                                                                                  (if x-cnd8061
                                                                                    (letrec ((g8064
                                                                                              (letrec ((x8072
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8071
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8070
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8069
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8067
                                                                                                        (letrec ((x8068
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8068)))
                                                                                                       (x8065
                                                                                                        (letrec ((x8066
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8066))))
                                                                                                (proc
                                                                                                 x8072
                                                                                                 x8071
                                                                                                 x8070
                                                                                                 x8069
                                                                                                 x8067
                                                                                                 x8065))))
                                                                                      g8064)
                                                                                    (letrec ((x-cnd8073
                                                                                              (letrec ((x8074
                                                                                                        (letrec ((x8075
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8075))))
                                                                                                (null?
                                                                                                 x8074))))
                                                                                      (if x-cnd8073
                                                                                        (letrec ((g8076
                                                                                                  (letrec ((x8086
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8085
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8084
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8083
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8081
                                                                                                            (letrec ((x8082
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8082)))
                                                                                                           (x8079
                                                                                                            (letrec ((x8080
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8080)))
                                                                                                           (x8077
                                                                                                            (letrec ((x8078
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8078))))
                                                                                                    (proc
                                                                                                     x8086
                                                                                                     x8085
                                                                                                     x8084
                                                                                                     x8083
                                                                                                     x8081
                                                                                                     x8079
                                                                                                     x8077))))
                                                                                          g8076)
                                                                                        (letrec ((g8087
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8087)))))))))))))))))))
                                                g8024)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8088
                                                        (letrec ((x8090
                                                                  (list? l)))
                                                          (assert x8090)))
                                                       (g8089
                                                        (letrec ((x-cnd8091
                                                                  (null? l)))
                                                          (if x-cnd8091
                                                            #f
                                                            (letrec ((x-cnd8092
                                                                      (letrec ((x8093
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8093
                                                                         e))))
                                                              (if x-cnd8092
                                                                l
                                                                (letrec ((x8094
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8094))))))))
                                                g8089)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8095
                                                        (letrec ((x8096
                                                                  (letrec ((x8097
                                                                            (letrec ((x8098
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8098))))
                                                                    (cdr
                                                                     x8097))))
                                                          (cdr x8096))))
                                                g8095)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8099
                                                        (letrec ((x8100
                                                                  (letrec ((x8101
                                                                            (letrec ((x8102
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8102))))
                                                                    (cdr
                                                                     x8101))))
                                                          (car x8100))))
                                                g8099)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8103 (random 42)))
                                                g8103)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8104
                                                        (letrec ((x8106
                                                                  (number? x)))
                                                          (assert x8106)))
                                                       (g8105 (= x 0)))
                                                g8105)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8107
                                                        (letrec ((val7256
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8108
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8108))))
                                                g8107)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8109
                                                        (letrec ((x8110
                                                                  (cdr x)))
                                                          (car x8110))))
                                                g8109)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8111
                                                        (letrec ((val7257
                                                                  (letrec ((x-cnd8112
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8112
                                                                      (letrec ((x8113
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8113))
                                                                      #f))))
                                                          (letrec ((g8114
                                                                    (if val7257
                                                                      val7257
                                                                      (null?
                                                                       l))))
                                                            g8114))))
                                                g8111)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8115
                                                        (letrec ((x8116
                                                                  (letrec ((x8117
                                                                            (letrec ((x8118
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8118))))
                                                                    (cdr
                                                                     x8117))))
                                                          (cdr x8116))))
                                                g8115)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8119
                                                        (letrec ((x-cnd8120
                                                                  (letrec ((x8121
                                                                            #\0))
                                                                    (char<=?
                                                                     x8121
                                                                     c))))
                                                          (if x-cnd8120
                                                            (letrec ((x8122
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8122))
                                                            #f))))
                                                g8119)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8123
                                                        (letrec ((x8125
                                                                  (list? l)))
                                                          (assert x8125)))
                                                       (g8124
                                                        (letrec ((x-cnd8126
                                                                  (null? l)))
                                                          (if x-cnd8126
                                                            #f
                                                            (letrec ((x-cnd8127
                                                                      (letrec ((x8128
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8128
                                                                         k))))
                                                              (if x-cnd8127
                                                                (car l)
                                                                (letrec ((x8129
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8129))))))))
                                                g8124)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8130 (if x #f #t)))
                                                g8130)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8131 (append l1 l2)))
                                                g8131)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8132
                                                        (letrec ((x8134
                                                                  (list? l)))
                                                          (assert x8134)))
                                                       (g8133
                                                        (letrec ((x-cnd8135
                                                                  (null? l)))
                                                          (if x-cnd8135
                                                            #f
                                                            (letrec ((x-cnd8136
                                                                      (letrec ((x8137
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8137
                                                                         e))))
                                                              (if x-cnd8136
                                                                l
                                                                (letrec ((x8138
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8138))))))))
                                                g8133)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8139
                                                        (letrec ((x8140
                                                                  (letrec ((x8141
                                                                            (letrec ((x8142
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8142))))
                                                                    (cdr
                                                                     x8141))))
                                                          (car x8140))))
                                                g8139)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8143
                                                        (letrec ((x8145
                                                                  (list? l)))
                                                          (assert x8145)))
                                                       (g8144
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8146
                                                                              (letrec ((x-cnd8147
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8147
                                                                                  0
                                                                                  (letrec ((x8148
                                                                                            (letrec ((x8149
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8149))))
                                                                                    (+
                                                                                     1
                                                                                     x8148))))))
                                                                      g8146))))
                                                          (letrec ((g8150
                                                                    (rec l)))
                                                            g8150))))
                                                g8144)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8151
                                                        (letrec ((x8154
                                                                  (char? c1)))
                                                          (assert x8154)))
                                                       (g8152
                                                        (letrec ((x8155
                                                                  (char? c2)))
                                                          (assert x8155)))
                                                       (g8153
                                                        (letrec ((val7258
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8156
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8156))))
                                                g8153)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8157
                                                        (letrec ((x8158
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8158))))
                                                g8157)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8159
                                                        (letrec ((x8160
                                                                  (letrec ((x8161
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8161))))
                                                          (cdr x8160))))
                                                g8159)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8162
                                                        (letrec ((x8164
                                                                  (list? l)))
                                                          (assert x8164)))
                                                       (g8163
                                                        (letrec ((x-cnd8165
                                                                  (null? l)))
                                                          (if x-cnd8165
                                                            #f
                                                            (letrec ((x-cnd8166
                                                                      (letrec ((x8167
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8167
                                                                         k))))
                                                              (if x-cnd8166
                                                                (car l)
                                                                (letrec ((x8168
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8168))))))))
                                                g8163)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8169
                                                        (letrec ((x8170
                                                                  (car x)))
                                                          (car x8170))))
                                                g8169)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8171
                                                        (letrec ((x8174
                                                                  (char? c1)))
                                                          (assert x8174)))
                                                       (g8172
                                                        (letrec ((x8175
                                                                  (char? c2)))
                                                          (assert x8175)))
                                                       (g8173
                                                        (letrec ((x8176
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8176))))
                                                g8173)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8177
                                                        (letrec ((val7259
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8178
                                                                    (if val7259
                                                                      val7259
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8178))))
                                                g8177)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8179
                                                        (letrec ((x8182
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8182)))
                                                       (g8180
                                                        (letrec ((x8183
                                                                  (list? l)))
                                                          (assert x8183)))
                                                       (g8181
                                                        (letrec ((x-cnd8184
                                                                  (null? l)))
                                                          (if x-cnd8184
                                                            #t
                                                            (letrec ((x-cnd8185
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8185
                                                                (letrec ((g8186
                                                                          (letrec ((x8188
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8188)))
                                                                         (g8187
                                                                          (letrec ((x8189
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8189))))
                                                                  g8187)
                                                                '()))))))
                                                g8181)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8190
                                                        (letrec ((x8192
                                                                  (number? x)))
                                                          (assert x8192)))
                                                       (g8191
                                                        (letrec ((x-cnd8193
                                                                  (< x 0)))
                                                          (if x-cnd8193
                                                            (- 0 x)
                                                            x))))
                                                g8191)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8194
                                                        (letrec ((x8197
                                                                  (char? c1)))
                                                          (assert x8197)))
                                                       (g8195
                                                        (letrec ((x8198
                                                                  (char? c2)))
                                                          (assert x8198)))
                                                       (g8196
                                                        (letrec ((val7260
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8199
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8199))))
                                                g8196)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8200
                                                        (letrec ((x8201
                                                                  (letrec ((x8202
                                                                            (letrec ((x8203
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8203))))
                                                                    (cdr
                                                                     x8202))))
                                                          (car x8201))))
                                                g8200)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8204 #f)) g8204)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8205
                                                        (letrec ((x8207
                                                                  (letrec ((x8208
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8208)))
                                                                 (x8206
                                                                  (gcd m n)))
                                                          (/ x8207 x8206))))
                                                g8205)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8209
                                                        (letrec ((x8211
                                                                  (number? x)))
                                                          (assert x8211)))
                                                       (g8210
                                                        (letrec ((x8212
                                                                  (<= x y)))
                                                          (not x8212))))
                                                g8210)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8213
                                                        (letrec ((x8217
                                                                  (list? l)))
                                                          (assert x8217)))
                                                       (g8214
                                                        (letrec ((x8218
                                                                  (number?
                                                                   index)))
                                                          (assert x8218)))
                                                       (g8215
                                                        (letrec ((x8219
                                                                  (letrec ((x8220
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8220))))
                                                          (assert x8219)))
                                                       (g8216
                                                        (letrec ((x-cnd8221
                                                                  (= index 0)))
                                                          (if x-cnd8221
                                                            (car l)
                                                            (letrec ((x8223
                                                                      (cdr l))
                                                                     (x8222
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8223
                                                               x8222))))))
                                                g8216)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8224
                                                        (letrec ((x-cnd8225
                                                                  (= b 0)))
                                                          (if x-cnd8225
                                                            a
                                                            (letrec ((x8226
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8226))))))
                                                g8224)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8227
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8227)))
                                           (image?
                                            (lambda (image7645)
                                              (letrec ((g8228
                                                        (letrec ((x8229
                                                                  (car
                                                                   image7645)))
                                                          (eq? x8229 'image))))
                                                g8228)))
                                           (image/c
                                            (lambda (j7395 k7396 v7394)
                                              (letrec ((g8230
                                                        (cons image '())))
                                                g8230)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8231 (image)))
                                                g8231)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8232 (image)))
                                                g8232)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8233 (image)))
                                                g8233)))
                                           (min
                                            (lambda (x y)
                                              (letrec ((g8234
                                                        (letrec ((x-cnd8235
                                                                  (<= x y)))
                                                          (if x-cnd8235 x y))))
                                                g8234)))
                                           (max
                                            (lambda (x y)
                                              (letrec ((g8236
                                                        (letrec ((x-cnd8237
                                                                  (>= x y)))
                                                          (if x-cnd8237 x y))))
                                                g8236)))
                                           (sqr
                                            (lambda (x)
                                              (letrec ((g8238 (* x x)))
                                                g8238)))
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
                                            (lambda (j7399 k7400 f7401)
                                              (letrec ((g8239
                                                        (lambda (g7398)
                                                          (letrec ((g8240
                                                                    (letrec ((x7402
                                                                              ((lambda (g7406
                                                                                        g7407
                                                                                        g7408)
                                                                                 (letrec ((g8241
                                                                                           (letrec ((x-cnd8242
                                                                                                     ((lambda (v7405)
                                                                                                        (letrec ((g8243
                                                                                                                  (letrec ((x-cnd8244
                                                                                                                            (eq?
                                                                                                                             'x
                                                                                                                             v7405)))
                                                                                                                    (if x-cnd8244
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8245
                                                                                                                                (eq?
                                                                                                                                 'y
                                                                                                                                 v7405)))
                                                                                                                        (if x-cnd8245
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8246
                                                                                                                                    (eq?
                                                                                                                                     'posn
                                                                                                                                     v7405)))
                                                                                                                            (if x-cnd8246
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8247
                                                                                                                                        (eq?
                                                                                                                                         'move-toward/speed
                                                                                                                                         v7405)))
                                                                                                                                (if x-cnd8247
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8248
                                                                                                                                            (eq?
                                                                                                                                             'draw-on/image
                                                                                                                                             v7405)))
                                                                                                                                    (if x-cnd8248
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'dist
                                                                                                                                       v7405)))))))))))))
                                                                                                          g8243))
                                                                                                      g7408)))
                                                                                             (if x-cnd8242
                                                                                               g7408
                                                                                               (blame
                                                                                                g7406
                                                                                                '(lambda (v7405)
                                                                                                   (if (eq?
                                                                                                        'x
                                                                                                        v7405)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'y
                                                                                                          v7405)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'posn
                                                                                                            v7405)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'move-toward/speed
                                                                                                              v7405)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'draw-on/image
                                                                                                                v7405)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'dist
                                                                                                              v7405))))))))))))
                                                                                   g8241))
                                                                               j7399
                                                                               k7400
                                                                               g7398)))
                                                                      (letrec ((g8249
                                                                                (letrec ((x8251
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8252
                                                                                                       (letrec ((x-cnd8253
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'x)))
                                                                                                         (if x-cnd8253
                                                                                                           (letrec ((g8254
                                                                                                                     (lambda (j7409
                                                                                                                              k7410
                                                                                                                              f7411)
                                                                                                                       (letrec ((g8255
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8256
                                                                                                                                             (letrec ((x8257
                                                                                                                                                       (f7411)))
                                                                                                                                               (real?
                                                                                                                                                j7409
                                                                                                                                                k7410
                                                                                                                                                x8257))))
                                                                                                                                     g8256))))
                                                                                                                         g8255))))
                                                                                                             g8254)
                                                                                                           (letrec ((x-cnd8258
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'y)))
                                                                                                             (if x-cnd8258
                                                                                                               (letrec ((g8259
                                                                                                                         (lambda (j7412
                                                                                                                                  k7413
                                                                                                                                  f7414)
                                                                                                                           (letrec ((g8260
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8261
                                                                                                                                                 (letrec ((x8262
                                                                                                                                                           (f7414)))
                                                                                                                                                   (real?
                                                                                                                                                    j7412
                                                                                                                                                    k7413
                                                                                                                                                    x8262))))
                                                                                                                                         g8261))))
                                                                                                                             g8260))))
                                                                                                                 g8259)
                                                                                                               (letrec ((x-cnd8263
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'posn)))
                                                                                                                 (if x-cnd8263
                                                                                                                   (letrec ((g8264
                                                                                                                             (lambda (j7415
                                                                                                                                      k7416
                                                                                                                                      f7417)
                                                                                                                               (letrec ((g8265
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8266
                                                                                                                                                     (letrec ((x8267
                                                                                                                                                               (f7417)))
                                                                                                                                                       (posn/c
                                                                                                                                                        j7415
                                                                                                                                                        k7416
                                                                                                                                                        x8267))))
                                                                                                                                             g8266))))
                                                                                                                                 g8265))))
                                                                                                                     g8264)
                                                                                                                   (letrec ((x-cnd8268
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward/speed)))
                                                                                                                     (if x-cnd8268
                                                                                                                       (letrec ((g8269
                                                                                                                                 (lambda (j7420
                                                                                                                                          k7421
                                                                                                                                          f7422)
                                                                                                                                   (letrec ((g8270
                                                                                                                                             (lambda (g7418
                                                                                                                                                      g7419)
                                                                                                                                               (letrec ((g8271
                                                                                                                                                         (letrec ((x8272
                                                                                                                                                                   (letrec ((x8274
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7420
                                                                                                                                                                              k7421
                                                                                                                                                                              g7418))
                                                                                                                                                                            (x8273
                                                                                                                                                                             (real?
                                                                                                                                                                              j7420
                                                                                                                                                                              k7421
                                                                                                                                                                              g7419)))
                                                                                                                                                                     (f7422
                                                                                                                                                                      x8274
                                                                                                                                                                      x8273))))
                                                                                                                                                           (posn/c
                                                                                                                                                            j7420
                                                                                                                                                            k7421
                                                                                                                                                            x8272))))
                                                                                                                                                 g8271))))
                                                                                                                                     g8270))))
                                                                                                                         g8269)
                                                                                                                       (letrec ((x-cnd8275
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'draw-on/image)))
                                                                                                                         (if x-cnd8275
                                                                                                                           (letrec ((g8276
                                                                                                                                     (lambda (j7425
                                                                                                                                              k7426
                                                                                                                                              f7427)
                                                                                                                                       (letrec ((g8277
                                                                                                                                                 (lambda (g7423
                                                                                                                                                          g7424)
                                                                                                                                                   (letrec ((g8278
                                                                                                                                                             (letrec ((x8279
                                                                                                                                                                       (letrec ((x8281
                                                                                                                                                                                 (image?
                                                                                                                                                                                  j7425
                                                                                                                                                                                  k7426
                                                                                                                                                                                  g7423))
                                                                                                                                                                                (x8280
                                                                                                                                                                                 (image?
                                                                                                                                                                                  j7425
                                                                                                                                                                                  k7426
                                                                                                                                                                                  g7424)))
                                                                                                                                                                         (f7427
                                                                                                                                                                          x8281
                                                                                                                                                                          x8280))))
                                                                                                                                                               (image?
                                                                                                                                                                j7425
                                                                                                                                                                k7426
                                                                                                                                                                x8279))))
                                                                                                                                                     g8278))))
                                                                                                                                         g8277))))
                                                                                                                             g8276)
                                                                                                                           (letrec ((x-cnd8282
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'dist)))
                                                                                                                             (if x-cnd8282
                                                                                                                               (letrec ((g8283
                                                                                                                                         (lambda (j7429
                                                                                                                                                  k7430
                                                                                                                                                  f7431)
                                                                                                                                           (letrec ((g8284
                                                                                                                                                     (lambda (g7428)
                                                                                                                                                       (letrec ((g8285
                                                                                                                                                                 (letrec ((x8286
                                                                                                                                                                           (letrec ((x8287
                                                                                                                                                                                     (posn/c
                                                                                                                                                                                      j7429
                                                                                                                                                                                      k7430
                                                                                                                                                                                      g7428)))
                                                                                                                                                                             (f7431
                                                                                                                                                                              x8287))))
                                                                                                                                                                   (real?
                                                                                                                                                                    j7429
                                                                                                                                                                    k7430
                                                                                                                                                                    x8286))))
                                                                                                                                                         g8285))))
                                                                                                                                             g8284))))
                                                                                                                                 g8283)
                                                                                                                               (letrec ((g8288
                                                                                                                                         "error"))
                                                                                                                                 g8288)))))))))))))))
                                                                                               g8252))
                                                                                           x7402))
                                                                                         (x8250
                                                                                          (f7401
                                                                                           x7402)))
                                                                                  (x8251
                                                                                   j7399
                                                                                   k7400
                                                                                   x8250))))
                                                                        g8249))))
                                                            g8240))))
                                                g8239)))
                                           (player/c
                                            (lambda (j7433 k7434 f7435)
                                              (letrec ((g8289
                                                        (lambda (g7432)
                                                          (letrec ((g8290
                                                                    (letrec ((x7436
                                                                              ((lambda (g7440
                                                                                        g7441
                                                                                        g7442)
                                                                                 (letrec ((g8291
                                                                                           (letrec ((x-cnd8292
                                                                                                     ((lambda (v7439)
                                                                                                        (letrec ((g8293
                                                                                                                  (letrec ((x-cnd8294
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7439)))
                                                                                                                    (if x-cnd8294
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8295
                                                                                                                                (eq?
                                                                                                                                 'move-toward
                                                                                                                                 v7439)))
                                                                                                                        (if x-cnd8295
                                                                                                                          #t
                                                                                                                          (eq?
                                                                                                                           'draw-on
                                                                                                                           v7439)))))))
                                                                                                          g8293))
                                                                                                      g7442)))
                                                                                             (if x-cnd8292
                                                                                               g7442
                                                                                               (blame
                                                                                                g7440
                                                                                                '(lambda (v7439)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7439)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'move-toward
                                                                                                          v7439)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'draw-on
                                                                                                        v7439)))))))))
                                                                                   g8291))
                                                                               j7433
                                                                               k7434
                                                                               g7432)))
                                                                      (letrec ((g8296
                                                                                (letrec ((x8298
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8299
                                                                                                       (letrec ((x-cnd8300
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8300
                                                                                                           (letrec ((g8301
                                                                                                                     (lambda (j7443
                                                                                                                              k7444
                                                                                                                              f7445)
                                                                                                                       (letrec ((g8302
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8303
                                                                                                                                             (letrec ((x8304
                                                                                                                                                       (f7445)))
                                                                                                                                               (posn/c
                                                                                                                                                j7443
                                                                                                                                                k7444
                                                                                                                                                x8304))))
                                                                                                                                     g8303))))
                                                                                                                         g8302))))
                                                                                                             g8301)
                                                                                                           (letrec ((x-cnd8305
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'move-toward)))
                                                                                                             (if x-cnd8305
                                                                                                               (letrec ((g8306
                                                                                                                         (lambda (j7447
                                                                                                                                  k7448
                                                                                                                                  f7449)
                                                                                                                           (letrec ((g8307
                                                                                                                                     (lambda (g7446)
                                                                                                                                       (letrec ((g8308
                                                                                                                                                 (letrec ((x8309
                                                                                                                                                           (letrec ((x8310
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7447
                                                                                                                                                                      k7448
                                                                                                                                                                      g7446)))
                                                                                                                                                             (f7449
                                                                                                                                                              x8310))))
                                                                                                                                                   (player/c
                                                                                                                                                    j7447
                                                                                                                                                    k7448
                                                                                                                                                    x8309))))
                                                                                                                                         g8308))))
                                                                                                                             g8307))))
                                                                                                                 g8306)
                                                                                                               (letrec ((x-cnd8311
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8311
                                                                                                                   (letrec ((g8312
                                                                                                                             (lambda (j7451
                                                                                                                                      k7452
                                                                                                                                      f7453)
                                                                                                                               (letrec ((g8313
                                                                                                                                         (lambda (g7450)
                                                                                                                                           (letrec ((g8314
                                                                                                                                                     (letrec ((x8315
                                                                                                                                                               (letrec ((x8316
                                                                                                                                                                         (image?
                                                                                                                                                                          j7451
                                                                                                                                                                          k7452
                                                                                                                                                                          g7450)))
                                                                                                                                                                 (f7453
                                                                                                                                                                  x8316))))
                                                                                                                                                       (image?
                                                                                                                                                        j7451
                                                                                                                                                        k7452
                                                                                                                                                        x8315))))
                                                                                                                                             g8314))))
                                                                                                                                 g8313))))
                                                                                                                     g8312)
                                                                                                                   (letrec ((g8317
                                                                                                                             "error"))
                                                                                                                     g8317)))))))))
                                                                                               g8299))
                                                                                           x7436))
                                                                                         (x8297
                                                                                          (f7435
                                                                                           x7436)))
                                                                                  (x8298
                                                                                   j7433
                                                                                   k7434
                                                                                   x8297))))
                                                                        g8296))))
                                                            g8290))))
                                                g8289)))
                                           (zombie/c
                                            (lambda (j7455 k7456 f7457)
                                              (letrec ((g8318
                                                        (lambda (g7454)
                                                          (letrec ((g8319
                                                                    (letrec ((x7458
                                                                              ((lambda (g7462
                                                                                        g7463
                                                                                        g7464)
                                                                                 (letrec ((g8320
                                                                                           (letrec ((x-cnd8321
                                                                                                     ((lambda (v7461)
                                                                                                        (letrec ((g8322
                                                                                                                  (letrec ((x-cnd8323
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7461)))
                                                                                                                    (if x-cnd8323
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8324
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7461)))
                                                                                                                        (if x-cnd8324
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8325
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7461)))
                                                                                                                            (if x-cnd8325
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'move-toward
                                                                                                                               v7461)))))))))
                                                                                                          g8322))
                                                                                                      g7464)))
                                                                                             (if x-cnd8321
                                                                                               g7464
                                                                                               (blame
                                                                                                g7462
                                                                                                '(lambda (v7461)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7461)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7461)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7461)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'move-toward
                                                                                                          v7461))))))))))
                                                                                   g8320))
                                                                               j7455
                                                                               k7456
                                                                               g7454)))
                                                                      (letrec ((g8326
                                                                                (letrec ((x8328
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8329
                                                                                                       (letrec ((x-cnd8330
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8330
                                                                                                           (letrec ((g8331
                                                                                                                     (lambda (j7465
                                                                                                                              k7466
                                                                                                                              f7467)
                                                                                                                       (letrec ((g8332
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8333
                                                                                                                                             (letrec ((x8334
                                                                                                                                                       (f7467)))
                                                                                                                                               (posn/c
                                                                                                                                                j7465
                                                                                                                                                k7466
                                                                                                                                                x8334))))
                                                                                                                                     g8333))))
                                                                                                                         g8332))))
                                                                                                             g8331)
                                                                                                           (letrec ((x-cnd8335
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8335
                                                                                                               (letrec ((g8336
                                                                                                                         (lambda (j7470
                                                                                                                                  k7471
                                                                                                                                  f7472)
                                                                                                                           (letrec ((g8337
                                                                                                                                     (lambda (g7468
                                                                                                                                              g7469)
                                                                                                                                       (letrec ((g8338
                                                                                                                                                 (letrec ((x8339
                                                                                                                                                           (letrec ((x8341
                                                                                                                                                                     (string?
                                                                                                                                                                      j7470
                                                                                                                                                                      k7471
                                                                                                                                                                      g7468))
                                                                                                                                                                    (x8340
                                                                                                                                                                     (image?
                                                                                                                                                                      j7470
                                                                                                                                                                      k7471
                                                                                                                                                                      g7469)))
                                                                                                                                                             (f7472
                                                                                                                                                              x8341
                                                                                                                                                              x8340))))
                                                                                                                                                   (image?
                                                                                                                                                    j7470
                                                                                                                                                    k7471
                                                                                                                                                    x8339))))
                                                                                                                                         g8338))))
                                                                                                                             g8337))))
                                                                                                                 g8336)
                                                                                                               (letrec ((x-cnd8342
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8342
                                                                                                                   (letrec ((g8343
                                                                                                                             (lambda (j7474
                                                                                                                                      k7475
                                                                                                                                      f7476)
                                                                                                                               (letrec ((g8344
                                                                                                                                         (lambda (g7473)
                                                                                                                                           (letrec ((g8345
                                                                                                                                                     (letrec ((x8346
                                                                                                                                                               (letrec ((x8347
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7474
                                                                                                                                                                          k7475
                                                                                                                                                                          g7473)))
                                                                                                                                                                 (f7476
                                                                                                                                                                  x8347))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7474
                                                                                                                                                        k7475
                                                                                                                                                        x8346))))
                                                                                                                                             g8345))))
                                                                                                                                 g8344))))
                                                                                                                     g8343)
                                                                                                                   (letrec ((x-cnd8348
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward)))
                                                                                                                     (if x-cnd8348
                                                                                                                       (letrec ((g8349
                                                                                                                                 (lambda (j7478
                                                                                                                                          k7479
                                                                                                                                          f7480)
                                                                                                                                   (letrec ((g8350
                                                                                                                                             (lambda (g7477)
                                                                                                                                               (letrec ((g8351
                                                                                                                                                         (letrec ((x8352
                                                                                                                                                                   (letrec ((x8353
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7478
                                                                                                                                                                              k7479
                                                                                                                                                                              g7477)))
                                                                                                                                                                     (f7480
                                                                                                                                                                      x8353))))
                                                                                                                                                           (zombie/c
                                                                                                                                                            j7478
                                                                                                                                                            k7479
                                                                                                                                                            x8352))))
                                                                                                                                                 g8351))))
                                                                                                                                     g8350))))
                                                                                                                         g8349)
                                                                                                                       (letrec ((g8354
                                                                                                                                 "error"))
                                                                                                                         g8354)))))))))))
                                                                                               g8329))
                                                                                           x7458))
                                                                                         (x8327
                                                                                          (f7457
                                                                                           x7458)))
                                                                                  (x8328
                                                                                   j7455
                                                                                   k7456
                                                                                   x8327))))
                                                                        g8326))))
                                                            g8319))))
                                                g8318)))
                                           (horde/c
                                            (lambda (j7482 k7483 f7484)
                                              (letrec ((g8355
                                                        (lambda (g7481)
                                                          (letrec ((g8356
                                                                    (letrec ((x7485
                                                                              ((lambda (g7489
                                                                                        g7490
                                                                                        g7491)
                                                                                 (letrec ((g8357
                                                                                           (letrec ((x-cnd8358
                                                                                                     ((lambda (v7488)
                                                                                                        (letrec ((g8359
                                                                                                                  (letrec ((x-cnd8360
                                                                                                                            (eq?
                                                                                                                             'dead
                                                                                                                             v7488)))
                                                                                                                    (if x-cnd8360
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8361
                                                                                                                                (eq?
                                                                                                                                 'undead
                                                                                                                                 v7488)))
                                                                                                                        (if x-cnd8361
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8362
                                                                                                                                    (eq?
                                                                                                                                     'draw-on
                                                                                                                                     v7488)))
                                                                                                                            (if x-cnd8362
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8363
                                                                                                                                        (eq?
                                                                                                                                         'touching?
                                                                                                                                         v7488)))
                                                                                                                                (if x-cnd8363
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8364
                                                                                                                                            (eq?
                                                                                                                                             'move-toward
                                                                                                                                             v7488)))
                                                                                                                                    (if x-cnd8364
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'eat-brains
                                                                                                                                       v7488)))))))))))))
                                                                                                          g8359))
                                                                                                      g7491)))
                                                                                             (if x-cnd8358
                                                                                               g7491
                                                                                               (blame
                                                                                                g7489
                                                                                                '(lambda (v7488)
                                                                                                   (if (eq?
                                                                                                        'dead
                                                                                                        v7488)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'undead
                                                                                                          v7488)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'draw-on
                                                                                                            v7488)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'touching?
                                                                                                              v7488)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'move-toward
                                                                                                                v7488)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'eat-brains
                                                                                                              v7488))))))))))))
                                                                                   g8357))
                                                                               j7482
                                                                               k7483
                                                                               g7481)))
                                                                      (letrec ((g8365
                                                                                (letrec ((x8367
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8368
                                                                                                       (letrec ((x-cnd8369
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'dead)))
                                                                                                         (if x-cnd8369
                                                                                                           (letrec ((g8370
                                                                                                                     (lambda (j7492
                                                                                                                              k7493
                                                                                                                              f7494)
                                                                                                                       (letrec ((g8371
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8372
                                                                                                                                             (letrec ((x8373
                                                                                                                                                       (f7494)))
                                                                                                                                               (zombies/c
                                                                                                                                                j7492
                                                                                                                                                k7493
                                                                                                                                                x8373))))
                                                                                                                                     g8372))))
                                                                                                                         g8371))))
                                                                                                             g8370)
                                                                                                           (letrec ((x-cnd8374
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'undead)))
                                                                                                             (if x-cnd8374
                                                                                                               (letrec ((g8375
                                                                                                                         (lambda (j7495
                                                                                                                                  k7496
                                                                                                                                  f7497)
                                                                                                                           (letrec ((g8376
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8377
                                                                                                                                                 (letrec ((x8378
                                                                                                                                                           (f7497)))
                                                                                                                                                   (zombies/c
                                                                                                                                                    j7495
                                                                                                                                                    k7496
                                                                                                                                                    x8378))))
                                                                                                                                         g8377))))
                                                                                                                             g8376))))
                                                                                                                 g8375)
                                                                                                               (letrec ((x-cnd8379
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8379
                                                                                                                   (letrec ((g8380
                                                                                                                             (lambda (j7499
                                                                                                                                      k7500
                                                                                                                                      f7501)
                                                                                                                               (letrec ((g8381
                                                                                                                                         (lambda (g7498)
                                                                                                                                           (letrec ((g8382
                                                                                                                                                     (letrec ((x8383
                                                                                                                                                               (letrec ((x8384
                                                                                                                                                                         (image?
                                                                                                                                                                          j7499
                                                                                                                                                                          k7500
                                                                                                                                                                          g7498)))
                                                                                                                                                                 (f7501
                                                                                                                                                                  x8384))))
                                                                                                                                                       (image?
                                                                                                                                                        j7499
                                                                                                                                                        k7500
                                                                                                                                                        x8383))))
                                                                                                                                             g8382))))
                                                                                                                                 g8381))))
                                                                                                                     g8380)
                                                                                                                   (letrec ((x-cnd8385
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'touching?)))
                                                                                                                     (if x-cnd8385
                                                                                                                       (letrec ((g8386
                                                                                                                                 (lambda (j7503
                                                                                                                                          k7504
                                                                                                                                          f7505)
                                                                                                                                   (letrec ((g8387
                                                                                                                                             (lambda (g7502)
                                                                                                                                               (letrec ((g8388
                                                                                                                                                         (letrec ((x8389
                                                                                                                                                                   (letrec ((x8390
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7503
                                                                                                                                                                              k7504
                                                                                                                                                                              g7502)))
                                                                                                                                                                     (f7505
                                                                                                                                                                      x8390))))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7503
                                                                                                                                                            k7504
                                                                                                                                                            x8389))))
                                                                                                                                                 g8388))))
                                                                                                                                     g8387))))
                                                                                                                         g8386)
                                                                                                                       (letrec ((x-cnd8391
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'move-toward)))
                                                                                                                         (if x-cnd8391
                                                                                                                           (letrec ((g8392
                                                                                                                                     (lambda (j7507
                                                                                                                                              k7508
                                                                                                                                              f7509)
                                                                                                                                       (letrec ((g8393
                                                                                                                                                 (lambda (g7506)
                                                                                                                                                   (letrec ((g8394
                                                                                                                                                             (letrec ((x8395
                                                                                                                                                                       (letrec ((x8396
                                                                                                                                                                                 (posn/c
                                                                                                                                                                                  j7507
                                                                                                                                                                                  k7508
                                                                                                                                                                                  g7506)))
                                                                                                                                                                         (f7509
                                                                                                                                                                          x8396))))
                                                                                                                                                               (horde/c
                                                                                                                                                                j7507
                                                                                                                                                                k7508
                                                                                                                                                                x8395))))
                                                                                                                                                     g8394))))
                                                                                                                                         g8393))))
                                                                                                                             g8392)
                                                                                                                           (letrec ((x-cnd8397
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'eat-brains)))
                                                                                                                             (if x-cnd8397
                                                                                                                               (letrec ((g8398
                                                                                                                                         (lambda (j7510
                                                                                                                                                  k7511
                                                                                                                                                  f7512)
                                                                                                                                           (letrec ((g8399
                                                                                                                                                     (lambda ()
                                                                                                                                                       (letrec ((g8400
                                                                                                                                                                 (letrec ((x8401
                                                                                                                                                                           (f7512)))
                                                                                                                                                                   (horde/c
                                                                                                                                                                    j7510
                                                                                                                                                                    k7511
                                                                                                                                                                    x8401))))
                                                                                                                                                         g8400))))
                                                                                                                                             g8399))))
                                                                                                                                 g8398)
                                                                                                                               (letrec ((g8402
                                                                                                                                         "error"))
                                                                                                                                 g8402)))))))))))))))
                                                                                               g8368))
                                                                                           x7485))
                                                                                         (x8366
                                                                                          (f7484
                                                                                           x7485)))
                                                                                  (x8367
                                                                                   j7482
                                                                                   k7483
                                                                                   x8366))))
                                                                        g8365))))
                                                            g8356))))
                                                g8355)))
                                           (zombies/c
                                            (lambda (j7514 k7515 f7516)
                                              (letrec ((g8403
                                                        (lambda (g7513)
                                                          (letrec ((g8404
                                                                    (letrec ((x7517
                                                                              ((lambda (g7521
                                                                                        g7522
                                                                                        g7523)
                                                                                 (letrec ((g8405
                                                                                           (letrec ((x-cnd8406
                                                                                                     ((lambda (v7520)
                                                                                                        (letrec ((g8407
                                                                                                                  (letrec ((x-cnd8408
                                                                                                                            (eq?
                                                                                                                             'move-toward
                                                                                                                             v7520)))
                                                                                                                    (if x-cnd8408
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8409
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7520)))
                                                                                                                        (if x-cnd8409
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8410
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7520)))
                                                                                                                            (if x-cnd8410
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'kill-all
                                                                                                                               v7520)))))))))
                                                                                                          g8407))
                                                                                                      g7523)))
                                                                                             (if x-cnd8406
                                                                                               g7523
                                                                                               (blame
                                                                                                g7521
                                                                                                '(lambda (v7520)
                                                                                                   (if (eq?
                                                                                                        'move-toward
                                                                                                        v7520)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7520)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7520)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'kill-all
                                                                                                          v7520))))))))))
                                                                                   g8405))
                                                                               j7514
                                                                               k7515
                                                                               g7513)))
                                                                      (letrec ((g8411
                                                                                (letrec ((x8413
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8414
                                                                                                       (letrec ((x-cnd8415
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'move-toward)))
                                                                                                         (if x-cnd8415
                                                                                                           (letrec ((g8416
                                                                                                                     (lambda (j7525
                                                                                                                              k7526
                                                                                                                              f7527)
                                                                                                                       (letrec ((g8417
                                                                                                                                 (lambda (g7524)
                                                                                                                                   (letrec ((g8418
                                                                                                                                             (letrec ((x8419
                                                                                                                                                       (letrec ((x8420
                                                                                                                                                                 (posn/c
                                                                                                                                                                  j7525
                                                                                                                                                                  k7526
                                                                                                                                                                  g7524)))
                                                                                                                                                         (f7527
                                                                                                                                                          x8420))))
                                                                                                                                               (zombies/c
                                                                                                                                                j7525
                                                                                                                                                k7526
                                                                                                                                                x8419))))
                                                                                                                                     g8418))))
                                                                                                                         g8417))))
                                                                                                             g8416)
                                                                                                           (letrec ((x-cnd8421
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8421
                                                                                                               (letrec ((g8422
                                                                                                                         (lambda (j7530
                                                                                                                                  k7531
                                                                                                                                  f7532)
                                                                                                                           (letrec ((g8423
                                                                                                                                     (lambda (g7528
                                                                                                                                              g7529)
                                                                                                                                       (letrec ((g8424
                                                                                                                                                 (letrec ((x8425
                                                                                                                                                           (letrec ((x8427
                                                                                                                                                                     (string?
                                                                                                                                                                      j7530
                                                                                                                                                                      k7531
                                                                                                                                                                      g7528))
                                                                                                                                                                    (x8426
                                                                                                                                                                     (image?
                                                                                                                                                                      j7530
                                                                                                                                                                      k7531
                                                                                                                                                                      g7529)))
                                                                                                                                                             (f7532
                                                                                                                                                              x8427
                                                                                                                                                              x8426))))
                                                                                                                                                   (image?
                                                                                                                                                    j7530
                                                                                                                                                    k7531
                                                                                                                                                    x8425))))
                                                                                                                                         g8424))))
                                                                                                                             g8423))))
                                                                                                                 g8422)
                                                                                                               (letrec ((x-cnd8428
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8428
                                                                                                                   (letrec ((g8429
                                                                                                                             (lambda (j7534
                                                                                                                                      k7535
                                                                                                                                      f7536)
                                                                                                                               (letrec ((g8430
                                                                                                                                         (lambda (g7533)
                                                                                                                                           (letrec ((g8431
                                                                                                                                                     (letrec ((x8432
                                                                                                                                                               (letrec ((x8433
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7534
                                                                                                                                                                          k7535
                                                                                                                                                                          g7533)))
                                                                                                                                                                 (f7536
                                                                                                                                                                  x8433))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7534
                                                                                                                                                        k7535
                                                                                                                                                        x8432))))
                                                                                                                                             g8431))))
                                                                                                                                 g8430))))
                                                                                                                     g8429)
                                                                                                                   (letrec ((x-cnd8434
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'kill-all)))
                                                                                                                     (if x-cnd8434
                                                                                                                       (letrec ((g8435
                                                                                                                                 (lambda (j7538
                                                                                                                                          k7539
                                                                                                                                          f7540)
                                                                                                                                   (letrec ((g8436
                                                                                                                                             (lambda (g7537)
                                                                                                                                               (letrec ((g8437
                                                                                                                                                         (letrec ((x8438
                                                                                                                                                                   (letrec ((x8439
                                                                                                                                                                             (zombies/c
                                                                                                                                                                              j7538
                                                                                                                                                                              k7539
                                                                                                                                                                              g7537)))
                                                                                                                                                                     (f7540
                                                                                                                                                                      x8439))))
                                                                                                                                                           (horde/c
                                                                                                                                                            j7538
                                                                                                                                                            k7539
                                                                                                                                                            x8438))))
                                                                                                                                                 g8437))))
                                                                                                                                     g8436))))
                                                                                                                         g8435)
                                                                                                                       (letrec ((g8440
                                                                                                                                 "error"))
                                                                                                                         g8440)))))))))))
                                                                                               g8414))
                                                                                           x7517))
                                                                                         (x8412
                                                                                          (f7516
                                                                                           x7517)))
                                                                                  (x8413
                                                                                   j7514
                                                                                   k7515
                                                                                   x8412))))
                                                                        g8411))))
                                                            g8404))))
                                                g8403)))
                                           (world/c
                                            (lambda (j7542 k7543 f7544)
                                              (letrec ((g8441
                                                        (lambda (g7541)
                                                          (letrec ((g8442
                                                                    (letrec ((x7545
                                                                              ((lambda (g7549
                                                                                        g7550
                                                                                        g7551)
                                                                                 (letrec ((g8443
                                                                                           (letrec ((x-cnd8444
                                                                                                     ((lambda (v7548)
                                                                                                        (letrec ((g8445
                                                                                                                  (letrec ((x-cnd8446
                                                                                                                            (eq?
                                                                                                                             'on-mouse
                                                                                                                             v7548)))
                                                                                                                    (if x-cnd8446
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8447
                                                                                                                                (eq?
                                                                                                                                 'on-tick
                                                                                                                                 v7548)))
                                                                                                                        (if x-cnd8447
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8448
                                                                                                                                    (eq?
                                                                                                                                     'to-draw
                                                                                                                                     v7548)))
                                                                                                                            (if x-cnd8448
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'stop-when
                                                                                                                               v7548)))))))))
                                                                                                          g8445))
                                                                                                      g7551)))
                                                                                             (if x-cnd8444
                                                                                               g7551
                                                                                               (blame
                                                                                                g7549
                                                                                                '(lambda (v7548)
                                                                                                   (if (eq?
                                                                                                        'on-mouse
                                                                                                        v7548)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'on-tick
                                                                                                          v7548)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'to-draw
                                                                                                            v7548)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'stop-when
                                                                                                          v7548))))))))))
                                                                                   g8443))
                                                                               j7542
                                                                               k7543
                                                                               g7541)))
                                                                      (letrec ((g8449
                                                                                (letrec ((x8451
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8452
                                                                                                       (letrec ((x-cnd8453
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'on-mouse)))
                                                                                                         (if x-cnd8453
                                                                                                           (letrec ((g8454
                                                                                                                     (lambda (j7555
                                                                                                                              k7556
                                                                                                                              f7557)
                                                                                                                       (letrec ((g8455
                                                                                                                                 (lambda (g7552
                                                                                                                                          g7553
                                                                                                                                          g7554)
                                                                                                                                   (letrec ((g8456
                                                                                                                                             (letrec ((x8457
                                                                                                                                                       (letrec ((x8460
                                                                                                                                                                 (real?
                                                                                                                                                                  j7555
                                                                                                                                                                  k7556
                                                                                                                                                                  g7552))
                                                                                                                                                                (x8459
                                                                                                                                                                 (real?
                                                                                                                                                                  j7555
                                                                                                                                                                  k7556
                                                                                                                                                                  g7553))
                                                                                                                                                                (x8458
                                                                                                                                                                 (string?
                                                                                                                                                                  j7555
                                                                                                                                                                  k7556
                                                                                                                                                                  g7554)))
                                                                                                                                                         (f7557
                                                                                                                                                          x8460
                                                                                                                                                          x8459
                                                                                                                                                          x8458))))
                                                                                                                                               (world/c
                                                                                                                                                j7555
                                                                                                                                                k7556
                                                                                                                                                x8457))))
                                                                                                                                     g8456))))
                                                                                                                         g8455))))
                                                                                                             g8454)
                                                                                                           (letrec ((x-cnd8461
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'on-tick)))
                                                                                                             (if x-cnd8461
                                                                                                               (letrec ((g8462
                                                                                                                         (lambda (j7558
                                                                                                                                  k7559
                                                                                                                                  f7560)
                                                                                                                           (letrec ((g8463
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8464
                                                                                                                                                 (letrec ((x8465
                                                                                                                                                           (f7560)))
                                                                                                                                                   (world/c
                                                                                                                                                    j7558
                                                                                                                                                    k7559
                                                                                                                                                    x8465))))
                                                                                                                                         g8464))))
                                                                                                                             g8463))))
                                                                                                                 g8462)
                                                                                                               (letrec ((x-cnd8466
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'to-draw)))
                                                                                                                 (if x-cnd8466
                                                                                                                   (letrec ((g8467
                                                                                                                             (lambda (j7561
                                                                                                                                      k7562
                                                                                                                                      f7563)
                                                                                                                               (letrec ((g8468
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8469
                                                                                                                                                     (letrec ((x8470
                                                                                                                                                               (f7563)))
                                                                                                                                                       (image?
                                                                                                                                                        j7561
                                                                                                                                                        k7562
                                                                                                                                                        x8470))))
                                                                                                                                             g8469))))
                                                                                                                                 g8468))))
                                                                                                                     g8467)
                                                                                                                   (letrec ((x-cnd8471
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'stop-when)))
                                                                                                                     (if x-cnd8471
                                                                                                                       (letrec ((g8472
                                                                                                                                 (lambda (j7564
                                                                                                                                          k7565
                                                                                                                                          f7566)
                                                                                                                                   (letrec ((g8473
                                                                                                                                             (lambda ()
                                                                                                                                               (letrec ((g8474
                                                                                                                                                         (letrec ((x8475
                                                                                                                                                                   (f7566)))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7564
                                                                                                                                                            k7565
                                                                                                                                                            x8475))))
                                                                                                                                                 g8474))))
                                                                                                                                     g8473))))
                                                                                                                         g8472)
                                                                                                                       (letrec ((g8476
                                                                                                                                 "error"))
                                                                                                                         g8476)))))))))))
                                                                                               g8452))
                                                                                           x7545))
                                                                                         (x8450
                                                                                          (f7544
                                                                                           x7545)))
                                                                                  (x8451
                                                                                   j7542
                                                                                   k7543
                                                                                   x8450))))
                                                                        g8449))))
                                                            g8442))))
                                                g8441)))
                                           (new-world
                                            (lambda (player mouse zombies)
                                              (letrec ((g8477
                                                        (lambda (msg)
                                                          (letrec ((g8478
                                                                    (letrec ((x-cnd8479
                                                                              (equal?
                                                                               msg
                                                                               'on-mouse)))
                                                                      (if x-cnd8479
                                                                        (letrec ((g8480
                                                                                  (letrec ((x8485
                                                                                            (x
                                                                                             y
                                                                                             me))
                                                                                           (x8481
                                                                                            (letrec ((x8482
                                                                                                      (letrec ((x-cnd8483
                                                                                                                (equal?
                                                                                                                 me
                                                                                                                 "leave")))
                                                                                                        (if x-cnd8483
                                                                                                          (letrec ((x8484
                                                                                                                    (player
                                                                                                                     'posn)))
                                                                                                            (x8484))
                                                                                                          (new-posn
                                                                                                           x
                                                                                                           y)))))
                                                                                              (new-world
                                                                                               player
                                                                                               x8482
                                                                                               zombies))))
                                                                                    (λ x8485
                                                                                      x8481))))
                                                                          g8480)
                                                                        (letrec ((x-cnd8486
                                                                                  (equal?
                                                                                   msg
                                                                                   'on-tick)))
                                                                          (if x-cnd8486
                                                                            (letrec ((g8487
                                                                                      (letrec ((x8488
                                                                                                (letrec ((x8495
                                                                                                          (letrec ((x8496
                                                                                                                    (player
                                                                                                                     'move-toward)))
                                                                                                            (x8496
                                                                                                             mouse)))
                                                                                                         (x8489
                                                                                                          (letrec ((x8492
                                                                                                                    (letrec ((x8493
                                                                                                                              (letrec ((x8494
                                                                                                                                        (zombies
                                                                                                                                         'eat-brains)))
                                                                                                                                (x8494))))
                                                                                                                      (x8493
                                                                                                                       'move-toward)))
                                                                                                                   (x8490
                                                                                                                    (letrec ((x8491
                                                                                                                              (player
                                                                                                                               'posn)))
                                                                                                                      (x8491))))
                                                                                                            (x8492
                                                                                                             x8490))))
                                                                                                  (new-world
                                                                                                   x8495
                                                                                                   mouse
                                                                                                   x8489))))
                                                                                        (λ ()
                                                                                          x8488))))
                                                                              g8487)
                                                                            (letrec ((x-cnd8497
                                                                                      (equal?
                                                                                       msg
                                                                                       'to-draw)))
                                                                              (if x-cnd8497
                                                                                (letrec ((g8498
                                                                                          (letrec ((x8499
                                                                                                    (letrec ((x8502
                                                                                                              (player
                                                                                                               'draw-on))
                                                                                                             (x8500
                                                                                                              (letrec ((x8501
                                                                                                                        (zombies
                                                                                                                         'draw-on)))
                                                                                                                (x8501
                                                                                                                 MT-SCENE))))
                                                                                                      (x8502
                                                                                                       x8500))))
                                                                                            (λ ()
                                                                                              x8499))))
                                                                                  g8498)
                                                                                (letrec ((x-cnd8503
                                                                                          (equal?
                                                                                           msg
                                                                                           'stop-when)))
                                                                                  (if x-cnd8503
                                                                                    (letrec ((g8504
                                                                                              (letrec ((x8505
                                                                                                        (letrec ((x8508
                                                                                                                  (zombies
                                                                                                                   'touching?))
                                                                                                                 (x8506
                                                                                                                  (letrec ((x8507
                                                                                                                            (player
                                                                                                                             'posn)))
                                                                                                                    (x8507))))
                                                                                                          (x8508
                                                                                                           x8506))))
                                                                                                (λ ()
                                                                                                  x8505))))
                                                                                      g8504)
                                                                                    (letrec ((g8509
                                                                                              "unknown message"))
                                                                                      g8509)))))))))))
                                                            g8478))))
                                                g8477)))
                                           (new-player
                                            (lambda (p)
                                              (letrec ((g8510
                                                        (lambda (msg)
                                                          (letrec ((g8511
                                                                    (letrec ((x-cnd8512
                                                                              (equal?
                                                                               msg
                                                                               'posn)))
                                                                      (if x-cnd8512
                                                                        (letrec ((g8513
                                                                                  (λ ()
                                                                                    p)))
                                                                          g8513)
                                                                        (letrec ((x-cnd8514
                                                                                  (equal?
                                                                                   msg
                                                                                   'move-toward)))
                                                                          (if x-cnd8514
                                                                            (letrec ((g8515
                                                                                      (letrec ((x8519
                                                                                                (q))
                                                                                               (x8516
                                                                                                (letrec ((x8517
                                                                                                          (letrec ((x8518
                                                                                                                    (p
                                                                                                                     'move-toward/speed)))
                                                                                                            (x8518
                                                                                                             q
                                                                                                             PLAYER-SPEED))))
                                                                                                  (new-player
                                                                                                   x8517))))
                                                                                        (λ x8519
                                                                                          x8516))))
                                                                              g8515)
                                                                            (letrec ((x-cnd8520
                                                                                      (equal?
                                                                                       msg
                                                                                       'draw-on)))
                                                                              (if x-cnd8520
                                                                                (letrec ((g8521
                                                                                          (letrec ((x8524
                                                                                                    (scn))
                                                                                                   (x8522
                                                                                                    (letrec ((x8523
                                                                                                              (p
                                                                                                               'draw-on/image)))
                                                                                                      (x8523
                                                                                                       PLAYER-IMG
                                                                                                       scn))))
                                                                                            (λ x8524
                                                                                              x8522))))
                                                                                  g8521)
                                                                                (letrec ((g8525
                                                                                          "unknown message"))
                                                                                  g8525)))))))))
                                                            g8511))))
                                                g8510)))
                                           (new-horde
                                            (lambda (undead dead)
                                              (letrec ((g8526
                                                        (lambda (msg)
                                                          (letrec ((g8527
                                                                    (letrec ((x-cnd8528
                                                                              (equal?
                                                                               msg
                                                                               'dead)))
                                                                      (if x-cnd8528
                                                                        (letrec ((g8529
                                                                                  (λ ()
                                                                                    dead)))
                                                                          g8529)
                                                                        (letrec ((x-cnd8530
                                                                                  (equal?
                                                                                   msg
                                                                                   'undead)))
                                                                          (if x-cnd8530
                                                                            (letrec ((g8531
                                                                                      (λ ()
                                                                                        undead)))
                                                                              g8531)
                                                                            (letrec ((x-cnd8532
                                                                                      (equal?
                                                                                       msg
                                                                                       'draw-on)))
                                                                              (if x-cnd8532
                                                                                (letrec ((g8533
                                                                                          (letrec ((x8538
                                                                                                    (scn))
                                                                                                   (x8534
                                                                                                    (letrec ((x8537
                                                                                                              (undead
                                                                                                               'draw-on/color))
                                                                                                             (x8535
                                                                                                              (letrec ((x8536
                                                                                                                        (dead
                                                                                                                         'draw-on/color)))
                                                                                                                (x8536
                                                                                                                 "black"
                                                                                                                 scn))))
                                                                                                      (x8537
                                                                                                       "yellow"
                                                                                                       x8535))))
                                                                                            (λ x8538
                                                                                              x8534))))
                                                                                  g8533)
                                                                                (letrec ((x-cnd8539
                                                                                          (equal?
                                                                                           msg
                                                                                           'touching?)))
                                                                                  (if x-cnd8539
                                                                                    (letrec ((g8540
                                                                                              (letrec ((x8546
                                                                                                        (p))
                                                                                                       (x8541
                                                                                                        (letrec ((x8544
                                                                                                                  (letrec ((x8545
                                                                                                                            (undead
                                                                                                                             'touching?)))
                                                                                                                    (x8545
                                                                                                                     p)))
                                                                                                                 (x8542
                                                                                                                  (letrec ((x8543
                                                                                                                            (dead
                                                                                                                             'touching?)))
                                                                                                                    (x8543
                                                                                                                     p))))
                                                                                                          (or x8544
                                                                                                              x8542))))
                                                                                                (λ x8546
                                                                                                  x8541))))
                                                                                      g8540)
                                                                                    (letrec ((x-cnd8547
                                                                                              (equal?
                                                                                               msg
                                                                                               'move-toward)))
                                                                                      (if x-cnd8547
                                                                                        (letrec ((g8548
                                                                                                  (letrec ((x8552
                                                                                                            (p))
                                                                                                           (x8549
                                                                                                            (letrec ((x8550
                                                                                                                      (letrec ((x8551
                                                                                                                                (undead
                                                                                                                                 'move-toward)))
                                                                                                                        (x8551
                                                                                                                         p))))
                                                                                                              (new-horde
                                                                                                               x8550
                                                                                                               dead))))
                                                                                                    (λ x8552
                                                                                                      x8549))))
                                                                                          g8548)
                                                                                        (letrec ((x-cnd8553
                                                                                                  (equal?
                                                                                                   msg
                                                                                                   'eat-brains)))
                                                                                          (if x-cnd8553
                                                                                            (letrec ((g8554
                                                                                                      (letrec ((x8555
                                                                                                                (letrec ((x8556
                                                                                                                          (undead
                                                                                                                           'kill-all)))
                                                                                                                  (x8556
                                                                                                                   dead))))
                                                                                                        (λ ()
                                                                                                          x8555))))
                                                                                              g8554)
                                                                                            (letrec ((g8557
                                                                                                      "unknown message"))
                                                                                              g8557)))))))))))))))
                                                            g8527))))
                                                g8526)))
                                           (new-cons-zombies
                                            (lambda (z r)
                                              (letrec ((g8558
                                                        (lambda (msg)
                                                          (letrec ((g8559
                                                                    (letrec ((x-cnd8560
                                                                              (equal?
                                                                               msg
                                                                               'move-toward)))
                                                                      (if x-cnd8560
                                                                        (letrec ((g8561
                                                                                  (letrec ((x8567
                                                                                            (p))
                                                                                           (x8562
                                                                                            (letrec ((x8565
                                                                                                      (letrec ((x8566
                                                                                                                (z
                                                                                                                 'move-toward)))
                                                                                                        (x8566
                                                                                                         p)))
                                                                                                     (x8563
                                                                                                      (letrec ((x8564
                                                                                                                (r
                                                                                                                 'move-toward)))
                                                                                                        (x8564
                                                                                                         p))))
                                                                                              (new-cons-zombies
                                                                                               x8565
                                                                                               x8563))))
                                                                                    (λ x8567
                                                                                      x8562))))
                                                                          g8561)
                                                                        (letrec ((x-cnd8568
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8568
                                                                            (letrec ((g8569
                                                                                      (letrec ((x8574
                                                                                                (c
                                                                                                 s))
                                                                                               (x8570
                                                                                                (letrec ((x8573
                                                                                                          (z
                                                                                                           'draw-on/color))
                                                                                                         (x8571
                                                                                                          (letrec ((x8572
                                                                                                                    (r
                                                                                                                     'draw-on/color)))
                                                                                                            (x8572
                                                                                                             c
                                                                                                             s))))
                                                                                                  (x8573
                                                                                                   c
                                                                                                   x8571))))
                                                                                        (λ x8574
                                                                                          x8570))))
                                                                              g8569)
                                                                            (letrec ((x-cnd8575
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8575
                                                                                (letrec ((g8576
                                                                                          (letrec ((x8582
                                                                                                    (p))
                                                                                                   (x8577
                                                                                                    (letrec ((x8580
                                                                                                              (letrec ((x8581
                                                                                                                        (z
                                                                                                                         'touching?)))
                                                                                                                (x8581
                                                                                                                 p)))
                                                                                                             (x8578
                                                                                                              (letrec ((x8579
                                                                                                                        (r
                                                                                                                         'touching?)))
                                                                                                                (x8579
                                                                                                                 p))))
                                                                                                      (or x8580
                                                                                                          x8578))))
                                                                                            (λ x8582
                                                                                              x8577))))
                                                                                  g8576)
                                                                                (letrec ((x-cnd8583
                                                                                          (equal?
                                                                                           msg
                                                                                           'kill-all)))
                                                                                  (if x-cnd8583
                                                                                    (letrec ((g8584
                                                                                              (letrec ((x8608
                                                                                                        (dead))
                                                                                                       (x8585
                                                                                                        (letrec ((x8595
                                                                                                                  (letrec ((x8599
                                                                                                                            (letrec ((x8604
                                                                                                                                      (letrec ((x8607
                                                                                                                                                (r
                                                                                                                                                 'touching?))
                                                                                                                                               (x8605
                                                                                                                                                (letrec ((x8606
                                                                                                                                                          (z
                                                                                                                                                           'posn)))
                                                                                                                                                  (x8606))))
                                                                                                                                        (x8607
                                                                                                                                         x8605)))
                                                                                                                                     (x8600
                                                                                                                                      (letrec ((x8603
                                                                                                                                                (dead
                                                                                                                                                 'touching?))
                                                                                                                                               (x8601
                                                                                                                                                (letrec ((x8602
                                                                                                                                                          (z
                                                                                                                                                           'posn)))
                                                                                                                                                  (x8602))))
                                                                                                                                        (x8603
                                                                                                                                         x8601))))
                                                                                                                              (or x8604
                                                                                                                                  x8600)))
                                                                                                                           (x8596
                                                                                                                            (letrec ((x8598
                                                                                                                                      (r
                                                                                                                                       'kill-all))
                                                                                                                                     (x8597
                                                                                                                                      (new-cons-zombies
                                                                                                                                       z
                                                                                                                                       dead)))
                                                                                                                              (x8598
                                                                                                                               x8597))))
                                                                                                                    (x8599
                                                                                                                     x8596)))
                                                                                                                 (x8586
                                                                                                                  (letrec ((x8587
                                                                                                                            (letrec ((res
                                                                                                                                      (letrec ((x8588
                                                                                                                                                (r
                                                                                                                                                 'kill-all)))
                                                                                                                                        (x8588
                                                                                                                                         dead))))
                                                                                                                              (letrec ((g8589
                                                                                                                                        (letrec ((x8592
                                                                                                                                                  (letrec ((x8593
                                                                                                                                                            (letrec ((x8594
                                                                                                                                                                      (res
                                                                                                                                                                       'undead)))
                                                                                                                                                              (x8594))))
                                                                                                                                                    (new-cons-zombies
                                                                                                                                                     z
                                                                                                                                                     x8593)))
                                                                                                                                                 (x8590
                                                                                                                                                  (letrec ((x8591
                                                                                                                                                            (res
                                                                                                                                                             'dead)))
                                                                                                                                                    (x8591))))
                                                                                                                                          (new-horde
                                                                                                                                           x8592
                                                                                                                                           x8590))))
                                                                                                                                g8589))))
                                                                                                                    (else
                                                                                                                     x8587))))
                                                                                                          (cond
                                                                                                           x8595
                                                                                                           x8586))))
                                                                                                (λ x8608
                                                                                                  x8585))))
                                                                                      g8584)
                                                                                    (letrec ((g8609
                                                                                              "unknown message"))
                                                                                      g8609)))))))))))
                                                            g8559))))
                                                g8558)))
                                           (new-mt-zombies
                                            (lambda ()
                                              (letrec ((g8610
                                                        (lambda (msg)
                                                          (letrec ((g8611
                                                                    (letrec ((x-cnd8612
                                                                              (equal?
                                                                               msg
                                                                               'move-toward)))
                                                                      (if x-cnd8612
                                                                        (letrec ((g8613
                                                                                  (letrec ((x8615
                                                                                            (p))
                                                                                           (x8614
                                                                                            (new-mt-zombies)))
                                                                                    (λ x8615
                                                                                      x8614))))
                                                                          g8613)
                                                                        (letrec ((x-cnd8616
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8616
                                                                            (letrec ((g8617
                                                                                      (letrec ((x8618
                                                                                                (c
                                                                                                 s)))
                                                                                        (λ x8618
                                                                                          s))))
                                                                              g8617)
                                                                            (letrec ((x-cnd8619
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8619
                                                                                (letrec ((g8620
                                                                                          (letrec ((x8621
                                                                                                    (p)))
                                                                                            (λ x8621
                                                                                              #f))))
                                                                                  g8620)
                                                                                (letrec ((x-cnd8622
                                                                                          (equal?
                                                                                           msg
                                                                                           'kill-all)))
                                                                                  (if x-cnd8622
                                                                                    (letrec ((g8623
                                                                                              (letrec ((x8626
                                                                                                        (dead))
                                                                                                       (x8624
                                                                                                        (letrec ((x8625
                                                                                                                  (new-mt-zombies)))
                                                                                                          (new-horde
                                                                                                           x8625
                                                                                                           dead))))
                                                                                                (λ x8626
                                                                                                  x8624))))
                                                                                      g8623)
                                                                                    (letrec ((g8627
                                                                                              "unknown message"))
                                                                                      g8627)))))))))))
                                                            g8611))))
                                                g8610)))
                                           (new-zombie
                                            (lambda (p)
                                              (letrec ((g8628
                                                        (lambda (msg)
                                                          (letrec ((g8629
                                                                    (letrec ((x-cnd8630
                                                                              (equal?
                                                                               msg
                                                                               'posn)))
                                                                      (if x-cnd8630
                                                                        (letrec ((g8631
                                                                                  (λ ()
                                                                                    p)))
                                                                          g8631)
                                                                        (letrec ((x-cnd8632
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8632
                                                                            (letrec ((g8633
                                                                                      (letrec ((x8637
                                                                                                (c
                                                                                                 s))
                                                                                               (x8634
                                                                                                (letrec ((x8636
                                                                                                          (p
                                                                                                           'draw-on/image))
                                                                                                         (x8635
                                                                                                          (circle
                                                                                                           ZOMBIE-RADIUS
                                                                                                           "solid"
                                                                                                           c)))
                                                                                                  (x8636
                                                                                                   x8635
                                                                                                   s))))
                                                                                        (λ x8637
                                                                                          x8634))))
                                                                              g8633)
                                                                            (letrec ((x-cnd8638
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8638
                                                                                (letrec ((g8639
                                                                                          (letrec ((x8643
                                                                                                    (q))
                                                                                                   (x8640
                                                                                                    (letrec ((x8641
                                                                                                              (letrec ((x8642
                                                                                                                        (p
                                                                                                                         'dist)))
                                                                                                                (x8642
                                                                                                                 q))))
                                                                                                      (<=
                                                                                                       x8641
                                                                                                       ZOMBIE-RADIUS))))
                                                                                            (λ x8643
                                                                                              x8640))))
                                                                                  g8639)
                                                                                (letrec ((x-cnd8644
                                                                                          (equal?
                                                                                           msg
                                                                                           'move-toward)))
                                                                                  (if x-cnd8644
                                                                                    (letrec ((g8645
                                                                                              (letrec ((x8649
                                                                                                        (q))
                                                                                                       (x8646
                                                                                                        (letrec ((x8647
                                                                                                                  (letrec ((x8648
                                                                                                                            (p
                                                                                                                             'move-toward/speed)))
                                                                                                                    (x8648
                                                                                                                     q
                                                                                                                     ZOMBIE-SPEED))))
                                                                                                          (new-zombie
                                                                                                           x8647))))
                                                                                                (λ x8649
                                                                                                  x8646))))
                                                                                      g8645)
                                                                                    (letrec ((g8650
                                                                                              "unknown message"))
                                                                                      g8650)))))))))))
                                                            g8629))))
                                                g8628)))
                                           (new-posn
                                            (lambda (x y)
                                              (letrec ((g8651
                                                        (letrec ((this
                                                                  (lambda (msg)
                                                                    (letrec ((g8652
                                                                              (letrec ((x-cnd8653
                                                                                        (equal?
                                                                                         msg
                                                                                         'x)))
                                                                                (if x-cnd8653
                                                                                  (letrec ((g8654
                                                                                            (λ ()
                                                                                              x)))
                                                                                    g8654)
                                                                                  (letrec ((x-cnd8655
                                                                                            (equal?
                                                                                             msg
                                                                                             'y)))
                                                                                    (if x-cnd8655
                                                                                      (letrec ((g8656
                                                                                                (λ ()
                                                                                                  y)))
                                                                                        g8656)
                                                                                      (letrec ((x-cnd8657
                                                                                                (equal?
                                                                                                 msg
                                                                                                 'posn)))
                                                                                        (if x-cnd8657
                                                                                          (letrec ((g8658
                                                                                                    (λ ()
                                                                                                      this)))
                                                                                            g8658)
                                                                                          (letrec ((x-cnd8659
                                                                                                    (equal?
                                                                                                     msg
                                                                                                     'move-toward/speed)))
                                                                                            (if x-cnd8659
                                                                                              (letrec ((g8660
                                                                                                        (letrec ((x8690
                                                                                                                  (p
                                                                                                                   speed))
                                                                                                                 (x8661
                                                                                                                  (letrec ((x8676
                                                                                                                            (letrec ((x8686
                                                                                                                                      (letrec ((x8687
                                                                                                                                                (letrec ((x8688
                                                                                                                                                          (letrec ((x8689
                                                                                                                                                                    (p
                                                                                                                                                                     'x)))
                                                                                                                                                            (x8689))))
                                                                                                                                                  (-
                                                                                                                                                   x8688
                                                                                                                                                   x))))
                                                                                                                                        (δx
                                                                                                                                         x8687)))
                                                                                                                                     (x8682
                                                                                                                                      (letrec ((x8683
                                                                                                                                                (letrec ((x8684
                                                                                                                                                          (letrec ((x8685
                                                                                                                                                                    (p
                                                                                                                                                                     'y)))
                                                                                                                                                            (x8685))))
                                                                                                                                                  (-
                                                                                                                                                   x8684
                                                                                                                                                   y))))
                                                                                                                                        (δy
                                                                                                                                         x8683)))
                                                                                                                                     (x8677
                                                                                                                                      (letrec ((x8678
                                                                                                                                                (letrec ((x8679
                                                                                                                                                          (letrec ((x8681
                                                                                                                                                                    (abs
                                                                                                                                                                     δx))
                                                                                                                                                                   (x8680
                                                                                                                                                                    (abs
                                                                                                                                                                     δy)))
                                                                                                                                                            (max
                                                                                                                                                             x8681
                                                                                                                                                             x8680))))
                                                                                                                                                  (min
                                                                                                                                                   speed
                                                                                                                                                   x8679))))
                                                                                                                                        (move-distance
                                                                                                                                         x8678))))
                                                                                                                              (x8686
                                                                                                                               x8682
                                                                                                                               x8677)))
                                                                                                                           (x8662
                                                                                                                            (letrec ((x8668
                                                                                                                                      (letrec ((x8673
                                                                                                                                                (letrec ((x8675
                                                                                                                                                          (abs
                                                                                                                                                           δx))
                                                                                                                                                         (x8674
                                                                                                                                                          (abs
                                                                                                                                                           δy)))
                                                                                                                                                  (<
                                                                                                                                                   x8675
                                                                                                                                                   x8674)))
                                                                                                                                               (x8669
                                                                                                                                                (letrec ((x8672
                                                                                                                                                          (this
                                                                                                                                                           'move))
                                                                                                                                                         (x8670
                                                                                                                                                          (letrec ((x-cnd8671
                                                                                                                                                                    (positive?
                                                                                                                                                                     δy)))
                                                                                                                                                            (if x-cnd8671
                                                                                                                                                              move-distance
                                                                                                                                                              (-
                                                                                                                                                               0
                                                                                                                                                               move-distance)))))
                                                                                                                                                  (x8672
                                                                                                                                                   0
                                                                                                                                                   x8670))))
                                                                                                                                        (x8673
                                                                                                                                         x8669)))
                                                                                                                                     (x8663
                                                                                                                                      (letrec ((x8664
                                                                                                                                                (letrec ((x8667
                                                                                                                                                          (this
                                                                                                                                                           'move))
                                                                                                                                                         (x8665
                                                                                                                                                          (letrec ((x-cnd8666
                                                                                                                                                                    (positive?
                                                                                                                                                                     δx)))
                                                                                                                                                            (if x-cnd8666
                                                                                                                                                              move-distance
                                                                                                                                                              (-
                                                                                                                                                               0
                                                                                                                                                               move-distance)))))
                                                                                                                                                  (x8667
                                                                                                                                                   x8665
                                                                                                                                                   0))))
                                                                                                                                        (else
                                                                                                                                         x8664))))
                                                                                                                              (cond
                                                                                                                               x8668
                                                                                                                               x8663))))
                                                                                                                    (let* x8676 x8662))))
                                                                                                          (λ x8690
                                                                                                            x8661))))
                                                                                                g8660)
                                                                                              (letrec ((x-cnd8691
                                                                                                        (equal?
                                                                                                         msg
                                                                                                         'move)))
                                                                                                (if x-cnd8691
                                                                                                  (letrec ((g8692
                                                                                                            (letrec ((x8696
                                                                                                                      (δx
                                                                                                                       δy))
                                                                                                                     (x8693
                                                                                                                      (letrec ((x8695
                                                                                                                                (+
                                                                                                                                 x
                                                                                                                                 δx))
                                                                                                                               (x8694
                                                                                                                                (+
                                                                                                                                 y
                                                                                                                                 δy)))
                                                                                                                        (new-posn
                                                                                                                         x8695
                                                                                                                         x8694))))
                                                                                                              (λ x8696
                                                                                                                x8693))))
                                                                                                    g8692)
                                                                                                  (letrec ((x-cnd8697
                                                                                                            (equal?
                                                                                                             msg
                                                                                                             'draw-on/image)))
                                                                                                    (if x-cnd8697
                                                                                                      (letrec ((g8698
                                                                                                                (letrec ((x8700
                                                                                                                          (img
                                                                                                                           scn))
                                                                                                                         (x8699
                                                                                                                          (place-image
                                                                                                                           img
                                                                                                                           x
                                                                                                                           y
                                                                                                                           scn)))
                                                                                                                  (λ x8700
                                                                                                                    x8699))))
                                                                                                        g8698)
                                                                                                      (letrec ((x-cnd8701
                                                                                                                (equal?
                                                                                                                 msg
                                                                                                                 'dist)))
                                                                                                        (if x-cnd8701
                                                                                                          (letrec ((g8702
                                                                                                                    (letrec ((x8713
                                                                                                                              (p))
                                                                                                                             (x8703
                                                                                                                              (letrec ((x8704
                                                                                                                                        (letrec ((x8709
                                                                                                                                                  (letrec ((x8710
                                                                                                                                                            (letrec ((x8711
                                                                                                                                                                      (letrec ((x8712
                                                                                                                                                                                (p
                                                                                                                                                                                 'y)))
                                                                                                                                                                        (x8712))))
                                                                                                                                                              (-
                                                                                                                                                               x8711
                                                                                                                                                               y))))
                                                                                                                                                    (sqr
                                                                                                                                                     x8710)))
                                                                                                                                                 (x8705
                                                                                                                                                  (letrec ((x8706
                                                                                                                                                            (letrec ((x8707
                                                                                                                                                                      (letrec ((x8708
                                                                                                                                                                                (p
                                                                                                                                                                                 'x)))
                                                                                                                                                                        (x8708))))
                                                                                                                                                              (-
                                                                                                                                                               x8707
                                                                                                                                                               x))))
                                                                                                                                                    (sqr
                                                                                                                                                     x8706))))
                                                                                                                                          (+
                                                                                                                                           x8709
                                                                                                                                           x8705))))
                                                                                                                                (sqrt
                                                                                                                                 x8704))))
                                                                                                                      (λ x8713
                                                                                                                        x8703))))
                                                                                                            g8702)
                                                                                                          (letrec ((g8714
                                                                                                                    "unknown message"))
                                                                                                            g8714)))))))))))))))))
                                                                      g8652))))
                                                          (letrec ((g8715
                                                                    this))
                                                            g8715))))
                                                g8651)))
                                           (w0
                                            (letrec ((x8729
                                                      (letrec ((x8730
                                                                (new-posn
                                                                 0
                                                                 0)))
                                                        (new-player x8730)))
                                                     (x8728 (new-posn 0 0))
                                                     (x8716
                                                      (letrec ((x8721
                                                                (letrec ((x8726
                                                                          (letrec ((x8727
                                                                                    (new-posn
                                                                                     100
                                                                                     300)))
                                                                            (new-zombie
                                                                             x8727)))
                                                                         (x8722
                                                                          (letrec ((x8724
                                                                                    (letrec ((x8725
                                                                                              (new-posn
                                                                                               100
                                                                                               200)))
                                                                                      (new-zombie
                                                                                       x8725)))
                                                                                   (x8723
                                                                                    (new-mt-zombies)))
                                                                            (new-cons-zombies
                                                                             x8724
                                                                             x8723))))
                                                                  (new-cons-zombies
                                                                   x8726
                                                                   x8722)))
                                                               (x8717
                                                                (letrec ((x8719
                                                                          (letrec ((x8720
                                                                                    (new-posn
                                                                                     200
                                                                                     200)))
                                                                            (new-zombie
                                                                             x8720)))
                                                                         (x8718
                                                                          (new-mt-zombies)))
                                                                  (new-cons-zombies
                                                                   x8719
                                                                   x8718))))
                                                        (new-horde
                                                         x8721
                                                         x8717))))
                                              (new-world x8729 x8728 x8716))))
                                    (letrec ((g8731
                                              (parallel
                                               (parallel
                                                (letrec ((x8733
                                                          (letrec ((xj7567
                                                                    (loc
                                                                     'module))
                                                                   (xk7568
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8734
                                                                      ((lambda (j7570
                                                                                k7571
                                                                                f7572)
                                                                         (letrec ((g8735
                                                                                   (lambda (g7569)
                                                                                     (letrec ((g8736
                                                                                               (letrec ((x8737
                                                                                                         (letrec ((x8738
                                                                                                                   (any/c
                                                                                                                    j7570
                                                                                                                    k7571
                                                                                                                    g7569)))
                                                                                                           (f7572
                                                                                                            x8738))))
                                                                                                 (boolean?/c
                                                                                                  j7570
                                                                                                  k7571
                                                                                                  x8737))))
                                                                                       g8736))))
                                                                           g8735))
                                                                       xj7567
                                                                       xk7568
                                                                       image?)))
                                                              g8734)))
                                                         (x8732 (input)))
                                                  (x8733 x8732))
                                                (letrec ((x8741
                                                          (letrec ((xj7573
                                                                    (loc
                                                                     'module))
                                                                   (xk7574
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8742
                                                                      ((lambda (j7577
                                                                                k7578
                                                                                f7579)
                                                                         (letrec ((g8743
                                                                                   (lambda (g7575
                                                                                            g7576)
                                                                                     (letrec ((g8744
                                                                                               (letrec ((x8745
                                                                                                         (letrec ((x8747
                                                                                                                   (real?/c
                                                                                                                    j7577
                                                                                                                    k7578
                                                                                                                    g7575))
                                                                                                                  (x8746
                                                                                                                   (real?/c
                                                                                                                    j7577
                                                                                                                    k7578
                                                                                                                    g7576)))
                                                                                                           (f7579
                                                                                                            x8747
                                                                                                            x8746))))
                                                                                                 (image?
                                                                                                  j7577
                                                                                                  k7578
                                                                                                  x8745))))
                                                                                       g8744))))
                                                                           g8743))
                                                                       xj7573
                                                                       xk7574
                                                                       empty-scene)))
                                                              g8742)))
                                                         (x8740 (input))
                                                         (x8739 (input)))
                                                  (x8741 x8740 x8739))
                                                (letrec ((x8752
                                                          (letrec ((xj7580
                                                                    (loc
                                                                     'module))
                                                                   (xk7581
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8753
                                                                      ((lambda (j7586
                                                                                k7587
                                                                                f7588)
                                                                         (letrec ((g8754
                                                                                   (lambda (g7582
                                                                                            g7583
                                                                                            g7584
                                                                                            g7585)
                                                                                     (letrec ((g8755
                                                                                               (letrec ((x8756
                                                                                                         (letrec ((x8760
                                                                                                                   (image?/c
                                                                                                                    j7586
                                                                                                                    k7587
                                                                                                                    g7582))
                                                                                                                  (x8759
                                                                                                                   (real?/c
                                                                                                                    j7586
                                                                                                                    k7587
                                                                                                                    g7583))
                                                                                                                  (x8758
                                                                                                                   (real?/c
                                                                                                                    j7586
                                                                                                                    k7587
                                                                                                                    g7584))
                                                                                                                  (x8757
                                                                                                                   (image?
                                                                                                                    j7586
                                                                                                                    k7587
                                                                                                                    g7585)))
                                                                                                           (f7588
                                                                                                            x8760
                                                                                                            x8759
                                                                                                            x8758
                                                                                                            x8757))))
                                                                                                 (image?
                                                                                                  j7586
                                                                                                  k7587
                                                                                                  x8756))))
                                                                                       g8755))))
                                                                           g8754))
                                                                       xj7580
                                                                       xk7581
                                                                       place-image)))
                                                              g8753)))
                                                         (x8751 (input))
                                                         (x8750 (input))
                                                         (x8749 (input))
                                                         (x8748 (input)))
                                                  (x8752
                                                   x8751
                                                   x8750
                                                   x8749
                                                   x8748))
                                                (letrec ((x8764
                                                          (letrec ((xj7589
                                                                    (loc
                                                                     'module))
                                                                   (xk7590
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8765
                                                                      ((lambda (j7594
                                                                                k7595
                                                                                f7596)
                                                                         (letrec ((g8766
                                                                                   (lambda (g7591
                                                                                            g7592
                                                                                            g7593)
                                                                                     (letrec ((g8767
                                                                                               (letrec ((x8768
                                                                                                         (letrec ((x8771
                                                                                                                   (real?/c
                                                                                                                    j7594
                                                                                                                    k7595
                                                                                                                    g7591))
                                                                                                                  (x8770
                                                                                                                   (string?/c
                                                                                                                    j7594
                                                                                                                    k7595
                                                                                                                    g7592))
                                                                                                                  (x8769
                                                                                                                   (string?/c
                                                                                                                    j7594
                                                                                                                    k7595
                                                                                                                    g7593)))
                                                                                                           (f7596
                                                                                                            x8771
                                                                                                            x8770
                                                                                                            x8769))))
                                                                                                 (image?
                                                                                                  j7594
                                                                                                  k7595
                                                                                                  x8768))))
                                                                                       g8767))))
                                                                           g8766))
                                                                       xj7589
                                                                       xk7590
                                                                       circle)))
                                                              g8765)))
                                                         (x8763 (input))
                                                         (x8762 (input))
                                                         (x8761 (input)))
                                                  (x8764 x8763 x8762 x8761))
                                                (letrec ((x8775
                                                          (letrec ((xj7597
                                                                    (loc
                                                                     'module))
                                                                   (xk7598
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8776
                                                                      ((lambda (j7602
                                                                                k7603
                                                                                f7604)
                                                                         (letrec ((g8777
                                                                                   (lambda (g7599
                                                                                            g7600
                                                                                            g7601)
                                                                                     (letrec ((g8778
                                                                                               (letrec ((x8779
                                                                                                         (letrec ((x8782
                                                                                                                   (player/c
                                                                                                                    j7602
                                                                                                                    k7603
                                                                                                                    g7599))
                                                                                                                  (x8781
                                                                                                                   (posn/c
                                                                                                                    j7602
                                                                                                                    k7603
                                                                                                                    g7600))
                                                                                                                  (x8780
                                                                                                                   (horde/c
                                                                                                                    j7602
                                                                                                                    k7603
                                                                                                                    g7601)))
                                                                                                           (f7604
                                                                                                            x8782
                                                                                                            x8781
                                                                                                            x8780))))
                                                                                                 (world/c
                                                                                                  j7602
                                                                                                  k7603
                                                                                                  x8779))))
                                                                                       g8778))))
                                                                           g8777))
                                                                       xj7597
                                                                       xk7598
                                                                       new-world)))
                                                              g8776)))
                                                         (x8774 (input))
                                                         (x8773 (input))
                                                         (x8772 (input)))
                                                  (x8775 x8774 x8773 x8772))
                                                (letrec ((x8784
                                                          (letrec ((xj7605
                                                                    (loc
                                                                     'module))
                                                                   (xk7606
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8785
                                                                      ((lambda (j7608
                                                                                k7609
                                                                                f7610)
                                                                         (letrec ((g8786
                                                                                   (lambda (g7607)
                                                                                     (letrec ((g8787
                                                                                               (letrec ((x8788
                                                                                                         (letrec ((x8789
                                                                                                                   (posn/c
                                                                                                                    j7608
                                                                                                                    k7609
                                                                                                                    g7607)))
                                                                                                           (f7610
                                                                                                            x8789))))
                                                                                                 (player/c
                                                                                                  j7608
                                                                                                  k7609
                                                                                                  x8788))))
                                                                                       g8787))))
                                                                           g8786))
                                                                       xj7605
                                                                       xk7606
                                                                       new-player)))
                                                              g8785)))
                                                         (x8783 (input)))
                                                  (x8784 x8783))
                                                (letrec ((x8792
                                                          (letrec ((xj7611
                                                                    (loc
                                                                     'module))
                                                                   (xk7612
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8793
                                                                      ((lambda (j7615
                                                                                k7616
                                                                                f7617)
                                                                         (letrec ((g8794
                                                                                   (lambda (g7613
                                                                                            g7614)
                                                                                     (letrec ((g8795
                                                                                               (letrec ((x8796
                                                                                                         (letrec ((x8798
                                                                                                                   (zombies/c
                                                                                                                    j7615
                                                                                                                    k7616
                                                                                                                    g7613))
                                                                                                                  (x8797
                                                                                                                   (zombies/c
                                                                                                                    j7615
                                                                                                                    k7616
                                                                                                                    g7614)))
                                                                                                           (f7617
                                                                                                            x8798
                                                                                                            x8797))))
                                                                                                 (horde/c
                                                                                                  j7615
                                                                                                  k7616
                                                                                                  x8796))))
                                                                                       g8795))))
                                                                           g8794))
                                                                       xj7611
                                                                       xk7612
                                                                       new-horde)))
                                                              g8793)))
                                                         (x8791 (input))
                                                         (x8790 (input)))
                                                  (x8792 x8791 x8790))
                                                (letrec ((x8801
                                                          (letrec ((xj7618
                                                                    (loc
                                                                     'module))
                                                                   (xk7619
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8802
                                                                      ((lambda (j7622
                                                                                k7623
                                                                                f7624)
                                                                         (letrec ((g8803
                                                                                   (lambda (g7620
                                                                                            g7621)
                                                                                     (letrec ((g8804
                                                                                               (letrec ((x8805
                                                                                                         (letrec ((x8807
                                                                                                                   (zombie/c
                                                                                                                    j7622
                                                                                                                    k7623
                                                                                                                    g7620))
                                                                                                                  (x8806
                                                                                                                   (zombies/c
                                                                                                                    j7622
                                                                                                                    k7623
                                                                                                                    g7621)))
                                                                                                           (f7624
                                                                                                            x8807
                                                                                                            x8806))))
                                                                                                 (zombies/c
                                                                                                  j7622
                                                                                                  k7623
                                                                                                  x8805))))
                                                                                       g8804))))
                                                                           g8803))
                                                                       xj7618
                                                                       xk7619
                                                                       new-cons-zombies)))
                                                              g8802)))
                                                         (x8800 (input))
                                                         (x8799 (input)))
                                                  (x8801 x8800 x8799))
                                                (letrec ((xj7625 (loc 'module))
                                                         (xk7626
                                                          (loc 'importer)))
                                                  (letrec ((g8808
                                                            ((lambda (j7627
                                                                      k7628
                                                                      f7629)
                                                               (letrec ((g8809
                                                                         (lambda ()
                                                                           (letrec ((g8810
                                                                                     (letrec ((x8811
                                                                                               (f7629)))
                                                                                       (zombies/c
                                                                                        j7627
                                                                                        k7628
                                                                                        x8811))))
                                                                             g8810))))
                                                                 g8809))
                                                             xj7625
                                                             xk7626
                                                             new-mt-zombies)))
                                                    g8808))
                                                (letrec ((x8813
                                                          (letrec ((xj7630
                                                                    (loc
                                                                     'module))
                                                                   (xk7631
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8814
                                                                      ((lambda (j7633
                                                                                k7634
                                                                                f7635)
                                                                         (letrec ((g8815
                                                                                   (lambda (g7632)
                                                                                     (letrec ((g8816
                                                                                               (letrec ((x8817
                                                                                                         (letrec ((x8818
                                                                                                                   (posn/c
                                                                                                                    j7633
                                                                                                                    k7634
                                                                                                                    g7632)))
                                                                                                           (f7635
                                                                                                            x8818))))
                                                                                                 (zombie/c
                                                                                                  j7633
                                                                                                  k7634
                                                                                                  x8817))))
                                                                                       g8816))))
                                                                           g8815))
                                                                       xj7630
                                                                       xk7631
                                                                       new-zombie)))
                                                              g8814)))
                                                         (x8812 (input)))
                                                  (x8813 x8812))
                                                (letrec ((x8821
                                                          (letrec ((xj7636
                                                                    (loc
                                                                     'module))
                                                                   (xk7637
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8822
                                                                      ((lambda (j7640
                                                                                k7641
                                                                                f7642)
                                                                         (letrec ((g8823
                                                                                   (lambda (g7638
                                                                                            g7639)
                                                                                     (letrec ((g8824
                                                                                               (letrec ((x8825
                                                                                                         (letrec ((x8827
                                                                                                                   (real?/c
                                                                                                                    j7640
                                                                                                                    k7641
                                                                                                                    g7638))
                                                                                                                  (x8826
                                                                                                                   (real?/c
                                                                                                                    j7640
                                                                                                                    k7641
                                                                                                                    g7639)))
                                                                                                           (f7642
                                                                                                            x8827
                                                                                                            x8826))))
                                                                                                 (posn/c
                                                                                                  j7640
                                                                                                  k7641
                                                                                                  x8825))))
                                                                                       g8824))))
                                                                           g8823))
                                                                       xj7636
                                                                       xk7637
                                                                       new-posn)))
                                                              g8822)))
                                                         (x8820 (input))
                                                         (x8819 (input)))
                                                  (x8821 x8820 x8819))
                                                (letrec ((xj7643 (loc 'module))
                                                         (xk7644
                                                          (loc 'importer)))
                                                  (letrec ((g8828
                                                            (world/c
                                                             xj7643
                                                             xk7644
                                                             w0)))
                                                    g8828))))))
                                      g8731))))
                          g7659))))
              g7657)))
    g7656))
