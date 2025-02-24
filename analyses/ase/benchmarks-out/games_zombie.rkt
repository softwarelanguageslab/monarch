(letrec ((any? (lambda (v) (letrec ((g7649 #t)) g7649)))
         (meta (lambda (v) (letrec ((g7650 v)) g7650)))
         (member
          (lambda (v lst)
            (letrec ((g7651
                      (letrec ((g7652
                                (letrec ((x-e7653 lst))
                                  (match
                                   x-e7653
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7654 (eq? v v1)))
                                       (if x-cnd7654 #t (member v vs)))))))))
                        g7652)))
              g7651)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7655 (lambda (v) (letrec ((g7656 v)) g7656)))) g7655)))
         (nonzero?
          (lambda (v)
            (letrec ((g7657 (letrec ((x7658 (= v 0))) (not x7658)))) g7657))))
  (letrec ((g7659
            (letrec ((g7660
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7661
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7661)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7662
                                            (letrec ((x7664 (number? x)))
                                              (assert x7664)))
                                           (g7663
                                            (letrec ((val7243 (> x y)))
                                              (letrec ((g7665
                                                        (if val7243
                                                          val7243
                                                          (letrec ((val7244
                                                                    (= x y)))
                                                            (letrec ((g7666
                                                                      (if val7244
                                                                        val7244
                                                                        #f)))
                                                              g7666)))))
                                                g7665))))
                                    g7663)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7667
                                            (letrec ((x7669 (number? x)))
                                              (assert x7669)))
                                           (g7668
                                            (letrec ((val7245 (< x y)))
                                              (letrec ((g7670
                                                        (if val7245
                                                          val7245
                                                          (letrec ((val7246
                                                                    (= x y)))
                                                            (letrec ((g7671
                                                                      (if val7246
                                                                        val7246
                                                                        #f)))
                                                              g7671)))))
                                                g7670))))
                                    g7668)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7672
                                            (letrec ((x7674 (number? x)))
                                              (assert x7674)))
                                           (g7673
                                            (letrec ((x7675 (<= x y)))
                                              (not x7675))))
                                    g7673)))
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
                        (letrec ((g7676 '())
                                 (g7677
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7678
                                                        (lambda (k j lst)
                                                          (letrec ((g7679
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7680
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7680))
                                                                     lst)))
                                                            g7679))))
                                                g7678)))
                                           (real?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7681
                                                        (letrec ((x-cnd7682
                                                                  (real?
                                                                   g7263)))
                                                          (if x-cnd7682
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'real?)))))
                                                g7681)))
                                           (boolean?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7683
                                                        (letrec ((x-cnd7684
                                                                  (boolean?
                                                                   g7266)))
                                                          (if x-cnd7684
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'boolean?)))))
                                                g7683)))
                                           (number?/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7685
                                                        (letrec ((x-cnd7686
                                                                  (number?
                                                                   g7269)))
                                                          (if x-cnd7686
                                                            g7269
                                                            (blame
                                                             g7267
                                                             'number?)))))
                                                g7685)))
                                           (any/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7687
                                                        (letrec ((x-cnd7688
                                                                  ((lambda (v)
                                                                     (letrec ((g7689
                                                                               #t))
                                                                       g7689))
                                                                   g7272)))
                                                          (if x-cnd7688
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7687)))
                                           (any?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7690
                                                        (letrec ((x-cnd7691
                                                                  ((lambda (v)
                                                                     (letrec ((g7692
                                                                               #t))
                                                                       g7692))
                                                                   g7275)))
                                                          (if x-cnd7691
                                                            g7275
                                                            (blame
                                                             g7273
                                                             '(lambda (v)
                                                                #t))))))
                                                g7690)))
                                           (cons?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7693
                                                        (letrec ((x-cnd7694
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7694
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7693)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7695
                                                        (letrec ((x-cnd7696
                                                                  (pair?
                                                                   g7281)))
                                                          (if x-cnd7696
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'pair?)))))
                                                g7695)))
                                           (integer?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7697
                                                        (letrec ((x-cnd7698
                                                                  (integer?
                                                                   g7284)))
                                                          (if x-cnd7698
                                                            g7284
                                                            (blame
                                                             g7282
                                                             'integer?)))))
                                                g7697)))
                                           (symbol?/c
                                            (lambda (g7285 g7286 g7287)
                                              (letrec ((g7699
                                                        (letrec ((x-cnd7700
                                                                  (symbol?
                                                                   g7287)))
                                                          (if x-cnd7700
                                                            g7287
                                                            (blame
                                                             g7285
                                                             'symbol?)))))
                                                g7699)))
                                           (string?/c
                                            (lambda (g7288 g7289 g7290)
                                              (letrec ((g7701
                                                        (letrec ((x-cnd7702
                                                                  (string?
                                                                   g7290)))
                                                          (if x-cnd7702
                                                            g7290
                                                            (blame
                                                             g7288
                                                             'string?)))))
                                                g7701)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7703
                                                        (lambda (k j v)
                                                          (letrec ((g7704
                                                                    (letrec ((x-cnd7705
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7705
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7704))))
                                                g7703)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7706
                                                        (lambda (k j v)
                                                          (letrec ((g7707
                                                                    (letrec ((x-cnd7708
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7708
                                                                        '()
                                                                        (letrec ((x7712
                                                                                  (letrec ((x7713
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7713)))
                                                                                 (x7709
                                                                                  (letrec ((x7711
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7710
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7711
                                                                                     k
                                                                                     j
                                                                                     x7710))))
                                                                          (orig-cons
                                                                           x7712
                                                                           x7709))))))
                                                            g7707))))
                                                g7706)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7714 #t)) g7714)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7715
                                                        (letrec ((x7716
                                                                  (= v 0)))
                                                          (not x7716))))
                                                g7715)))
                                           (nonzero?/c
                                            (lambda (g7291 g7292 g7293)
                                              (letrec ((g7717
                                                        (letrec ((x-cnd7718
                                                                  ((lambda (v)
                                                                     (letrec ((g7719
                                                                               (letrec ((x7720
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7720))))
                                                                       g7719))
                                                                   g7293)))
                                                          (if x-cnd7718
                                                            g7293
                                                            (blame
                                                             g7291
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7717)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7721
                                                        (lambda (g7294
                                                                 g7295
                                                                 g7296)
                                                          (letrec ((g7722
                                                                    (letrec ((x-cnd7723
                                                                              ((lambda (v)
                                                                                 (letrec ((g7724
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7724))
                                                                               g7296)))
                                                                      (if x-cnd7723
                                                                        g7296
                                                                        (blame
                                                                         g7294
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7722))))
                                                g7721)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7725
                                                        (lambda (g7297
                                                                 g7298
                                                                 g7299)
                                                          (letrec ((g7726
                                                                    (letrec ((x-cnd7727
                                                                              ((lambda (v)
                                                                                 (letrec ((g7728
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7728))
                                                                               g7299)))
                                                                      (if x-cnd7727
                                                                        g7299
                                                                        (blame
                                                                         g7297
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7726))))
                                                g7725)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7729
                                                        (lambda (g7300
                                                                 g7301
                                                                 g7302)
                                                          (letrec ((g7730
                                                                    (letrec ((x-cnd7731
                                                                              ((lambda (v)
                                                                                 (letrec ((g7732
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7732))
                                                                               g7302)))
                                                                      (if x-cnd7731
                                                                        g7302
                                                                        (blame
                                                                         g7300
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7730))))
                                                g7729)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7733
                                                        (lambda (g7303
                                                                 g7304
                                                                 g7305)
                                                          (letrec ((g7734
                                                                    (letrec ((x-cnd7735
                                                                              ((lambda (v)
                                                                                 (letrec ((g7736
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7736))
                                                                               g7305)))
                                                                      (if x-cnd7735
                                                                        g7305
                                                                        (blame
                                                                         g7303
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7734))))
                                                g7733)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7737
                                                        (lambda (g7306
                                                                 g7307
                                                                 g7308)
                                                          (letrec ((g7738
                                                                    (letrec ((x-cnd7739
                                                                              ((lambda (v)
                                                                                 (letrec ((g7740
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7740))
                                                                               g7308)))
                                                                      (if x-cnd7739
                                                                        g7308
                                                                        (blame
                                                                         g7306
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7738))))
                                                g7737)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7741 v)) g7741)))
                                           (+
                                            (letrec ((xj7309 'server)
                                                     (xk7310 'client))
                                              (letrec ((g7742
                                                        ((lambda (j7313
                                                                  k7314
                                                                  f7315)
                                                           (letrec ((g7744
                                                                     (lambda (g7311
                                                                              g7312)
                                                                       (letrec ((g7745
                                                                                 (letrec ((x7746
                                                                                           (letrec ((x7748
                                                                                                     (number?/c
                                                                                                      j7313
                                                                                                      k7314
                                                                                                      g7311))
                                                                                                    (x7747
                                                                                                     (number?/c
                                                                                                      j7313
                                                                                                      k7314
                                                                                                      g7312)))
                                                                                             (f7315
                                                                                              x7748
                                                                                              x7747))))
                                                                                   (number?/c
                                                                                    j7313
                                                                                    k7314
                                                                                    x7746))))
                                                                         g7745))))
                                                             g7744))
                                                         xj7309
                                                         xk7310
                                                         (lambda (a b)
                                                           (letrec ((g7743
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7743)))))
                                                g7742)))
                                           (-
                                            (letrec ((xj7316 'server)
                                                     (xk7317 'client))
                                              (letrec ((g7749
                                                        ((lambda (j7320
                                                                  k7321
                                                                  f7322)
                                                           (letrec ((g7751
                                                                     (lambda (g7318
                                                                              g7319)
                                                                       (letrec ((g7752
                                                                                 (letrec ((x7753
                                                                                           (letrec ((x7755
                                                                                                     (number?/c
                                                                                                      j7320
                                                                                                      k7321
                                                                                                      g7318))
                                                                                                    (x7754
                                                                                                     (number?/c
                                                                                                      j7320
                                                                                                      k7321
                                                                                                      g7319)))
                                                                                             (f7322
                                                                                              x7755
                                                                                              x7754))))
                                                                                   (number?/c
                                                                                    j7320
                                                                                    k7321
                                                                                    x7753))))
                                                                         g7752))))
                                                             g7751))
                                                         xj7316
                                                         xk7317
                                                         (lambda (a b)
                                                           (letrec ((g7750
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7750)))))
                                                g7749)))
                                           (*
                                            (letrec ((xj7323 'server)
                                                     (xk7324 'client))
                                              (letrec ((g7756
                                                        ((lambda (j7327
                                                                  k7328
                                                                  f7329)
                                                           (letrec ((g7758
                                                                     (lambda (g7325
                                                                              g7326)
                                                                       (letrec ((g7759
                                                                                 (letrec ((x7760
                                                                                           (letrec ((x7762
                                                                                                     (number?/c
                                                                                                      j7327
                                                                                                      k7328
                                                                                                      g7325))
                                                                                                    (x7761
                                                                                                     (number?/c
                                                                                                      j7327
                                                                                                      k7328
                                                                                                      g7326)))
                                                                                             (f7329
                                                                                              x7762
                                                                                              x7761))))
                                                                                   (number?/c
                                                                                    j7327
                                                                                    k7328
                                                                                    x7760))))
                                                                         g7759))))
                                                             g7758))
                                                         xj7323
                                                         xk7324
                                                         (lambda (a b)
                                                           (letrec ((g7757
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7757)))))
                                                g7756)))
                                           (<
                                            (letrec ((xj7330 'server)
                                                     (xk7331 'client))
                                              (letrec ((g7763
                                                        ((lambda (j7334
                                                                  k7335
                                                                  f7336)
                                                           (letrec ((g7765
                                                                     (lambda (g7332
                                                                              g7333)
                                                                       (letrec ((g7766
                                                                                 (letrec ((x7767
                                                                                           (letrec ((x7769
                                                                                                     (number?/c
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7332))
                                                                                                    (x7768
                                                                                                     (number?/c
                                                                                                      j7334
                                                                                                      k7335
                                                                                                      g7333)))
                                                                                             (f7336
                                                                                              x7769
                                                                                              x7768))))
                                                                                   (boolean?/c
                                                                                    j7334
                                                                                    k7335
                                                                                    x7767))))
                                                                         g7766))))
                                                             g7765))
                                                         xj7330
                                                         xk7331
                                                         (lambda (a b)
                                                           (letrec ((g7764
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7764)))))
                                                g7763)))
                                           (>
                                            (letrec ((xj7337 'server)
                                                     (xk7338 'client))
                                              (letrec ((g7770
                                                        ((lambda (j7341
                                                                  k7342
                                                                  f7343)
                                                           (letrec ((g7772
                                                                     (lambda (g7339
                                                                              g7340)
                                                                       (letrec ((g7773
                                                                                 (letrec ((x7774
                                                                                           (letrec ((x7776
                                                                                                     (number?/c
                                                                                                      j7341
                                                                                                      k7342
                                                                                                      g7339))
                                                                                                    (x7775
                                                                                                     (number?/c
                                                                                                      j7341
                                                                                                      k7342
                                                                                                      g7340)))
                                                                                             (f7343
                                                                                              x7776
                                                                                              x7775))))
                                                                                   (boolean?/c
                                                                                    j7341
                                                                                    k7342
                                                                                    x7774))))
                                                                         g7773))))
                                                             g7772))
                                                         xj7337
                                                         xk7338
                                                         (lambda (a b)
                                                           (letrec ((g7771
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7771)))))
                                                g7770)))
                                           (<=
                                            (letrec ((xj7344 'server)
                                                     (xk7345 'client))
                                              (letrec ((g7777
                                                        ((lambda (j7348
                                                                  k7349
                                                                  f7350)
                                                           (letrec ((g7779
                                                                     (lambda (g7346
                                                                              g7347)
                                                                       (letrec ((g7780
                                                                                 (letrec ((x7781
                                                                                           (letrec ((x7783
                                                                                                     (number?/c
                                                                                                      j7348
                                                                                                      k7349
                                                                                                      g7346))
                                                                                                    (x7782
                                                                                                     (number?/c
                                                                                                      j7348
                                                                                                      k7349
                                                                                                      g7347)))
                                                                                             (f7350
                                                                                              x7783
                                                                                              x7782))))
                                                                                   (boolean?/c
                                                                                    j7348
                                                                                    k7349
                                                                                    x7781))))
                                                                         g7780))))
                                                             g7779))
                                                         xj7344
                                                         xk7345
                                                         (lambda (a b)
                                                           (letrec ((g7778
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7778)))))
                                                g7777)))
                                           (>=
                                            (letrec ((xj7351 'server)
                                                     (xk7352 'client))
                                              (letrec ((g7784
                                                        ((lambda (j7355
                                                                  k7356
                                                                  f7357)
                                                           (letrec ((g7786
                                                                     (lambda (g7353
                                                                              g7354)
                                                                       (letrec ((g7787
                                                                                 (letrec ((x7788
                                                                                           (letrec ((x7790
                                                                                                     (number?/c
                                                                                                      j7355
                                                                                                      k7356
                                                                                                      g7353))
                                                                                                    (x7789
                                                                                                     (number?/c
                                                                                                      j7355
                                                                                                      k7356
                                                                                                      g7354)))
                                                                                             (f7357
                                                                                              x7790
                                                                                              x7789))))
                                                                                   (boolean?/c
                                                                                    j7355
                                                                                    k7356
                                                                                    x7788))))
                                                                         g7787))))
                                                             g7786))
                                                         xj7351
                                                         xk7352
                                                         (lambda (a b)
                                                           (letrec ((g7785
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7785)))))
                                                g7784)))
                                           (/
                                            (letrec ((xj7358 'server)
                                                     (xk7359 'client))
                                              (letrec ((g7791
                                                        ((lambda (j7362
                                                                  k7363
                                                                  f7364)
                                                           (letrec ((g7793
                                                                     (lambda (g7360
                                                                              g7361)
                                                                       (letrec ((g7794
                                                                                 (letrec ((x7795
                                                                                           (letrec ((x7797
                                                                                                     (number?/c
                                                                                                      j7362
                                                                                                      k7363
                                                                                                      g7360))
                                                                                                    (x7796
                                                                                                     (number?/c
                                                                                                      j7362
                                                                                                      k7363
                                                                                                      g7361)))
                                                                                             (f7364
                                                                                              x7797
                                                                                              x7796))))
                                                                                   (number?/c
                                                                                    j7362
                                                                                    k7363
                                                                                    x7795))))
                                                                         g7794))))
                                                             g7793))
                                                         xj7358
                                                         xk7359
                                                         (lambda (a b)
                                                           (letrec ((g7792
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7792)))))
                                                g7791)))
                                           (car
                                            (letrec ((xj7365 'server)
                                                     (xk7366 'client))
                                              (letrec ((g7798
                                                        ((lambda (j7368
                                                                  k7369
                                                                  f7370)
                                                           (letrec ((g7800
                                                                     (lambda (g7367)
                                                                       (letrec ((g7801
                                                                                 (letrec ((x7802
                                                                                           (letrec ((x7803
                                                                                                     (pair?/c
                                                                                                      j7368
                                                                                                      k7369
                                                                                                      g7367)))
                                                                                             (f7370
                                                                                              x7803))))
                                                                                   (any/c
                                                                                    j7368
                                                                                    k7369
                                                                                    x7802))))
                                                                         g7801))))
                                                             g7800))
                                                         xj7365
                                                         xk7366
                                                         (lambda (p)
                                                           (letrec ((g7799
                                                                     (orig-car
                                                                      p)))
                                                             g7799)))))
                                                g7798)))
                                           (cdr
                                            (letrec ((xj7371 'server)
                                                     (xk7372 'client))
                                              (letrec ((g7804
                                                        ((lambda (j7374
                                                                  k7375
                                                                  f7376)
                                                           (letrec ((g7806
                                                                     (lambda (g7373)
                                                                       (letrec ((g7807
                                                                                 (letrec ((x7808
                                                                                           (letrec ((x7809
                                                                                                     (pair?/c
                                                                                                      j7374
                                                                                                      k7375
                                                                                                      g7373)))
                                                                                             (f7376
                                                                                              x7809))))
                                                                                   (any/c
                                                                                    j7374
                                                                                    k7375
                                                                                    x7808))))
                                                                         g7807))))
                                                             g7806))
                                                         xj7371
                                                         xk7372
                                                         (lambda (p)
                                                           (letrec ((g7805
                                                                     (orig-cdr
                                                                      p)))
                                                             g7805)))))
                                                g7804)))
                                           (cons
                                            (letrec ((xj7377 'server)
                                                     (xk7378 'client))
                                              (letrec ((g7810
                                                        ((lambda (j7381
                                                                  k7382
                                                                  f7383)
                                                           (letrec ((g7812
                                                                     (lambda (g7379
                                                                              g7380)
                                                                       (letrec ((g7813
                                                                                 (letrec ((x7814
                                                                                           (letrec ((x7816
                                                                                                     (any/c
                                                                                                      j7381
                                                                                                      k7382
                                                                                                      g7379))
                                                                                                    (x7815
                                                                                                     (any/c
                                                                                                      j7381
                                                                                                      k7382
                                                                                                      g7380)))
                                                                                             (f7383
                                                                                              x7816
                                                                                              x7815))))
                                                                                   (pair?/c
                                                                                    j7381
                                                                                    k7382
                                                                                    x7814))))
                                                                         g7813))))
                                                             g7812))
                                                         xj7377
                                                         xk7378
                                                         (lambda (a b)
                                                           (letrec ((g7811
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7811)))))
                                                g7810)))
                                           (vector-ref
                                            (letrec ((xj7384 'server)
                                                     (xk7385 'client))
                                              (letrec ((g7817
                                                        ((lambda (j7387
                                                                  k7388
                                                                  f7389)
                                                           (letrec ((g7819
                                                                     (lambda (g7386)
                                                                       (letrec ((g7820
                                                                                 (letrec ((x7821
                                                                                           (letrec ((x7822
                                                                                                     (vector?/c
                                                                                                      j7387
                                                                                                      k7388
                                                                                                      g7386)))
                                                                                             (f7389
                                                                                              x7822))))
                                                                                   (integer?/c
                                                                                    j7387
                                                                                    k7388
                                                                                    x7821))))
                                                                         g7820))))
                                                             g7819))
                                                         xj7384
                                                         xk7385
                                                         (lambda (v i)
                                                           (letrec ((g7818
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7818)))))
                                                g7817)))
                                           (vector-set!
                                            (letrec ((xj7390 'server)
                                                     (xk7391 'client))
                                              (letrec ((g7823
                                                        ((lambda (j7394
                                                                  k7395
                                                                  f7396)
                                                           (letrec ((g7825
                                                                     (lambda (g7392
                                                                              g7393)
                                                                       (letrec ((g7826
                                                                                 (letrec ((x7827
                                                                                           (letrec ((x7829
                                                                                                     (vector?/c
                                                                                                      j7394
                                                                                                      k7395
                                                                                                      g7392))
                                                                                                    (x7828
                                                                                                     (integer?/c
                                                                                                      j7394
                                                                                                      k7395
                                                                                                      g7393)))
                                                                                             (f7396
                                                                                              x7829
                                                                                              x7828))))
                                                                                   (any/c
                                                                                    j7394
                                                                                    k7395
                                                                                    x7827))))
                                                                         g7826))))
                                                             g7825))
                                                         xj7390
                                                         xk7391
                                                         (lambda (vec i v)
                                                           (letrec ((g7824
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7824)))))
                                                g7823)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7830
                                                        (letrec ((x7831
                                                                  (letrec ((x7832
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7832))))
                                                          (cdr x7831))))
                                                g7830)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7833
                                                        (letrec ((x7836
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7836)))
                                                       (g7834
                                                        (letrec ((x7837
                                                                  (list? l)))
                                                          (assert x7837)))
                                                       (g7835
                                                        (letrec ((x-cnd7838
                                                                  (null? l)))
                                                          (if x-cnd7838
                                                            '()
                                                            (letrec ((x7841
                                                                      (letrec ((x7842
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7842)))
                                                                     (x7839
                                                                      (letrec ((x7840
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7840))))
                                                              (cons
                                                               x7841
                                                               x7839))))))
                                                g7835)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7843
                                                        (letrec ((x7844
                                                                  (car x)))
                                                          (cdr x7844))))
                                                g7843)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7845
                                                        (letrec ((x7846
                                                                  (letrec ((x7847
                                                                            (letrec ((x7848
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7848))))
                                                                    (cdr
                                                                     x7847))))
                                                          (car x7846))))
                                                g7845)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7849
                                                        (letrec ((x7850
                                                                  (letrec ((x7851
                                                                            (letrec ((x7852
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7852))))
                                                                    (car
                                                                     x7851))))
                                                          (cdr x7850))))
                                                g7849)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7853
                                                        (letrec ((x7856
                                                                  (string?
                                                                   filename)))
                                                          (assert x7856)))
                                                       (g7854
                                                        (letrec ((x7857
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7857)))
                                                       (g7855
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7858
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7859 res))
                                                            g7859))))
                                                g7855)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7860
                                                        (letrec ((x7861
                                                                  (letrec ((x7862
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7862))))
                                                          (car x7861))))
                                                g7860)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7863
                                                        (letrec ((x7864
                                                                  (letrec ((x7865
                                                                            (letrec ((x7866
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7866))))
                                                                    (car
                                                                     x7865))))
                                                          (cdr x7864))))
                                                g7863)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7867
                                                        (letrec ((x7869
                                                                  (list? l)))
                                                          (assert x7869)))
                                                       (g7868
                                                        (letrec ((x-cnd7870
                                                                  (null? l)))
                                                          (if x-cnd7870
                                                            #f
                                                            (letrec ((x-cnd7871
                                                                      (letrec ((x7872
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7872
                                                                         k))))
                                                              (if x-cnd7871
                                                                (car l)
                                                                (letrec ((x7873
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7873))))))))
                                                g7868)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7874
                                                        (letrec ((x7875
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7875))))
                                                g7874)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7876
                                                        (letrec ((x7878
                                                                  (list? l)))
                                                          (assert x7878)))
                                                       (g7877
                                                        (letrec ((x-cnd7879
                                                                  (null? l)))
                                                          (if x-cnd7879
                                                            ""
                                                            (letrec ((x7882
                                                                      (letrec ((x7883
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7883)))
                                                                     (x7880
                                                                      (letrec ((x7881
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7881))))
                                                              (string-append
                                                               x7882
                                                               x7880))))))
                                                g7877)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7884
                                                        (letrec ((x7887
                                                                  (char? c1)))
                                                          (assert x7887)))
                                                       (g7885
                                                        (letrec ((x7888
                                                                  (char? c2)))
                                                          (assert x7888)))
                                                       (g7886
                                                        (letrec ((val7247
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7889
                                                                    (if val7247
                                                                      val7247
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7889))))
                                                g7886)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7890
                                                        (letrec ((x7891
                                                                  (letrec ((x7892
                                                                            (letrec ((x7893
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7893))))
                                                                    (cdr
                                                                     x7892))))
                                                          (cdr x7891))))
                                                g7890)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7894
                                                        (letrec ((x7897
                                                                  (list? l)))
                                                          (assert x7897)))
                                                       (g7895
                                                        (letrec ((x7898
                                                                  (number?)))
                                                          (assert x7898)))
                                                       (g7896
                                                        (letrec ((x-cnd7899
                                                                  (zero? k)))
                                                          (if x-cnd7899
                                                            x
                                                            (letrec ((x7901
                                                                      (cdr x))
                                                                     (x7900
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7901
                                                               x7900))))))
                                                g7896)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7902 '())) g7902)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7903
                                                        (letrec ((x-cnd7904
                                                                  (letrec ((x7905
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7905))))
                                                          (if x-cnd7904
                                                            (letrec ((x7906
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7906))
                                                            #f))))
                                                g7903)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7907
                                                        (letrec ((val7248
                                                                  (letrec ((x7908
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7908
                                                                     9))))
                                                          (letrec ((g7909
                                                                    (if val7248
                                                                      val7248
                                                                      (letrec ((val7249
                                                                                (letrec ((x7910
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7910
                                                                                   10))))
                                                                        (letrec ((g7911
                                                                                  (if val7249
                                                                                    val7249
                                                                                    (letrec ((x7912
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7912
                                                                                       32)))))
                                                                          g7911)))))
                                                            g7909))))
                                                g7907)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7913
                                                        (letrec ((x7914
                                                                  (letrec ((x7915
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7915))))
                                                          (cdr x7914))))
                                                g7913)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7916
                                                        (letrec ((x7918
                                                                  (number? x)))
                                                          (assert x7918)))
                                                       (g7917 (> x 0)))
                                                g7917)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7919 #f)) g7919)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7920
                                                        (letrec ((x7921
                                                                  (cdr x)))
                                                          (cdr x7921))))
                                                g7920)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7922
                                                        (letrec ((x7924
                                                                  (number? x)))
                                                          (assert x7924)))
                                                       (g7923
                                                        (letrec ((x-cnd7925
                                                                  (< x 0)))
                                                          (if x-cnd7925
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7923)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7926
                                                        (letrec ((val7250
                                                                  (eq? a b)))
                                                          (letrec ((g7927
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x-cnd7928
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7928
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7929
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((val7252
                                                                                              (letrec ((x-cnd7930
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7930
                                                                                                  (letrec ((x-cnd7931
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7931
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7932
                                                                                                (if val7252
                                                                                                  val7252
                                                                                                  (letrec ((val7253
                                                                                                            (letrec ((x-cnd7933
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7933
                                                                                                                (letrec ((x-cnd7934
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7934
                                                                                                                    (letrec ((x-cnd7935
                                                                                                                              (letrec ((x7937
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7936
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7937
                                                                                                                                 x7936))))
                                                                                                                      (if x-cnd7935
                                                                                                                        (letrec ((x7939
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7938
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7939
                                                                                                                           x7938))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7940
                                                                                                              (if val7253
                                                                                                                val7253
                                                                                                                (letrec ((x-cnd7941
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7941
                                                                                                                    (letrec ((x-cnd7942
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7942
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7943
                                                                                                                                    (letrec ((x-cnd7944
                                                                                                                                              (letrec ((x7945
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7945
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7944
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7946
                                                                                                                                                              (letrec ((val7254
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7947
                                                                                                                                                                          (if val7254
                                                                                                                                                                            val7254
                                                                                                                                                                            (letrec ((x-cnd7948
                                                                                                                                                                                      (letrec ((x7950
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7949
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7950
                                                                                                                                                                                         x7949))))
                                                                                                                                                                              (if x-cnd7948
                                                                                                                                                                                (letrec ((x7951
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7951))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7947))))
                                                                                                                                                      g7946))))
                                                                                                                                          (letrec ((g7952
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7952))
                                                                                                                                        #f))))
                                                                                                                            g7943))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7940)))))
                                                                                        g7932)))))
                                                                          g7929)))))
                                                            g7927))))
                                                g7926)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7953
                                                        (letrec ((x7954
                                                                  (letrec ((x7955
                                                                            (letrec ((x7956
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7956))))
                                                                    (car
                                                                     x7955))))
                                                          (cdr x7954))))
                                                g7953)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7957
                                                        (letrec ((x7958
                                                                  (letrec ((x7959
                                                                            (letrec ((x7960
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7960))))
                                                                    (car
                                                                     x7959))))
                                                          (car x7958))))
                                                g7957)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7961 (eq? x y)))
                                                g7961)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7962
                                                        (letrec ((x7965
                                                                  (string?
                                                                   filename)))
                                                          (assert x7965)))
                                                       (g7963
                                                        (letrec ((x7966
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7966)))
                                                       (g7964
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7967
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7968 res))
                                                            g7968))))
                                                g7964)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7969 (cons x '())))
                                                g7969)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7970
                                                        (letrec ((x7973
                                                                  (char? c1)))
                                                          (assert x7973)))
                                                       (g7971
                                                        (letrec ((x7974
                                                                  (char? c2)))
                                                          (assert x7974)))
                                                       (g7972
                                                        (letrec ((val7255
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7975
                                                                    (if val7255
                                                                      val7255
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7975))))
                                                g7972)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7976
                                                        (letrec ((x7977
                                                                  (letrec ((x7978
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7978))))
                                                          (cdr x7977))))
                                                g7976)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7979
                                                        (letrec ((x7980
                                                                  (letrec ((x7981
                                                                            (letrec ((x7982
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7982))))
                                                                    (car
                                                                     x7981))))
                                                          (cdr x7980))))
                                                g7979)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7983
                                                        (letrec ((x7984
                                                                  (letrec ((x7985
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7985))))
                                                          (car x7984))))
                                                g7983)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7986
                                                        (letrec ((x7987
                                                                  (letrec ((x7988
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7988))))
                                                          (car x7987))))
                                                g7986)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7989
                                                        (letrec ((x7992
                                                                  (char? c1)))
                                                          (assert x7992)))
                                                       (g7990
                                                        (letrec ((x7993
                                                                  (char? c2)))
                                                          (assert x7993)))
                                                       (g7991
                                                        (letrec ((x7994
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7994))))
                                                g7991)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7995
                                                        (letrec ((x7996
                                                                  (letrec ((x7997
                                                                            (letrec ((x7998
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7998))))
                                                                    (car
                                                                     x7997))))
                                                          (car x7996))))
                                                g7995)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7999
                                                        (letrec ((x8001
                                                                  (number? x)))
                                                          (assert x8001)))
                                                       (g8000 (< x 0)))
                                                g8000)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g8002 (memq e l)))
                                                g8002)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g8003
                                                        (letrec ((x8004
                                                                  (letrec ((x8005
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8005))))
                                                          (car x8004))))
                                                g8003)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8006 '())) g8006)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8007
                                                        (letrec ((x8009
                                                                  (list? l)))
                                                          (assert x8009)))
                                                       (g8008
                                                        (letrec ((x-cnd8010
                                                                  (null? l)))
                                                          (if x-cnd8010
                                                            '()
                                                            (letrec ((x8013
                                                                      (letrec ((x8014
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8014)))
                                                                     (x8011
                                                                      (letrec ((x8012
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8012))))
                                                              (append
                                                               x8013
                                                               x8011))))))
                                                g8008)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8015
                                                        (letrec ((x8016
                                                                  (letrec ((x8017
                                                                            (letrec ((x8018
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8018))))
                                                                    (car
                                                                     x8017))))
                                                          (car x8016))))
                                                g8015)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8019
                                                        (letrec ((x8020
                                                                  (letrec ((x8021
                                                                            (letrec ((x8022
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8022))))
                                                                    (cdr
                                                                     x8021))))
                                                          (cdr x8020))))
                                                g8019)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8023
                                                        (letrec ((x8025
                                                                  (number? x)))
                                                          (assert x8025)))
                                                       (g8024
                                                        (letrec ((x8026
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8026))))
                                                g8024)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8027
                                                        (letrec ((x8028
                                                                  (letrec ((x8029
                                                                            (letrec ((x8030
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8030))))
                                                                    (car
                                                                     x8029))))
                                                          (car x8028))))
                                                g8027)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8031
                                                        (letrec ((x8034
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8034)))
                                                       (g8032
                                                        (letrec ((x8035
                                                                  (list?
                                                                   args)))
                                                          (assert x8035)))
                                                       (g8033
                                                        (letrec ((x-cnd8036
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8036
                                                            (letrec ((g8037
                                                                      (proc)))
                                                              g8037)
                                                            (letrec ((x-cnd8038
                                                                      (letrec ((x8039
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8039))))
                                                              (if x-cnd8038
                                                                (letrec ((g8040
                                                                          (letrec ((x8041
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8041))))
                                                                  g8040)
                                                                (letrec ((x-cnd8042
                                                                          (letrec ((x8043
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8043))))
                                                                  (if x-cnd8042
                                                                    (letrec ((g8044
                                                                              (letrec ((x8046
                                                                                        (car
                                                                                         args))
                                                                                       (x8045
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8046
                                                                                 x8045))))
                                                                      g8044)
                                                                    (letrec ((x-cnd8047
                                                                              (letrec ((x8048
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8048))))
                                                                      (if x-cnd8047
                                                                        (letrec ((g8049
                                                                                  (letrec ((x8052
                                                                                            (car
                                                                                             args))
                                                                                           (x8051
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8050
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8052
                                                                                     x8051
                                                                                     x8050))))
                                                                          g8049)
                                                                        (letrec ((x-cnd8053
                                                                                  (letrec ((x8054
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8054))))
                                                                          (if x-cnd8053
                                                                            (letrec ((g8055
                                                                                      (letrec ((x8059
                                                                                                (car
                                                                                                 args))
                                                                                               (x8058
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8057
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8056
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8059
                                                                                         x8058
                                                                                         x8057
                                                                                         x8056))))
                                                                              g8055)
                                                                            (letrec ((x-cnd8060
                                                                                      (letrec ((x8061
                                                                                                (letrec ((x8062
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8062))))
                                                                                        (null?
                                                                                         x8061))))
                                                                              (if x-cnd8060
                                                                                (letrec ((g8063
                                                                                          (letrec ((x8069
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8068
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8067
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8066
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8064
                                                                                                    (letrec ((x8065
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8065))))
                                                                                            (proc
                                                                                             x8069
                                                                                             x8068
                                                                                             x8067
                                                                                             x8066
                                                                                             x8064))))
                                                                                  g8063)
                                                                                (letrec ((x-cnd8070
                                                                                          (letrec ((x8071
                                                                                                    (letrec ((x8072
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8072))))
                                                                                            (null?
                                                                                             x8071))))
                                                                                  (if x-cnd8070
                                                                                    (letrec ((g8073
                                                                                              (letrec ((x8081
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8080
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8079
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8078
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8076
                                                                                                        (letrec ((x8077
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8077)))
                                                                                                       (x8074
                                                                                                        (letrec ((x8075
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8075))))
                                                                                                (proc
                                                                                                 x8081
                                                                                                 x8080
                                                                                                 x8079
                                                                                                 x8078
                                                                                                 x8076
                                                                                                 x8074))))
                                                                                      g8073)
                                                                                    (letrec ((x-cnd8082
                                                                                              (letrec ((x8083
                                                                                                        (letrec ((x8084
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8084))))
                                                                                                (null?
                                                                                                 x8083))))
                                                                                      (if x-cnd8082
                                                                                        (letrec ((g8085
                                                                                                  (letrec ((x8095
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8094
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8093
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8092
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8090
                                                                                                            (letrec ((x8091
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8091)))
                                                                                                           (x8088
                                                                                                            (letrec ((x8089
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8089)))
                                                                                                           (x8086
                                                                                                            (letrec ((x8087
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8087))))
                                                                                                    (proc
                                                                                                     x8095
                                                                                                     x8094
                                                                                                     x8093
                                                                                                     x8092
                                                                                                     x8090
                                                                                                     x8088
                                                                                                     x8086))))
                                                                                          g8085)
                                                                                        (letrec ((g8096
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8096)))))))))))))))))))
                                                g8033)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8097
                                                        (letrec ((x8099
                                                                  (list? l)))
                                                          (assert x8099)))
                                                       (g8098
                                                        (letrec ((x-cnd8100
                                                                  (null? l)))
                                                          (if x-cnd8100
                                                            #f
                                                            (letrec ((x-cnd8101
                                                                      (letrec ((x8102
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8102
                                                                         e))))
                                                              (if x-cnd8101
                                                                l
                                                                (letrec ((x8103
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8103))))))))
                                                g8098)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8104
                                                        (letrec ((x8105
                                                                  (letrec ((x8106
                                                                            (letrec ((x8107
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8107))))
                                                                    (cdr
                                                                     x8106))))
                                                          (cdr x8105))))
                                                g8104)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8108
                                                        (letrec ((x8109
                                                                  (letrec ((x8110
                                                                            (letrec ((x8111
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8111))))
                                                                    (cdr
                                                                     x8110))))
                                                          (car x8109))))
                                                g8108)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8112 (random 42)))
                                                g8112)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8113
                                                        (letrec ((x8115
                                                                  (number? x)))
                                                          (assert x8115)))
                                                       (g8114 (= x 0)))
                                                g8114)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8116
                                                        (letrec ((val7256
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8117
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8117))))
                                                g8116)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8118
                                                        (letrec ((x8119
                                                                  (cdr x)))
                                                          (car x8119))))
                                                g8118)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8120
                                                        (letrec ((val7257
                                                                  (letrec ((x-cnd8121
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8121
                                                                      (letrec ((x8122
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8122))
                                                                      #f))))
                                                          (letrec ((g8123
                                                                    (if val7257
                                                                      val7257
                                                                      (null?
                                                                       l))))
                                                            g8123))))
                                                g8120)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8124
                                                        (letrec ((x8125
                                                                  (letrec ((x8126
                                                                            (letrec ((x8127
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8127))))
                                                                    (cdr
                                                                     x8126))))
                                                          (cdr x8125))))
                                                g8124)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8128
                                                        (letrec ((x-cnd8129
                                                                  (letrec ((x8130
                                                                            #\0))
                                                                    (char<=?
                                                                     x8130
                                                                     c))))
                                                          (if x-cnd8129
                                                            (letrec ((x8131
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8131))
                                                            #f))))
                                                g8128)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8137
                                                                         k))))
                                                              (if x-cnd8136
                                                                (car l)
                                                                (letrec ((x8138
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8138))))))))
                                                g8133)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8139 (if x #f #t)))
                                                g8139)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8140 (append l1 l2)))
                                                g8140)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8141
                                                        (letrec ((x8143
                                                                  (list? l)))
                                                          (assert x8143)))
                                                       (g8142
                                                        (letrec ((x-cnd8144
                                                                  (null? l)))
                                                          (if x-cnd8144
                                                            #f
                                                            (letrec ((x-cnd8145
                                                                      (letrec ((x8146
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8146
                                                                         e))))
                                                              (if x-cnd8145
                                                                l
                                                                (letrec ((x8147
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8147))))))))
                                                g8142)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8148
                                                        (letrec ((x8149
                                                                  (letrec ((x8150
                                                                            (letrec ((x8151
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8151))))
                                                                    (cdr
                                                                     x8150))))
                                                          (car x8149))))
                                                g8148)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8152
                                                        (letrec ((x8154
                                                                  (list? l)))
                                                          (assert x8154)))
                                                       (g8153
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8155
                                                                              (letrec ((x-cnd8156
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8156
                                                                                  0
                                                                                  (letrec ((x8157
                                                                                            (letrec ((x8158
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8158))))
                                                                                    (+
                                                                                     1
                                                                                     x8157))))))
                                                                      g8155))))
                                                          (letrec ((g8159
                                                                    (rec l)))
                                                            g8159))))
                                                g8153)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8160
                                                        (letrec ((x8163
                                                                  (char? c1)))
                                                          (assert x8163)))
                                                       (g8161
                                                        (letrec ((x8164
                                                                  (char? c2)))
                                                          (assert x8164)))
                                                       (g8162
                                                        (letrec ((val7258
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8165
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8165))))
                                                g8162)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8166
                                                        (letrec ((x8167
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8167))))
                                                g8166)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8168
                                                        (letrec ((x8169
                                                                  (letrec ((x8170
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8170))))
                                                          (cdr x8169))))
                                                g8168)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8171
                                                        (letrec ((x8173
                                                                  (list? l)))
                                                          (assert x8173)))
                                                       (g8172
                                                        (letrec ((x-cnd8174
                                                                  (null? l)))
                                                          (if x-cnd8174
                                                            #f
                                                            (letrec ((x-cnd8175
                                                                      (letrec ((x8176
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8176
                                                                         k))))
                                                              (if x-cnd8175
                                                                (car l)
                                                                (letrec ((x8177
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8177))))))))
                                                g8172)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8178
                                                        (letrec ((x8179
                                                                  (car x)))
                                                          (car x8179))))
                                                g8178)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8180
                                                        (letrec ((x8183
                                                                  (char? c1)))
                                                          (assert x8183)))
                                                       (g8181
                                                        (letrec ((x8184
                                                                  (char? c2)))
                                                          (assert x8184)))
                                                       (g8182
                                                        (letrec ((x8185
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8185))))
                                                g8182)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8186
                                                        (letrec ((val7259
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8187
                                                                    (if val7259
                                                                      val7259
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8187))))
                                                g8186)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8188
                                                        (letrec ((x8191
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8191)))
                                                       (g8189
                                                        (letrec ((x8192
                                                                  (list? l)))
                                                          (assert x8192)))
                                                       (g8190
                                                        (letrec ((x-cnd8193
                                                                  (null? l)))
                                                          (if x-cnd8193
                                                            #t
                                                            (letrec ((x-cnd8194
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8194
                                                                (letrec ((g8195
                                                                          (letrec ((x8197
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8197)))
                                                                         (g8196
                                                                          (letrec ((x8198
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8198))))
                                                                  g8196)
                                                                '()))))))
                                                g8190)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8199
                                                        (letrec ((x8201
                                                                  (number? x)))
                                                          (assert x8201)))
                                                       (g8200
                                                        (letrec ((x-cnd8202
                                                                  (< x 0)))
                                                          (if x-cnd8202
                                                            (- 0 x)
                                                            x))))
                                                g8200)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8203
                                                        (letrec ((x8206
                                                                  (char? c1)))
                                                          (assert x8206)))
                                                       (g8204
                                                        (letrec ((x8207
                                                                  (char? c2)))
                                                          (assert x8207)))
                                                       (g8205
                                                        (letrec ((val7260
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8208
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8208))))
                                                g8205)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8209
                                                        (letrec ((x8210
                                                                  (letrec ((x8211
                                                                            (letrec ((x8212
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8212))))
                                                                    (cdr
                                                                     x8211))))
                                                          (car x8210))))
                                                g8209)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8213 #f)) g8213)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8214
                                                        (letrec ((x8216
                                                                  (letrec ((x8217
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8217)))
                                                                 (x8215
                                                                  (gcd m n)))
                                                          (/ x8216 x8215))))
                                                g8214)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8218
                                                        (letrec ((x8222
                                                                  (list? l)))
                                                          (assert x8222)))
                                                       (g8219
                                                        (letrec ((x8223
                                                                  (number?
                                                                   index)))
                                                          (assert x8223)))
                                                       (g8220
                                                        (letrec ((x8224
                                                                  (letrec ((x8225
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8225))))
                                                          (assert x8224)))
                                                       (g8221
                                                        (letrec ((x-cnd8226
                                                                  (= index 0)))
                                                          (if x-cnd8226
                                                            (car l)
                                                            (letrec ((x8228
                                                                      (cdr l))
                                                                     (x8227
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8228
                                                               x8227))))))
                                                g8221)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8229
                                                        (letrec ((x-cnd8230
                                                                  (= b 0)))
                                                          (if x-cnd8230
                                                            a
                                                            (letrec ((x8231
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8231))))))
                                                g8229)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8232
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8232)))
                                           (image?
                                            (lambda (image7648)
                                              (letrec ((g8233
                                                        (letrec ((x8234
                                                                  (car
                                                                   image7648)))
                                                          (eq? x8234 'image))))
                                                g8233)))
                                           (image/c
                                            (lambda (j7398 k7399 v7397)
                                              (letrec ((g8235
                                                        (cons image '())))
                                                g8235)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8236 (image)))
                                                g8236)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8237 (image)))
                                                g8237)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8238 (image)))
                                                g8238)))
                                           (min
                                            (lambda (x y)
                                              (letrec ((g8239
                                                        (letrec ((x-cnd8240
                                                                  (<= x y)))
                                                          (if x-cnd8240 x y))))
                                                g8239)))
                                           (max
                                            (lambda (x y)
                                              (letrec ((g8241
                                                        (letrec ((x-cnd8242
                                                                  (>= x y)))
                                                          (if x-cnd8242 x y))))
                                                g8241)))
                                           (sqr
                                            (lambda (x)
                                              (letrec ((g8243 (* x x)))
                                                g8243)))
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
                                            (lambda (j7402 k7403 f7404)
                                              (letrec ((g8244
                                                        (lambda (g7401)
                                                          (letrec ((g8245
                                                                    (letrec ((x7405
                                                                              ((lambda (g7409
                                                                                        g7410
                                                                                        g7411)
                                                                                 (letrec ((g8246
                                                                                           (letrec ((x-cnd8247
                                                                                                     ((lambda (v7408)
                                                                                                        (letrec ((g8248
                                                                                                                  (letrec ((x-cnd8249
                                                                                                                            (eq?
                                                                                                                             'x
                                                                                                                             v7408)))
                                                                                                                    (if x-cnd8249
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8250
                                                                                                                                (eq?
                                                                                                                                 'y
                                                                                                                                 v7408)))
                                                                                                                        (if x-cnd8250
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8251
                                                                                                                                    (eq?
                                                                                                                                     'posn
                                                                                                                                     v7408)))
                                                                                                                            (if x-cnd8251
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8252
                                                                                                                                        (eq?
                                                                                                                                         'move-toward/speed
                                                                                                                                         v7408)))
                                                                                                                                (if x-cnd8252
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8253
                                                                                                                                            (eq?
                                                                                                                                             'draw-on/image
                                                                                                                                             v7408)))
                                                                                                                                    (if x-cnd8253
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'dist
                                                                                                                                       v7408)))))))))))))
                                                                                                          g8248))
                                                                                                      g7411)))
                                                                                             (if x-cnd8247
                                                                                               g7411
                                                                                               (blame
                                                                                                g7409
                                                                                                '(lambda (v7408)
                                                                                                   (if (eq?
                                                                                                        'x
                                                                                                        v7408)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'y
                                                                                                          v7408)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'posn
                                                                                                            v7408)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'move-toward/speed
                                                                                                              v7408)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'draw-on/image
                                                                                                                v7408)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'dist
                                                                                                              v7408))))))))))))
                                                                                   g8246))
                                                                               j7402
                                                                               k7403
                                                                               g7401)))
                                                                      (letrec ((g8254
                                                                                (letrec ((x8256
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8257
                                                                                                       (letrec ((x-cnd8258
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'x)))
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
                                                                                                                      'y)))
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
                                                                                                                                                   (real?
                                                                                                                                                    j7415
                                                                                                                                                    k7416
                                                                                                                                                    x8267))))
                                                                                                                                         g8266))))
                                                                                                                             g8265))))
                                                                                                                 g8264)
                                                                                                               (letrec ((x-cnd8268
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'posn)))
                                                                                                                 (if x-cnd8268
                                                                                                                   (letrec ((g8269
                                                                                                                             (lambda (j7418
                                                                                                                                      k7419
                                                                                                                                      f7420)
                                                                                                                               (letrec ((g8270
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8271
                                                                                                                                                     (letrec ((x8272
                                                                                                                                                               (f7420)))
                                                                                                                                                       (posn/c
                                                                                                                                                        j7418
                                                                                                                                                        k7419
                                                                                                                                                        x8272))))
                                                                                                                                             g8271))))
                                                                                                                                 g8270))))
                                                                                                                     g8269)
                                                                                                                   (letrec ((x-cnd8273
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward/speed)))
                                                                                                                     (if x-cnd8273
                                                                                                                       (letrec ((g8274
                                                                                                                                 (lambda (j7423
                                                                                                                                          k7424
                                                                                                                                          f7425)
                                                                                                                                   (letrec ((g8275
                                                                                                                                             (lambda (g7421
                                                                                                                                                      g7422)
                                                                                                                                               (letrec ((g8276
                                                                                                                                                         (letrec ((x8277
                                                                                                                                                                   (letrec ((x8279
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7423
                                                                                                                                                                              k7424
                                                                                                                                                                              g7421))
                                                                                                                                                                            (x8278
                                                                                                                                                                             (real?
                                                                                                                                                                              j7423
                                                                                                                                                                              k7424
                                                                                                                                                                              g7422)))
                                                                                                                                                                     (f7425
                                                                                                                                                                      x8279
                                                                                                                                                                      x8278))))
                                                                                                                                                           (posn/c
                                                                                                                                                            j7423
                                                                                                                                                            k7424
                                                                                                                                                            x8277))))
                                                                                                                                                 g8276))))
                                                                                                                                     g8275))))
                                                                                                                         g8274)
                                                                                                                       (letrec ((x-cnd8280
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'draw-on/image)))
                                                                                                                         (if x-cnd8280
                                                                                                                           (letrec ((g8281
                                                                                                                                     (lambda (j7428
                                                                                                                                              k7429
                                                                                                                                              f7430)
                                                                                                                                       (letrec ((g8282
                                                                                                                                                 (lambda (g7426
                                                                                                                                                          g7427)
                                                                                                                                                   (letrec ((g8283
                                                                                                                                                             (letrec ((x8284
                                                                                                                                                                       (letrec ((x8286
                                                                                                                                                                                 (image?
                                                                                                                                                                                  j7428
                                                                                                                                                                                  k7429
                                                                                                                                                                                  g7426))
                                                                                                                                                                                (x8285
                                                                                                                                                                                 (image?
                                                                                                                                                                                  j7428
                                                                                                                                                                                  k7429
                                                                                                                                                                                  g7427)))
                                                                                                                                                                         (f7430
                                                                                                                                                                          x8286
                                                                                                                                                                          x8285))))
                                                                                                                                                               (image?
                                                                                                                                                                j7428
                                                                                                                                                                k7429
                                                                                                                                                                x8284))))
                                                                                                                                                     g8283))))
                                                                                                                                         g8282))))
                                                                                                                             g8281)
                                                                                                                           (letrec ((x-cnd8287
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'dist)))
                                                                                                                             (if x-cnd8287
                                                                                                                               (letrec ((g8288
                                                                                                                                         (lambda (j7432
                                                                                                                                                  k7433
                                                                                                                                                  f7434)
                                                                                                                                           (letrec ((g8289
                                                                                                                                                     (lambda (g7431)
                                                                                                                                                       (letrec ((g8290
                                                                                                                                                                 (letrec ((x8291
                                                                                                                                                                           (letrec ((x8292
                                                                                                                                                                                     (posn/c
                                                                                                                                                                                      j7432
                                                                                                                                                                                      k7433
                                                                                                                                                                                      g7431)))
                                                                                                                                                                             (f7434
                                                                                                                                                                              x8292))))
                                                                                                                                                                   (real?
                                                                                                                                                                    j7432
                                                                                                                                                                    k7433
                                                                                                                                                                    x8291))))
                                                                                                                                                         g8290))))
                                                                                                                                             g8289))))
                                                                                                                                 g8288)
                                                                                                                               (letrec ((g8293
                                                                                                                                         "error"))
                                                                                                                                 g8293)))))))))))))))
                                                                                               g8257))
                                                                                           x7405))
                                                                                         (x8255
                                                                                          (f7404
                                                                                           x7405)))
                                                                                  (x8256
                                                                                   j7402
                                                                                   k7403
                                                                                   x8255))))
                                                                        g8254))))
                                                            g8245))))
                                                g8244)))
                                           (player/c
                                            (lambda (j7436 k7437 f7438)
                                              (letrec ((g8294
                                                        (lambda (g7435)
                                                          (letrec ((g8295
                                                                    (letrec ((x7439
                                                                              ((lambda (g7443
                                                                                        g7444
                                                                                        g7445)
                                                                                 (letrec ((g8296
                                                                                           (letrec ((x-cnd8297
                                                                                                     ((lambda (v7442)
                                                                                                        (letrec ((g8298
                                                                                                                  (letrec ((x-cnd8299
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7442)))
                                                                                                                    (if x-cnd8299
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8300
                                                                                                                                (eq?
                                                                                                                                 'move-toward
                                                                                                                                 v7442)))
                                                                                                                        (if x-cnd8300
                                                                                                                          #t
                                                                                                                          (eq?
                                                                                                                           'draw-on
                                                                                                                           v7442)))))))
                                                                                                          g8298))
                                                                                                      g7445)))
                                                                                             (if x-cnd8297
                                                                                               g7445
                                                                                               (blame
                                                                                                g7443
                                                                                                '(lambda (v7442)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7442)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'move-toward
                                                                                                          v7442)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'draw-on
                                                                                                        v7442)))))))))
                                                                                   g8296))
                                                                               j7436
                                                                               k7437
                                                                               g7435)))
                                                                      (letrec ((g8301
                                                                                (letrec ((x8303
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8304
                                                                                                       (letrec ((x-cnd8305
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8305
                                                                                                           (letrec ((g8306
                                                                                                                     (lambda (j7446
                                                                                                                              k7447
                                                                                                                              f7448)
                                                                                                                       (letrec ((g8307
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8308
                                                                                                                                             (letrec ((x8309
                                                                                                                                                       (f7448)))
                                                                                                                                               (posn/c
                                                                                                                                                j7446
                                                                                                                                                k7447
                                                                                                                                                x8309))))
                                                                                                                                     g8308))))
                                                                                                                         g8307))))
                                                                                                             g8306)
                                                                                                           (letrec ((x-cnd8310
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'move-toward)))
                                                                                                             (if x-cnd8310
                                                                                                               (letrec ((g8311
                                                                                                                         (lambda (j7450
                                                                                                                                  k7451
                                                                                                                                  f7452)
                                                                                                                           (letrec ((g8312
                                                                                                                                     (lambda (g7449)
                                                                                                                                       (letrec ((g8313
                                                                                                                                                 (letrec ((x8314
                                                                                                                                                           (letrec ((x8315
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7450
                                                                                                                                                                      k7451
                                                                                                                                                                      g7449)))
                                                                                                                                                             (f7452
                                                                                                                                                              x8315))))
                                                                                                                                                   (player/c
                                                                                                                                                    j7450
                                                                                                                                                    k7451
                                                                                                                                                    x8314))))
                                                                                                                                         g8313))))
                                                                                                                             g8312))))
                                                                                                                 g8311)
                                                                                                               (letrec ((x-cnd8316
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8316
                                                                                                                   (letrec ((g8317
                                                                                                                             (lambda (j7454
                                                                                                                                      k7455
                                                                                                                                      f7456)
                                                                                                                               (letrec ((g8318
                                                                                                                                         (lambda (g7453)
                                                                                                                                           (letrec ((g8319
                                                                                                                                                     (letrec ((x8320
                                                                                                                                                               (letrec ((x8321
                                                                                                                                                                         (image?
                                                                                                                                                                          j7454
                                                                                                                                                                          k7455
                                                                                                                                                                          g7453)))
                                                                                                                                                                 (f7456
                                                                                                                                                                  x8321))))
                                                                                                                                                       (image?
                                                                                                                                                        j7454
                                                                                                                                                        k7455
                                                                                                                                                        x8320))))
                                                                                                                                             g8319))))
                                                                                                                                 g8318))))
                                                                                                                     g8317)
                                                                                                                   (letrec ((g8322
                                                                                                                             "error"))
                                                                                                                     g8322)))))))))
                                                                                               g8304))
                                                                                           x7439))
                                                                                         (x8302
                                                                                          (f7438
                                                                                           x7439)))
                                                                                  (x8303
                                                                                   j7436
                                                                                   k7437
                                                                                   x8302))))
                                                                        g8301))))
                                                            g8295))))
                                                g8294)))
                                           (zombie/c
                                            (lambda (j7458 k7459 f7460)
                                              (letrec ((g8323
                                                        (lambda (g7457)
                                                          (letrec ((g8324
                                                                    (letrec ((x7461
                                                                              ((lambda (g7465
                                                                                        g7466
                                                                                        g7467)
                                                                                 (letrec ((g8325
                                                                                           (letrec ((x-cnd8326
                                                                                                     ((lambda (v7464)
                                                                                                        (letrec ((g8327
                                                                                                                  (letrec ((x-cnd8328
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7464)))
                                                                                                                    (if x-cnd8328
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8329
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7464)))
                                                                                                                        (if x-cnd8329
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8330
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7464)))
                                                                                                                            (if x-cnd8330
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'move-toward
                                                                                                                               v7464)))))))))
                                                                                                          g8327))
                                                                                                      g7467)))
                                                                                             (if x-cnd8326
                                                                                               g7467
                                                                                               (blame
                                                                                                g7465
                                                                                                '(lambda (v7464)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7464)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7464)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7464)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'move-toward
                                                                                                          v7464))))))))))
                                                                                   g8325))
                                                                               j7458
                                                                               k7459
                                                                               g7457)))
                                                                      (letrec ((g8331
                                                                                (letrec ((x8333
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8334
                                                                                                       (letrec ((x-cnd8335
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8335
                                                                                                           (letrec ((g8336
                                                                                                                     (lambda (j7468
                                                                                                                              k7469
                                                                                                                              f7470)
                                                                                                                       (letrec ((g8337
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8338
                                                                                                                                             (letrec ((x8339
                                                                                                                                                       (f7470)))
                                                                                                                                               (posn/c
                                                                                                                                                j7468
                                                                                                                                                k7469
                                                                                                                                                x8339))))
                                                                                                                                     g8338))))
                                                                                                                         g8337))))
                                                                                                             g8336)
                                                                                                           (letrec ((x-cnd8340
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8340
                                                                                                               (letrec ((g8341
                                                                                                                         (lambda (j7473
                                                                                                                                  k7474
                                                                                                                                  f7475)
                                                                                                                           (letrec ((g8342
                                                                                                                                     (lambda (g7471
                                                                                                                                              g7472)
                                                                                                                                       (letrec ((g8343
                                                                                                                                                 (letrec ((x8344
                                                                                                                                                           (letrec ((x8346
                                                                                                                                                                     (string?
                                                                                                                                                                      j7473
                                                                                                                                                                      k7474
                                                                                                                                                                      g7471))
                                                                                                                                                                    (x8345
                                                                                                                                                                     (image?
                                                                                                                                                                      j7473
                                                                                                                                                                      k7474
                                                                                                                                                                      g7472)))
                                                                                                                                                             (f7475
                                                                                                                                                              x8346
                                                                                                                                                              x8345))))
                                                                                                                                                   (image?
                                                                                                                                                    j7473
                                                                                                                                                    k7474
                                                                                                                                                    x8344))))
                                                                                                                                         g8343))))
                                                                                                                             g8342))))
                                                                                                                 g8341)
                                                                                                               (letrec ((x-cnd8347
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8347
                                                                                                                   (letrec ((g8348
                                                                                                                             (lambda (j7477
                                                                                                                                      k7478
                                                                                                                                      f7479)
                                                                                                                               (letrec ((g8349
                                                                                                                                         (lambda (g7476)
                                                                                                                                           (letrec ((g8350
                                                                                                                                                     (letrec ((x8351
                                                                                                                                                               (letrec ((x8352
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7477
                                                                                                                                                                          k7478
                                                                                                                                                                          g7476)))
                                                                                                                                                                 (f7479
                                                                                                                                                                  x8352))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7477
                                                                                                                                                        k7478
                                                                                                                                                        x8351))))
                                                                                                                                             g8350))))
                                                                                                                                 g8349))))
                                                                                                                     g8348)
                                                                                                                   (letrec ((x-cnd8353
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward)))
                                                                                                                     (if x-cnd8353
                                                                                                                       (letrec ((g8354
                                                                                                                                 (lambda (j7481
                                                                                                                                          k7482
                                                                                                                                          f7483)
                                                                                                                                   (letrec ((g8355
                                                                                                                                             (lambda (g7480)
                                                                                                                                               (letrec ((g8356
                                                                                                                                                         (letrec ((x8357
                                                                                                                                                                   (letrec ((x8358
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7481
                                                                                                                                                                              k7482
                                                                                                                                                                              g7480)))
                                                                                                                                                                     (f7483
                                                                                                                                                                      x8358))))
                                                                                                                                                           (zombie/c
                                                                                                                                                            j7481
                                                                                                                                                            k7482
                                                                                                                                                            x8357))))
                                                                                                                                                 g8356))))
                                                                                                                                     g8355))))
                                                                                                                         g8354)
                                                                                                                       (letrec ((g8359
                                                                                                                                 "error"))
                                                                                                                         g8359)))))))))))
                                                                                               g8334))
                                                                                           x7461))
                                                                                         (x8332
                                                                                          (f7460
                                                                                           x7461)))
                                                                                  (x8333
                                                                                   j7458
                                                                                   k7459
                                                                                   x8332))))
                                                                        g8331))))
                                                            g8324))))
                                                g8323)))
                                           (horde/c
                                            (lambda (j7485 k7486 f7487)
                                              (letrec ((g8360
                                                        (lambda (g7484)
                                                          (letrec ((g8361
                                                                    (letrec ((x7488
                                                                              ((lambda (g7492
                                                                                        g7493
                                                                                        g7494)
                                                                                 (letrec ((g8362
                                                                                           (letrec ((x-cnd8363
                                                                                                     ((lambda (v7491)
                                                                                                        (letrec ((g8364
                                                                                                                  (letrec ((x-cnd8365
                                                                                                                            (eq?
                                                                                                                             'dead
                                                                                                                             v7491)))
                                                                                                                    (if x-cnd8365
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8366
                                                                                                                                (eq?
                                                                                                                                 'undead
                                                                                                                                 v7491)))
                                                                                                                        (if x-cnd8366
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8367
                                                                                                                                    (eq?
                                                                                                                                     'draw-on
                                                                                                                                     v7491)))
                                                                                                                            (if x-cnd8367
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8368
                                                                                                                                        (eq?
                                                                                                                                         'touching?
                                                                                                                                         v7491)))
                                                                                                                                (if x-cnd8368
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8369
                                                                                                                                            (eq?
                                                                                                                                             'move-toward
                                                                                                                                             v7491)))
                                                                                                                                    (if x-cnd8369
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'eat-brains
                                                                                                                                       v7491)))))))))))))
                                                                                                          g8364))
                                                                                                      g7494)))
                                                                                             (if x-cnd8363
                                                                                               g7494
                                                                                               (blame
                                                                                                g7492
                                                                                                '(lambda (v7491)
                                                                                                   (if (eq?
                                                                                                        'dead
                                                                                                        v7491)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'undead
                                                                                                          v7491)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'draw-on
                                                                                                            v7491)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'touching?
                                                                                                              v7491)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'move-toward
                                                                                                                v7491)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'eat-brains
                                                                                                              v7491))))))))))))
                                                                                   g8362))
                                                                               j7485
                                                                               k7486
                                                                               g7484)))
                                                                      (letrec ((g8370
                                                                                (letrec ((x8372
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8373
                                                                                                       (letrec ((x-cnd8374
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'dead)))
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
                                                                                                                      'undead)))
                                                                                                             (if x-cnd8379
                                                                                                               (letrec ((g8380
                                                                                                                         (lambda (j7498
                                                                                                                                  k7499
                                                                                                                                  f7500)
                                                                                                                           (letrec ((g8381
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8382
                                                                                                                                                 (letrec ((x8383
                                                                                                                                                           (f7500)))
                                                                                                                                                   (zombies/c
                                                                                                                                                    j7498
                                                                                                                                                    k7499
                                                                                                                                                    x8383))))
                                                                                                                                         g8382))))
                                                                                                                             g8381))))
                                                                                                                 g8380)
                                                                                                               (letrec ((x-cnd8384
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8384
                                                                                                                   (letrec ((g8385
                                                                                                                             (lambda (j7502
                                                                                                                                      k7503
                                                                                                                                      f7504)
                                                                                                                               (letrec ((g8386
                                                                                                                                         (lambda (g7501)
                                                                                                                                           (letrec ((g8387
                                                                                                                                                     (letrec ((x8388
                                                                                                                                                               (letrec ((x8389
                                                                                                                                                                         (image?
                                                                                                                                                                          j7502
                                                                                                                                                                          k7503
                                                                                                                                                                          g7501)))
                                                                                                                                                                 (f7504
                                                                                                                                                                  x8389))))
                                                                                                                                                       (image?
                                                                                                                                                        j7502
                                                                                                                                                        k7503
                                                                                                                                                        x8388))))
                                                                                                                                             g8387))))
                                                                                                                                 g8386))))
                                                                                                                     g8385)
                                                                                                                   (letrec ((x-cnd8390
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'touching?)))
                                                                                                                     (if x-cnd8390
                                                                                                                       (letrec ((g8391
                                                                                                                                 (lambda (j7506
                                                                                                                                          k7507
                                                                                                                                          f7508)
                                                                                                                                   (letrec ((g8392
                                                                                                                                             (lambda (g7505)
                                                                                                                                               (letrec ((g8393
                                                                                                                                                         (letrec ((x8394
                                                                                                                                                                   (letrec ((x8395
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7506
                                                                                                                                                                              k7507
                                                                                                                                                                              g7505)))
                                                                                                                                                                     (f7508
                                                                                                                                                                      x8395))))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7506
                                                                                                                                                            k7507
                                                                                                                                                            x8394))))
                                                                                                                                                 g8393))))
                                                                                                                                     g8392))))
                                                                                                                         g8391)
                                                                                                                       (letrec ((x-cnd8396
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'move-toward)))
                                                                                                                         (if x-cnd8396
                                                                                                                           (letrec ((g8397
                                                                                                                                     (lambda (j7510
                                                                                                                                              k7511
                                                                                                                                              f7512)
                                                                                                                                       (letrec ((g8398
                                                                                                                                                 (lambda (g7509)
                                                                                                                                                   (letrec ((g8399
                                                                                                                                                             (letrec ((x8400
                                                                                                                                                                       (letrec ((x8401
                                                                                                                                                                                 (posn/c
                                                                                                                                                                                  j7510
                                                                                                                                                                                  k7511
                                                                                                                                                                                  g7509)))
                                                                                                                                                                         (f7512
                                                                                                                                                                          x8401))))
                                                                                                                                                               (horde/c
                                                                                                                                                                j7510
                                                                                                                                                                k7511
                                                                                                                                                                x8400))))
                                                                                                                                                     g8399))))
                                                                                                                                         g8398))))
                                                                                                                             g8397)
                                                                                                                           (letrec ((x-cnd8402
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'eat-brains)))
                                                                                                                             (if x-cnd8402
                                                                                                                               (letrec ((g8403
                                                                                                                                         (lambda (j7513
                                                                                                                                                  k7514
                                                                                                                                                  f7515)
                                                                                                                                           (letrec ((g8404
                                                                                                                                                     (lambda ()
                                                                                                                                                       (letrec ((g8405
                                                                                                                                                                 (letrec ((x8406
                                                                                                                                                                           (f7515)))
                                                                                                                                                                   (horde/c
                                                                                                                                                                    j7513
                                                                                                                                                                    k7514
                                                                                                                                                                    x8406))))
                                                                                                                                                         g8405))))
                                                                                                                                             g8404))))
                                                                                                                                 g8403)
                                                                                                                               (letrec ((g8407
                                                                                                                                         "error"))
                                                                                                                                 g8407)))))))))))))))
                                                                                               g8373))
                                                                                           x7488))
                                                                                         (x8371
                                                                                          (f7487
                                                                                           x7488)))
                                                                                  (x8372
                                                                                   j7485
                                                                                   k7486
                                                                                   x8371))))
                                                                        g8370))))
                                                            g8361))))
                                                g8360)))
                                           (zombies/c
                                            (lambda (j7517 k7518 f7519)
                                              (letrec ((g8408
                                                        (lambda (g7516)
                                                          (letrec ((g8409
                                                                    (letrec ((x7520
                                                                              ((lambda (g7524
                                                                                        g7525
                                                                                        g7526)
                                                                                 (letrec ((g8410
                                                                                           (letrec ((x-cnd8411
                                                                                                     ((lambda (v7523)
                                                                                                        (letrec ((g8412
                                                                                                                  (letrec ((x-cnd8413
                                                                                                                            (eq?
                                                                                                                             'move-toward
                                                                                                                             v7523)))
                                                                                                                    (if x-cnd8413
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8414
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7523)))
                                                                                                                        (if x-cnd8414
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8415
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7523)))
                                                                                                                            (if x-cnd8415
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'kill-all
                                                                                                                               v7523)))))))))
                                                                                                          g8412))
                                                                                                      g7526)))
                                                                                             (if x-cnd8411
                                                                                               g7526
                                                                                               (blame
                                                                                                g7524
                                                                                                '(lambda (v7523)
                                                                                                   (if (eq?
                                                                                                        'move-toward
                                                                                                        v7523)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7523)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7523)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'kill-all
                                                                                                          v7523))))))))))
                                                                                   g8410))
                                                                               j7517
                                                                               k7518
                                                                               g7516)))
                                                                      (letrec ((g8416
                                                                                (letrec ((x8418
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8419
                                                                                                       (letrec ((x-cnd8420
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'move-toward)))
                                                                                                         (if x-cnd8420
                                                                                                           (letrec ((g8421
                                                                                                                     (lambda (j7528
                                                                                                                              k7529
                                                                                                                              f7530)
                                                                                                                       (letrec ((g8422
                                                                                                                                 (lambda (g7527)
                                                                                                                                   (letrec ((g8423
                                                                                                                                             (letrec ((x8424
                                                                                                                                                       (letrec ((x8425
                                                                                                                                                                 (posn/c
                                                                                                                                                                  j7528
                                                                                                                                                                  k7529
                                                                                                                                                                  g7527)))
                                                                                                                                                         (f7530
                                                                                                                                                          x8425))))
                                                                                                                                               (zombies/c
                                                                                                                                                j7528
                                                                                                                                                k7529
                                                                                                                                                x8424))))
                                                                                                                                     g8423))))
                                                                                                                         g8422))))
                                                                                                             g8421)
                                                                                                           (letrec ((x-cnd8426
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8426
                                                                                                               (letrec ((g8427
                                                                                                                         (lambda (j7533
                                                                                                                                  k7534
                                                                                                                                  f7535)
                                                                                                                           (letrec ((g8428
                                                                                                                                     (lambda (g7531
                                                                                                                                              g7532)
                                                                                                                                       (letrec ((g8429
                                                                                                                                                 (letrec ((x8430
                                                                                                                                                           (letrec ((x8432
                                                                                                                                                                     (string?
                                                                                                                                                                      j7533
                                                                                                                                                                      k7534
                                                                                                                                                                      g7531))
                                                                                                                                                                    (x8431
                                                                                                                                                                     (image?
                                                                                                                                                                      j7533
                                                                                                                                                                      k7534
                                                                                                                                                                      g7532)))
                                                                                                                                                             (f7535
                                                                                                                                                              x8432
                                                                                                                                                              x8431))))
                                                                                                                                                   (image?
                                                                                                                                                    j7533
                                                                                                                                                    k7534
                                                                                                                                                    x8430))))
                                                                                                                                         g8429))))
                                                                                                                             g8428))))
                                                                                                                 g8427)
                                                                                                               (letrec ((x-cnd8433
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8433
                                                                                                                   (letrec ((g8434
                                                                                                                             (lambda (j7537
                                                                                                                                      k7538
                                                                                                                                      f7539)
                                                                                                                               (letrec ((g8435
                                                                                                                                         (lambda (g7536)
                                                                                                                                           (letrec ((g8436
                                                                                                                                                     (letrec ((x8437
                                                                                                                                                               (letrec ((x8438
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7537
                                                                                                                                                                          k7538
                                                                                                                                                                          g7536)))
                                                                                                                                                                 (f7539
                                                                                                                                                                  x8438))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7537
                                                                                                                                                        k7538
                                                                                                                                                        x8437))))
                                                                                                                                             g8436))))
                                                                                                                                 g8435))))
                                                                                                                     g8434)
                                                                                                                   (letrec ((x-cnd8439
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'kill-all)))
                                                                                                                     (if x-cnd8439
                                                                                                                       (letrec ((g8440
                                                                                                                                 (lambda (j7541
                                                                                                                                          k7542
                                                                                                                                          f7543)
                                                                                                                                   (letrec ((g8441
                                                                                                                                             (lambda (g7540)
                                                                                                                                               (letrec ((g8442
                                                                                                                                                         (letrec ((x8443
                                                                                                                                                                   (letrec ((x8444
                                                                                                                                                                             (zombies/c
                                                                                                                                                                              j7541
                                                                                                                                                                              k7542
                                                                                                                                                                              g7540)))
                                                                                                                                                                     (f7543
                                                                                                                                                                      x8444))))
                                                                                                                                                           (horde/c
                                                                                                                                                            j7541
                                                                                                                                                            k7542
                                                                                                                                                            x8443))))
                                                                                                                                                 g8442))))
                                                                                                                                     g8441))))
                                                                                                                         g8440)
                                                                                                                       (letrec ((g8445
                                                                                                                                 "error"))
                                                                                                                         g8445)))))))))))
                                                                                               g8419))
                                                                                           x7520))
                                                                                         (x8417
                                                                                          (f7519
                                                                                           x7520)))
                                                                                  (x8418
                                                                                   j7517
                                                                                   k7518
                                                                                   x8417))))
                                                                        g8416))))
                                                            g8409))))
                                                g8408)))
                                           (world/c
                                            (lambda (j7545 k7546 f7547)
                                              (letrec ((g8446
                                                        (lambda (g7544)
                                                          (letrec ((g8447
                                                                    (letrec ((x7548
                                                                              ((lambda (g7552
                                                                                        g7553
                                                                                        g7554)
                                                                                 (letrec ((g8448
                                                                                           (letrec ((x-cnd8449
                                                                                                     ((lambda (v7551)
                                                                                                        (letrec ((g8450
                                                                                                                  (letrec ((x-cnd8451
                                                                                                                            (eq?
                                                                                                                             'on-mouse
                                                                                                                             v7551)))
                                                                                                                    (if x-cnd8451
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8452
                                                                                                                                (eq?
                                                                                                                                 'on-tick
                                                                                                                                 v7551)))
                                                                                                                        (if x-cnd8452
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8453
                                                                                                                                    (eq?
                                                                                                                                     'to-draw
                                                                                                                                     v7551)))
                                                                                                                            (if x-cnd8453
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'stop-when
                                                                                                                               v7551)))))))))
                                                                                                          g8450))
                                                                                                      g7554)))
                                                                                             (if x-cnd8449
                                                                                               g7554
                                                                                               (blame
                                                                                                g7552
                                                                                                '(lambda (v7551)
                                                                                                   (if (eq?
                                                                                                        'on-mouse
                                                                                                        v7551)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'on-tick
                                                                                                          v7551)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'to-draw
                                                                                                            v7551)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'stop-when
                                                                                                          v7551))))))))))
                                                                                   g8448))
                                                                               j7545
                                                                               k7546
                                                                               g7544)))
                                                                      (letrec ((g8454
                                                                                (letrec ((x8456
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8457
                                                                                                       (letrec ((x-cnd8458
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'on-mouse)))
                                                                                                         (if x-cnd8458
                                                                                                           (letrec ((g8459
                                                                                                                     (lambda (j7558
                                                                                                                              k7559
                                                                                                                              f7560)
                                                                                                                       (letrec ((g8460
                                                                                                                                 (lambda (g7555
                                                                                                                                          g7556
                                                                                                                                          g7557)
                                                                                                                                   (letrec ((g8461
                                                                                                                                             (letrec ((x8462
                                                                                                                                                       (letrec ((x8465
                                                                                                                                                                 (real?
                                                                                                                                                                  j7558
                                                                                                                                                                  k7559
                                                                                                                                                                  g7555))
                                                                                                                                                                (x8464
                                                                                                                                                                 (real?
                                                                                                                                                                  j7558
                                                                                                                                                                  k7559
                                                                                                                                                                  g7556))
                                                                                                                                                                (x8463
                                                                                                                                                                 (string?
                                                                                                                                                                  j7558
                                                                                                                                                                  k7559
                                                                                                                                                                  g7557)))
                                                                                                                                                         (f7560
                                                                                                                                                          x8465
                                                                                                                                                          x8464
                                                                                                                                                          x8463))))
                                                                                                                                               (world/c
                                                                                                                                                j7558
                                                                                                                                                k7559
                                                                                                                                                x8462))))
                                                                                                                                     g8461))))
                                                                                                                         g8460))))
                                                                                                             g8459)
                                                                                                           (letrec ((x-cnd8466
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'on-tick)))
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
                                                                                                                                                   (world/c
                                                                                                                                                    j7561
                                                                                                                                                    k7562
                                                                                                                                                    x8470))))
                                                                                                                                         g8469))))
                                                                                                                             g8468))))
                                                                                                                 g8467)
                                                                                                               (letrec ((x-cnd8471
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'to-draw)))
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
                                                                                                                                                       (image?
                                                                                                                                                        j7564
                                                                                                                                                        k7565
                                                                                                                                                        x8475))))
                                                                                                                                             g8474))))
                                                                                                                                 g8473))))
                                                                                                                     g8472)
                                                                                                                   (letrec ((x-cnd8476
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'stop-when)))
                                                                                                                     (if x-cnd8476
                                                                                                                       (letrec ((g8477
                                                                                                                                 (lambda (j7567
                                                                                                                                          k7568
                                                                                                                                          f7569)
                                                                                                                                   (letrec ((g8478
                                                                                                                                             (lambda ()
                                                                                                                                               (letrec ((g8479
                                                                                                                                                         (letrec ((x8480
                                                                                                                                                                   (f7569)))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7567
                                                                                                                                                            k7568
                                                                                                                                                            x8480))))
                                                                                                                                                 g8479))))
                                                                                                                                     g8478))))
                                                                                                                         g8477)
                                                                                                                       (letrec ((g8481
                                                                                                                                 "error"))
                                                                                                                         g8481)))))))))))
                                                                                               g8457))
                                                                                           x7548))
                                                                                         (x8455
                                                                                          (f7547
                                                                                           x7548)))
                                                                                  (x8456
                                                                                   j7545
                                                                                   k7546
                                                                                   x8455))))
                                                                        g8454))))
                                                            g8447))))
                                                g8446)))
                                           (new-world
                                            (lambda (player mouse zombies)
                                              (letrec ((g8482
                                                        (lambda (msg)
                                                          (letrec ((g8483
                                                                    (letrec ((x-cnd8484
                                                                              (equal?
                                                                               msg
                                                                               'on-mouse)))
                                                                      (if x-cnd8484
                                                                        (letrec ((g8485
                                                                                  (letrec ((x8490
                                                                                            (x
                                                                                             y
                                                                                             me))
                                                                                           (x8486
                                                                                            (letrec ((x8487
                                                                                                      (letrec ((x-cnd8488
                                                                                                                (equal?
                                                                                                                 me
                                                                                                                 "leave")))
                                                                                                        (if x-cnd8488
                                                                                                          (letrec ((x8489
                                                                                                                    (player
                                                                                                                     'posn)))
                                                                                                            (x8489))
                                                                                                          (new-posn
                                                                                                           x
                                                                                                           y)))))
                                                                                              (new-world
                                                                                               player
                                                                                               x8487
                                                                                               zombies))))
                                                                                    (λ x8490
                                                                                      x8486))))
                                                                          g8485)
                                                                        (letrec ((x-cnd8491
                                                                                  (equal?
                                                                                   msg
                                                                                   'on-tick)))
                                                                          (if x-cnd8491
                                                                            (letrec ((g8492
                                                                                      (letrec ((x8493
                                                                                                (letrec ((x8500
                                                                                                          (letrec ((x8501
                                                                                                                    (player
                                                                                                                     'move-toward)))
                                                                                                            (x8501
                                                                                                             mouse)))
                                                                                                         (x8494
                                                                                                          (letrec ((x8497
                                                                                                                    (letrec ((x8498
                                                                                                                              (letrec ((x8499
                                                                                                                                        (zombies
                                                                                                                                         'eat-brains)))
                                                                                                                                (x8499))))
                                                                                                                      (x8498
                                                                                                                       'move-toward)))
                                                                                                                   (x8495
                                                                                                                    (letrec ((x8496
                                                                                                                              (player
                                                                                                                               'posn)))
                                                                                                                      (x8496))))
                                                                                                            (x8497
                                                                                                             x8495))))
                                                                                                  (new-world
                                                                                                   x8500
                                                                                                   mouse
                                                                                                   x8494))))
                                                                                        (λ ()
                                                                                          x8493))))
                                                                              g8492)
                                                                            (letrec ((x-cnd8502
                                                                                      (equal?
                                                                                       msg
                                                                                       'to-draw)))
                                                                              (if x-cnd8502
                                                                                (letrec ((g8503
                                                                                          (letrec ((x8504
                                                                                                    (letrec ((x8507
                                                                                                              (player
                                                                                                               'draw-on))
                                                                                                             (x8505
                                                                                                              (letrec ((x8506
                                                                                                                        (zombies
                                                                                                                         'draw-on)))
                                                                                                                (x8506
                                                                                                                 MT-SCENE))))
                                                                                                      (x8507
                                                                                                       x8505))))
                                                                                            (λ ()
                                                                                              x8504))))
                                                                                  g8503)
                                                                                (letrec ((x-cnd8508
                                                                                          (equal?
                                                                                           msg
                                                                                           'stop-when)))
                                                                                  (if x-cnd8508
                                                                                    (letrec ((g8509
                                                                                              (letrec ((x8510
                                                                                                        (letrec ((x8513
                                                                                                                  (zombies
                                                                                                                   'touching?))
                                                                                                                 (x8511
                                                                                                                  (letrec ((x8512
                                                                                                                            (player
                                                                                                                             'posn)))
                                                                                                                    (x8512))))
                                                                                                          (x8513
                                                                                                           x8511))))
                                                                                                (λ ()
                                                                                                  x8510))))
                                                                                      g8509)
                                                                                    (letrec ((g8514
                                                                                              "unknown message"))
                                                                                      g8514)))))))))))
                                                            g8483))))
                                                g8482)))
                                           (new-player
                                            (lambda (p)
                                              (letrec ((g8515
                                                        (lambda (msg)
                                                          (letrec ((g8516
                                                                    (letrec ((x-cnd8517
                                                                              (equal?
                                                                               msg
                                                                               'posn)))
                                                                      (if x-cnd8517
                                                                        (letrec ((g8518
                                                                                  (λ ()
                                                                                    p)))
                                                                          g8518)
                                                                        (letrec ((x-cnd8519
                                                                                  (equal?
                                                                                   msg
                                                                                   'move-toward)))
                                                                          (if x-cnd8519
                                                                            (letrec ((g8520
                                                                                      (letrec ((x8524
                                                                                                (q))
                                                                                               (x8521
                                                                                                (letrec ((x8522
                                                                                                          (letrec ((x8523
                                                                                                                    (p
                                                                                                                     'move-toward/speed)))
                                                                                                            (x8523
                                                                                                             q
                                                                                                             PLAYER-SPEED))))
                                                                                                  (new-player
                                                                                                   x8522))))
                                                                                        (λ x8524
                                                                                          x8521))))
                                                                              g8520)
                                                                            (letrec ((x-cnd8525
                                                                                      (equal?
                                                                                       msg
                                                                                       'draw-on)))
                                                                              (if x-cnd8525
                                                                                (letrec ((g8526
                                                                                          (letrec ((x8529
                                                                                                    (scn))
                                                                                                   (x8527
                                                                                                    (letrec ((x8528
                                                                                                              (p
                                                                                                               'draw-on/image)))
                                                                                                      (x8528
                                                                                                       PLAYER-IMG
                                                                                                       scn))))
                                                                                            (λ x8529
                                                                                              x8527))))
                                                                                  g8526)
                                                                                (letrec ((g8530
                                                                                          "unknown message"))
                                                                                  g8530)))))))))
                                                            g8516))))
                                                g8515)))
                                           (new-horde
                                            (lambda (undead dead)
                                              (letrec ((g8531
                                                        (lambda (msg)
                                                          (letrec ((g8532
                                                                    (letrec ((x-cnd8533
                                                                              (equal?
                                                                               msg
                                                                               'dead)))
                                                                      (if x-cnd8533
                                                                        (letrec ((g8534
                                                                                  (λ ()
                                                                                    dead)))
                                                                          g8534)
                                                                        (letrec ((x-cnd8535
                                                                                  (equal?
                                                                                   msg
                                                                                   'undead)))
                                                                          (if x-cnd8535
                                                                            (letrec ((g8536
                                                                                      (λ ()
                                                                                        undead)))
                                                                              g8536)
                                                                            (letrec ((x-cnd8537
                                                                                      (equal?
                                                                                       msg
                                                                                       'draw-on)))
                                                                              (if x-cnd8537
                                                                                (letrec ((g8538
                                                                                          (letrec ((x8543
                                                                                                    (scn))
                                                                                                   (x8539
                                                                                                    (letrec ((x8542
                                                                                                              (undead
                                                                                                               'draw-on/color))
                                                                                                             (x8540
                                                                                                              (letrec ((x8541
                                                                                                                        (dead
                                                                                                                         'draw-on/color)))
                                                                                                                (x8541
                                                                                                                 "black"
                                                                                                                 scn))))
                                                                                                      (x8542
                                                                                                       "yellow"
                                                                                                       x8540))))
                                                                                            (λ x8543
                                                                                              x8539))))
                                                                                  g8538)
                                                                                (letrec ((x-cnd8544
                                                                                          (equal?
                                                                                           msg
                                                                                           'touching?)))
                                                                                  (if x-cnd8544
                                                                                    (letrec ((g8545
                                                                                              (letrec ((x8551
                                                                                                        (p))
                                                                                                       (x8546
                                                                                                        (letrec ((x8549
                                                                                                                  (letrec ((x8550
                                                                                                                            (undead
                                                                                                                             'touching?)))
                                                                                                                    (x8550
                                                                                                                     p)))
                                                                                                                 (x8547
                                                                                                                  (letrec ((x8548
                                                                                                                            (dead
                                                                                                                             'touching?)))
                                                                                                                    (x8548
                                                                                                                     p))))
                                                                                                          (or x8549
                                                                                                              x8547))))
                                                                                                (λ x8551
                                                                                                  x8546))))
                                                                                      g8545)
                                                                                    (letrec ((x-cnd8552
                                                                                              (equal?
                                                                                               msg
                                                                                               'move-toward)))
                                                                                      (if x-cnd8552
                                                                                        (letrec ((g8553
                                                                                                  (letrec ((x8557
                                                                                                            (p))
                                                                                                           (x8554
                                                                                                            (letrec ((x8555
                                                                                                                      (letrec ((x8556
                                                                                                                                (undead
                                                                                                                                 'move-toward)))
                                                                                                                        (x8556
                                                                                                                         p))))
                                                                                                              (new-horde
                                                                                                               x8555
                                                                                                               dead))))
                                                                                                    (λ x8557
                                                                                                      x8554))))
                                                                                          g8553)
                                                                                        (letrec ((x-cnd8558
                                                                                                  (equal?
                                                                                                   msg
                                                                                                   'eat-brains)))
                                                                                          (if x-cnd8558
                                                                                            (letrec ((g8559
                                                                                                      (letrec ((x8560
                                                                                                                (letrec ((x8561
                                                                                                                          (undead
                                                                                                                           'kill-all)))
                                                                                                                  (x8561
                                                                                                                   dead))))
                                                                                                        (λ ()
                                                                                                          x8560))))
                                                                                              g8559)
                                                                                            (letrec ((g8562
                                                                                                      "unknown message"))
                                                                                              g8562)))))))))))))))
                                                            g8532))))
                                                g8531)))
                                           (new-cons-zombies
                                            (lambda (z r)
                                              (letrec ((g8563
                                                        (lambda (msg)
                                                          (letrec ((g8564
                                                                    (letrec ((x-cnd8565
                                                                              (equal?
                                                                               msg
                                                                               'move-toward)))
                                                                      (if x-cnd8565
                                                                        (letrec ((g8566
                                                                                  (letrec ((x8572
                                                                                            (p))
                                                                                           (x8567
                                                                                            (letrec ((x8570
                                                                                                      (letrec ((x8571
                                                                                                                (z
                                                                                                                 'move-toward)))
                                                                                                        (x8571
                                                                                                         p)))
                                                                                                     (x8568
                                                                                                      (letrec ((x8569
                                                                                                                (r
                                                                                                                 'move-toward)))
                                                                                                        (x8569
                                                                                                         p))))
                                                                                              (new-cons-zombies
                                                                                               x8570
                                                                                               x8568))))
                                                                                    (λ x8572
                                                                                      x8567))))
                                                                          g8566)
                                                                        (letrec ((x-cnd8573
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8573
                                                                            (letrec ((g8574
                                                                                      (letrec ((x8579
                                                                                                (c
                                                                                                 s))
                                                                                               (x8575
                                                                                                (letrec ((x8578
                                                                                                          (z
                                                                                                           'draw-on/color))
                                                                                                         (x8576
                                                                                                          (letrec ((x8577
                                                                                                                    (r
                                                                                                                     'draw-on/color)))
                                                                                                            (x8577
                                                                                                             c
                                                                                                             s))))
                                                                                                  (x8578
                                                                                                   c
                                                                                                   x8576))))
                                                                                        (λ x8579
                                                                                          x8575))))
                                                                              g8574)
                                                                            (letrec ((x-cnd8580
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8580
                                                                                (letrec ((g8581
                                                                                          (letrec ((x8587
                                                                                                    (p))
                                                                                                   (x8582
                                                                                                    (letrec ((x8585
                                                                                                              (letrec ((x8586
                                                                                                                        (z
                                                                                                                         'touching?)))
                                                                                                                (x8586
                                                                                                                 p)))
                                                                                                             (x8583
                                                                                                              (letrec ((x8584
                                                                                                                        (r
                                                                                                                         'touching?)))
                                                                                                                (x8584
                                                                                                                 p))))
                                                                                                      (or x8585
                                                                                                          x8583))))
                                                                                            (λ x8587
                                                                                              x8582))))
                                                                                  g8581)
                                                                                (letrec ((x-cnd8588
                                                                                          (equal?
                                                                                           msg
                                                                                           'kill-all)))
                                                                                  (if x-cnd8588
                                                                                    (letrec ((g8589
                                                                                              (letrec ((x8613
                                                                                                        (dead))
                                                                                                       (x8590
                                                                                                        (letrec ((x8600
                                                                                                                  (letrec ((x8604
                                                                                                                            (letrec ((x8609
                                                                                                                                      (letrec ((x8612
                                                                                                                                                (r
                                                                                                                                                 'touching?))
                                                                                                                                               (x8610
                                                                                                                                                (letrec ((x8611
                                                                                                                                                          (z
                                                                                                                                                           'posn)))
                                                                                                                                                  (x8611))))
                                                                                                                                        (x8612
                                                                                                                                         x8610)))
                                                                                                                                     (x8605
                                                                                                                                      (letrec ((x8608
                                                                                                                                                (dead
                                                                                                                                                 'touching?))
                                                                                                                                               (x8606
                                                                                                                                                (letrec ((x8607
                                                                                                                                                          (z
                                                                                                                                                           'posn)))
                                                                                                                                                  (x8607))))
                                                                                                                                        (x8608
                                                                                                                                         x8606))))
                                                                                                                              (or x8609
                                                                                                                                  x8605)))
                                                                                                                           (x8601
                                                                                                                            (letrec ((x8603
                                                                                                                                      (r
                                                                                                                                       'kill-all))
                                                                                                                                     (x8602
                                                                                                                                      (new-cons-zombies
                                                                                                                                       z
                                                                                                                                       dead)))
                                                                                                                              (x8603
                                                                                                                               x8602))))
                                                                                                                    (x8604
                                                                                                                     x8601)))
                                                                                                                 (x8591
                                                                                                                  (letrec ((x8592
                                                                                                                            (letrec ((res
                                                                                                                                      (letrec ((x8593
                                                                                                                                                (r
                                                                                                                                                 'kill-all)))
                                                                                                                                        (x8593
                                                                                                                                         dead))))
                                                                                                                              (letrec ((g8594
                                                                                                                                        (letrec ((x8597
                                                                                                                                                  (letrec ((x8598
                                                                                                                                                            (letrec ((x8599
                                                                                                                                                                      (res
                                                                                                                                                                       'undead)))
                                                                                                                                                              (x8599))))
                                                                                                                                                    (new-cons-zombies
                                                                                                                                                     z
                                                                                                                                                     x8598)))
                                                                                                                                                 (x8595
                                                                                                                                                  (letrec ((x8596
                                                                                                                                                            (res
                                                                                                                                                             'dead)))
                                                                                                                                                    (x8596))))
                                                                                                                                          (new-horde
                                                                                                                                           x8597
                                                                                                                                           x8595))))
                                                                                                                                g8594))))
                                                                                                                    (else
                                                                                                                     x8592))))
                                                                                                          (cond
                                                                                                           x8600
                                                                                                           x8591))))
                                                                                                (λ x8613
                                                                                                  x8590))))
                                                                                      g8589)
                                                                                    (letrec ((g8614
                                                                                              "unknown message"))
                                                                                      g8614)))))))))))
                                                            g8564))))
                                                g8563)))
                                           (new-mt-zombies
                                            (lambda ()
                                              (letrec ((g8615
                                                        (lambda (msg)
                                                          (letrec ((g8616
                                                                    (letrec ((x-cnd8617
                                                                              (equal?
                                                                               msg
                                                                               'move-toward)))
                                                                      (if x-cnd8617
                                                                        (letrec ((g8618
                                                                                  (letrec ((x8620
                                                                                            (p))
                                                                                           (x8619
                                                                                            (new-mt-zombies)))
                                                                                    (λ x8620
                                                                                      x8619))))
                                                                          g8618)
                                                                        (letrec ((x-cnd8621
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8621
                                                                            (letrec ((g8622
                                                                                      (letrec ((x8623
                                                                                                (c
                                                                                                 s)))
                                                                                        (λ x8623
                                                                                          s))))
                                                                              g8622)
                                                                            (letrec ((x-cnd8624
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8624
                                                                                (letrec ((g8625
                                                                                          (letrec ((x8626
                                                                                                    (p)))
                                                                                            (λ x8626
                                                                                              #f))))
                                                                                  g8625)
                                                                                (letrec ((x-cnd8627
                                                                                          (equal?
                                                                                           msg
                                                                                           'kill-all)))
                                                                                  (if x-cnd8627
                                                                                    (letrec ((g8628
                                                                                              (letrec ((x8631
                                                                                                        (dead))
                                                                                                       (x8629
                                                                                                        (letrec ((x8630
                                                                                                                  (new-mt-zombies)))
                                                                                                          (new-horde
                                                                                                           x8630
                                                                                                           dead))))
                                                                                                (λ x8631
                                                                                                  x8629))))
                                                                                      g8628)
                                                                                    (letrec ((g8632
                                                                                              "unknown message"))
                                                                                      g8632)))))))))))
                                                            g8616))))
                                                g8615)))
                                           (new-zombie
                                            (lambda (p)
                                              (letrec ((g8633
                                                        (lambda (msg)
                                                          (letrec ((g8634
                                                                    (letrec ((x-cnd8635
                                                                              (equal?
                                                                               msg
                                                                               'posn)))
                                                                      (if x-cnd8635
                                                                        (letrec ((g8636
                                                                                  (λ ()
                                                                                    p)))
                                                                          g8636)
                                                                        (letrec ((x-cnd8637
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8637
                                                                            (letrec ((g8638
                                                                                      (letrec ((x8642
                                                                                                (c
                                                                                                 s))
                                                                                               (x8639
                                                                                                (letrec ((x8641
                                                                                                          (p
                                                                                                           'draw-on/image))
                                                                                                         (x8640
                                                                                                          (circle
                                                                                                           ZOMBIE-RADIUS
                                                                                                           "solid"
                                                                                                           c)))
                                                                                                  (x8641
                                                                                                   x8640
                                                                                                   s))))
                                                                                        (λ x8642
                                                                                          x8639))))
                                                                              g8638)
                                                                            (letrec ((x-cnd8643
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8643
                                                                                (letrec ((g8644
                                                                                          (letrec ((x8648
                                                                                                    (q))
                                                                                                   (x8645
                                                                                                    (letrec ((x8646
                                                                                                              (letrec ((x8647
                                                                                                                        (p
                                                                                                                         'dist)))
                                                                                                                (x8647
                                                                                                                 q))))
                                                                                                      (<=
                                                                                                       x8646
                                                                                                       ZOMBIE-RADIUS))))
                                                                                            (λ x8648
                                                                                              x8645))))
                                                                                  g8644)
                                                                                (letrec ((x-cnd8649
                                                                                          (equal?
                                                                                           msg
                                                                                           'move-toward)))
                                                                                  (if x-cnd8649
                                                                                    (letrec ((g8650
                                                                                              (letrec ((x8654
                                                                                                        (q))
                                                                                                       (x8651
                                                                                                        (letrec ((x8652
                                                                                                                  (letrec ((x8653
                                                                                                                            (p
                                                                                                                             'move-toward/speed)))
                                                                                                                    (x8653
                                                                                                                     q
                                                                                                                     ZOMBIE-SPEED))))
                                                                                                          (new-zombie
                                                                                                           x8652))))
                                                                                                (λ x8654
                                                                                                  x8651))))
                                                                                      g8650)
                                                                                    (letrec ((g8655
                                                                                              "unknown message"))
                                                                                      g8655)))))))))))
                                                            g8634))))
                                                g8633)))
                                           (new-posn
                                            (lambda (x y)
                                              (letrec ((g8656
                                                        (letrec ((this
                                                                  (lambda (msg)
                                                                    (letrec ((g8657
                                                                              (letrec ((x-cnd8658
                                                                                        (equal?
                                                                                         msg
                                                                                         'x)))
                                                                                (if x-cnd8658
                                                                                  (letrec ((g8659
                                                                                            (λ ()
                                                                                              x)))
                                                                                    g8659)
                                                                                  (letrec ((x-cnd8660
                                                                                            (equal?
                                                                                             msg
                                                                                             'y)))
                                                                                    (if x-cnd8660
                                                                                      (letrec ((g8661
                                                                                                (λ ()
                                                                                                  y)))
                                                                                        g8661)
                                                                                      (letrec ((x-cnd8662
                                                                                                (equal?
                                                                                                 msg
                                                                                                 'posn)))
                                                                                        (if x-cnd8662
                                                                                          (letrec ((g8663
                                                                                                    (λ ()
                                                                                                      this)))
                                                                                            g8663)
                                                                                          (letrec ((x-cnd8664
                                                                                                    (equal?
                                                                                                     msg
                                                                                                     'move-toward/speed)))
                                                                                            (if x-cnd8664
                                                                                              (letrec ((g8665
                                                                                                        (letrec ((x8695
                                                                                                                  (p
                                                                                                                   speed))
                                                                                                                 (x8666
                                                                                                                  (letrec ((x8681
                                                                                                                            (letrec ((x8691
                                                                                                                                      (letrec ((x8692
                                                                                                                                                (letrec ((x8693
                                                                                                                                                          (letrec ((x8694
                                                                                                                                                                    (p
                                                                                                                                                                     'x)))
                                                                                                                                                            (x8694))))
                                                                                                                                                  (-
                                                                                                                                                   x8693
                                                                                                                                                   x))))
                                                                                                                                        (δx
                                                                                                                                         x8692)))
                                                                                                                                     (x8687
                                                                                                                                      (letrec ((x8688
                                                                                                                                                (letrec ((x8689
                                                                                                                                                          (letrec ((x8690
                                                                                                                                                                    (p
                                                                                                                                                                     'y)))
                                                                                                                                                            (x8690))))
                                                                                                                                                  (-
                                                                                                                                                   x8689
                                                                                                                                                   y))))
                                                                                                                                        (δy
                                                                                                                                         x8688)))
                                                                                                                                     (x8682
                                                                                                                                      (letrec ((x8683
                                                                                                                                                (letrec ((x8684
                                                                                                                                                          (letrec ((x8686
                                                                                                                                                                    (abs
                                                                                                                                                                     δx))
                                                                                                                                                                   (x8685
                                                                                                                                                                    (abs
                                                                                                                                                                     δy)))
                                                                                                                                                            (max
                                                                                                                                                             x8686
                                                                                                                                                             x8685))))
                                                                                                                                                  (min
                                                                                                                                                   speed
                                                                                                                                                   x8684))))
                                                                                                                                        (move-distance
                                                                                                                                         x8683))))
                                                                                                                              (x8691
                                                                                                                               x8687
                                                                                                                               x8682)))
                                                                                                                           (x8667
                                                                                                                            (letrec ((x8673
                                                                                                                                      (letrec ((x8678
                                                                                                                                                (letrec ((x8680
                                                                                                                                                          (abs
                                                                                                                                                           δx))
                                                                                                                                                         (x8679
                                                                                                                                                          (abs
                                                                                                                                                           δy)))
                                                                                                                                                  (<
                                                                                                                                                   x8680
                                                                                                                                                   x8679)))
                                                                                                                                               (x8674
                                                                                                                                                (letrec ((x8677
                                                                                                                                                          (this
                                                                                                                                                           'move))
                                                                                                                                                         (x8675
                                                                                                                                                          (letrec ((x-cnd8676
                                                                                                                                                                    (positive?
                                                                                                                                                                     δy)))
                                                                                                                                                            (if x-cnd8676
                                                                                                                                                              move-distance
                                                                                                                                                              (-
                                                                                                                                                               0
                                                                                                                                                               move-distance)))))
                                                                                                                                                  (x8677
                                                                                                                                                   0
                                                                                                                                                   x8675))))
                                                                                                                                        (x8678
                                                                                                                                         x8674)))
                                                                                                                                     (x8668
                                                                                                                                      (letrec ((x8669
                                                                                                                                                (letrec ((x8672
                                                                                                                                                          (this
                                                                                                                                                           'move))
                                                                                                                                                         (x8670
                                                                                                                                                          (letrec ((x-cnd8671
                                                                                                                                                                    (positive?
                                                                                                                                                                     δx)))
                                                                                                                                                            (if x-cnd8671
                                                                                                                                                              move-distance
                                                                                                                                                              (-
                                                                                                                                                               0
                                                                                                                                                               move-distance)))))
                                                                                                                                                  (x8672
                                                                                                                                                   x8670
                                                                                                                                                   0))))
                                                                                                                                        (else
                                                                                                                                         x8669))))
                                                                                                                              (cond
                                                                                                                               x8673
                                                                                                                               x8668))))
                                                                                                                    (let* x8681 x8667))))
                                                                                                          (λ x8695
                                                                                                            x8666))))
                                                                                                g8665)
                                                                                              (letrec ((x-cnd8696
                                                                                                        (equal?
                                                                                                         msg
                                                                                                         'move)))
                                                                                                (if x-cnd8696
                                                                                                  (letrec ((g8697
                                                                                                            (letrec ((x8701
                                                                                                                      (δx
                                                                                                                       δy))
                                                                                                                     (x8698
                                                                                                                      (letrec ((x8700
                                                                                                                                (+
                                                                                                                                 x
                                                                                                                                 δx))
                                                                                                                               (x8699
                                                                                                                                (+
                                                                                                                                 y
                                                                                                                                 δy)))
                                                                                                                        (new-posn
                                                                                                                         x8700
                                                                                                                         x8699))))
                                                                                                              (λ x8701
                                                                                                                x8698))))
                                                                                                    g8697)
                                                                                                  (letrec ((x-cnd8702
                                                                                                            (equal?
                                                                                                             msg
                                                                                                             'draw-on/image)))
                                                                                                    (if x-cnd8702
                                                                                                      (letrec ((g8703
                                                                                                                (letrec ((x8705
                                                                                                                          (img
                                                                                                                           scn))
                                                                                                                         (x8704
                                                                                                                          (place-image
                                                                                                                           img
                                                                                                                           x
                                                                                                                           y
                                                                                                                           scn)))
                                                                                                                  (λ x8705
                                                                                                                    x8704))))
                                                                                                        g8703)
                                                                                                      (letrec ((x-cnd8706
                                                                                                                (equal?
                                                                                                                 msg
                                                                                                                 'dist)))
                                                                                                        (if x-cnd8706
                                                                                                          (letrec ((g8707
                                                                                                                    (letrec ((x8718
                                                                                                                              (p))
                                                                                                                             (x8708
                                                                                                                              (letrec ((x8709
                                                                                                                                        (letrec ((x8714
                                                                                                                                                  (letrec ((x8715
                                                                                                                                                            (letrec ((x8716
                                                                                                                                                                      (letrec ((x8717
                                                                                                                                                                                (p
                                                                                                                                                                                 'y)))
                                                                                                                                                                        (x8717))))
                                                                                                                                                              (-
                                                                                                                                                               x8716
                                                                                                                                                               y))))
                                                                                                                                                    (sqr
                                                                                                                                                     x8715)))
                                                                                                                                                 (x8710
                                                                                                                                                  (letrec ((x8711
                                                                                                                                                            (letrec ((x8712
                                                                                                                                                                      (letrec ((x8713
                                                                                                                                                                                (p
                                                                                                                                                                                 'x)))
                                                                                                                                                                        (x8713))))
                                                                                                                                                              (-
                                                                                                                                                               x8712
                                                                                                                                                               x))))
                                                                                                                                                    (sqr
                                                                                                                                                     x8711))))
                                                                                                                                          (+
                                                                                                                                           x8714
                                                                                                                                           x8710))))
                                                                                                                                (sqrt
                                                                                                                                 x8709))))
                                                                                                                      (λ x8718
                                                                                                                        x8708))))
                                                                                                            g8707)
                                                                                                          (letrec ((g8719
                                                                                                                    "unknown message"))
                                                                                                            g8719)))))))))))))))))
                                                                      g8657))))
                                                          (letrec ((g8720
                                                                    this))
                                                            g8720))))
                                                g8656)))
                                           (w0
                                            (letrec ((x8734
                                                      (letrec ((x8735
                                                                (new-posn
                                                                 0
                                                                 0)))
                                                        (new-player x8735)))
                                                     (x8733 (new-posn 0 0))
                                                     (x8721
                                                      (letrec ((x8726
                                                                (letrec ((x8731
                                                                          (letrec ((x8732
                                                                                    (new-posn
                                                                                     100
                                                                                     300)))
                                                                            (new-zombie
                                                                             x8732)))
                                                                         (x8727
                                                                          (letrec ((x8729
                                                                                    (letrec ((x8730
                                                                                              (new-posn
                                                                                               100
                                                                                               200)))
                                                                                      (new-zombie
                                                                                       x8730)))
                                                                                   (x8728
                                                                                    (new-mt-zombies)))
                                                                            (new-cons-zombies
                                                                             x8729
                                                                             x8728))))
                                                                  (new-cons-zombies
                                                                   x8731
                                                                   x8727)))
                                                               (x8722
                                                                (letrec ((x8724
                                                                          (letrec ((x8725
                                                                                    (new-posn
                                                                                     200
                                                                                     200)))
                                                                            (new-zombie
                                                                             x8725)))
                                                                         (x8723
                                                                          (new-mt-zombies)))
                                                                  (new-cons-zombies
                                                                   x8724
                                                                   x8723))))
                                                        (new-horde
                                                         x8726
                                                         x8722))))
                                              (new-world x8734 x8733 x8721))))
                                    (letrec ((g8736
                                              (parallel
                                               (parallel
                                                (letrec ((x8738
                                                          (letrec ((xj7570
                                                                    (loc
                                                                     'module))
                                                                   (xk7571
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8739
                                                                      ((lambda (j7573
                                                                                k7574
                                                                                f7575)
                                                                         (letrec ((g8740
                                                                                   (lambda (g7572)
                                                                                     (letrec ((g8741
                                                                                               (letrec ((x8742
                                                                                                         (letrec ((x8743
                                                                                                                   (any/c
                                                                                                                    j7573
                                                                                                                    k7574
                                                                                                                    g7572)))
                                                                                                           (f7575
                                                                                                            x8743))))
                                                                                                 (boolean?/c
                                                                                                  j7573
                                                                                                  k7574
                                                                                                  x8742))))
                                                                                       g8741))))
                                                                           g8740))
                                                                       xj7570
                                                                       xk7571
                                                                       image?)))
                                                              g8739)))
                                                         (x8737 (input)))
                                                  (x8738 x8737))
                                                (letrec ((x8746
                                                          (letrec ((xj7576
                                                                    (loc
                                                                     'module))
                                                                   (xk7577
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8747
                                                                      ((lambda (j7580
                                                                                k7581
                                                                                f7582)
                                                                         (letrec ((g8748
                                                                                   (lambda (g7578
                                                                                            g7579)
                                                                                     (letrec ((g8749
                                                                                               (letrec ((x8750
                                                                                                         (letrec ((x8752
                                                                                                                   (real?/c
                                                                                                                    j7580
                                                                                                                    k7581
                                                                                                                    g7578))
                                                                                                                  (x8751
                                                                                                                   (real?/c
                                                                                                                    j7580
                                                                                                                    k7581
                                                                                                                    g7579)))
                                                                                                           (f7582
                                                                                                            x8752
                                                                                                            x8751))))
                                                                                                 (image?
                                                                                                  j7580
                                                                                                  k7581
                                                                                                  x8750))))
                                                                                       g8749))))
                                                                           g8748))
                                                                       xj7576
                                                                       xk7577
                                                                       empty-scene)))
                                                              g8747)))
                                                         (x8745 (input))
                                                         (x8744 (input)))
                                                  (x8746 x8745 x8744))
                                                (letrec ((x8757
                                                          (letrec ((xj7583
                                                                    (loc
                                                                     'module))
                                                                   (xk7584
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8758
                                                                      ((lambda (j7589
                                                                                k7590
                                                                                f7591)
                                                                         (letrec ((g8759
                                                                                   (lambda (g7585
                                                                                            g7586
                                                                                            g7587
                                                                                            g7588)
                                                                                     (letrec ((g8760
                                                                                               (letrec ((x8761
                                                                                                         (letrec ((x8765
                                                                                                                   (image?/c
                                                                                                                    j7589
                                                                                                                    k7590
                                                                                                                    g7585))
                                                                                                                  (x8764
                                                                                                                   (real?/c
                                                                                                                    j7589
                                                                                                                    k7590
                                                                                                                    g7586))
                                                                                                                  (x8763
                                                                                                                   (real?/c
                                                                                                                    j7589
                                                                                                                    k7590
                                                                                                                    g7587))
                                                                                                                  (x8762
                                                                                                                   (image?
                                                                                                                    j7589
                                                                                                                    k7590
                                                                                                                    g7588)))
                                                                                                           (f7591
                                                                                                            x8765
                                                                                                            x8764
                                                                                                            x8763
                                                                                                            x8762))))
                                                                                                 (image?
                                                                                                  j7589
                                                                                                  k7590
                                                                                                  x8761))))
                                                                                       g8760))))
                                                                           g8759))
                                                                       xj7583
                                                                       xk7584
                                                                       place-image)))
                                                              g8758)))
                                                         (x8756 (input))
                                                         (x8755 (input))
                                                         (x8754 (input))
                                                         (x8753 (input)))
                                                  (x8757
                                                   x8756
                                                   x8755
                                                   x8754
                                                   x8753))
                                                (letrec ((x8769
                                                          (letrec ((xj7592
                                                                    (loc
                                                                     'module))
                                                                   (xk7593
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8770
                                                                      ((lambda (j7597
                                                                                k7598
                                                                                f7599)
                                                                         (letrec ((g8771
                                                                                   (lambda (g7594
                                                                                            g7595
                                                                                            g7596)
                                                                                     (letrec ((g8772
                                                                                               (letrec ((x8773
                                                                                                         (letrec ((x8776
                                                                                                                   (real?/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7594))
                                                                                                                  (x8775
                                                                                                                   (string?/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7595))
                                                                                                                  (x8774
                                                                                                                   (string?/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7596)))
                                                                                                           (f7599
                                                                                                            x8776
                                                                                                            x8775
                                                                                                            x8774))))
                                                                                                 (image?
                                                                                                  j7597
                                                                                                  k7598
                                                                                                  x8773))))
                                                                                       g8772))))
                                                                           g8771))
                                                                       xj7592
                                                                       xk7593
                                                                       circle)))
                                                              g8770)))
                                                         (x8768 (input))
                                                         (x8767 (input))
                                                         (x8766 (input)))
                                                  (x8769 x8768 x8767 x8766))
                                                (letrec ((x8780
                                                          (letrec ((xj7600
                                                                    (loc
                                                                     'module))
                                                                   (xk7601
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8781
                                                                      ((lambda (j7605
                                                                                k7606
                                                                                f7607)
                                                                         (letrec ((g8782
                                                                                   (lambda (g7602
                                                                                            g7603
                                                                                            g7604)
                                                                                     (letrec ((g8783
                                                                                               (letrec ((x8784
                                                                                                         (letrec ((x8787
                                                                                                                   (player/c
                                                                                                                    j7605
                                                                                                                    k7606
                                                                                                                    g7602))
                                                                                                                  (x8786
                                                                                                                   (posn/c
                                                                                                                    j7605
                                                                                                                    k7606
                                                                                                                    g7603))
                                                                                                                  (x8785
                                                                                                                   (horde/c
                                                                                                                    j7605
                                                                                                                    k7606
                                                                                                                    g7604)))
                                                                                                           (f7607
                                                                                                            x8787
                                                                                                            x8786
                                                                                                            x8785))))
                                                                                                 (world/c
                                                                                                  j7605
                                                                                                  k7606
                                                                                                  x8784))))
                                                                                       g8783))))
                                                                           g8782))
                                                                       xj7600
                                                                       xk7601
                                                                       new-world)))
                                                              g8781)))
                                                         (x8779 (input))
                                                         (x8778 (input))
                                                         (x8777 (input)))
                                                  (x8780 x8779 x8778 x8777))
                                                (letrec ((x8789
                                                          (letrec ((xj7608
                                                                    (loc
                                                                     'module))
                                                                   (xk7609
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8790
                                                                      ((lambda (j7611
                                                                                k7612
                                                                                f7613)
                                                                         (letrec ((g8791
                                                                                   (lambda (g7610)
                                                                                     (letrec ((g8792
                                                                                               (letrec ((x8793
                                                                                                         (letrec ((x8794
                                                                                                                   (posn/c
                                                                                                                    j7611
                                                                                                                    k7612
                                                                                                                    g7610)))
                                                                                                           (f7613
                                                                                                            x8794))))
                                                                                                 (player/c
                                                                                                  j7611
                                                                                                  k7612
                                                                                                  x8793))))
                                                                                       g8792))))
                                                                           g8791))
                                                                       xj7608
                                                                       xk7609
                                                                       new-player)))
                                                              g8790)))
                                                         (x8788 (input)))
                                                  (x8789 x8788))
                                                (letrec ((x8797
                                                          (letrec ((xj7614
                                                                    (loc
                                                                     'module))
                                                                   (xk7615
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8798
                                                                      ((lambda (j7618
                                                                                k7619
                                                                                f7620)
                                                                         (letrec ((g8799
                                                                                   (lambda (g7616
                                                                                            g7617)
                                                                                     (letrec ((g8800
                                                                                               (letrec ((x8801
                                                                                                         (letrec ((x8803
                                                                                                                   (zombies/c
                                                                                                                    j7618
                                                                                                                    k7619
                                                                                                                    g7616))
                                                                                                                  (x8802
                                                                                                                   (zombies/c
                                                                                                                    j7618
                                                                                                                    k7619
                                                                                                                    g7617)))
                                                                                                           (f7620
                                                                                                            x8803
                                                                                                            x8802))))
                                                                                                 (horde/c
                                                                                                  j7618
                                                                                                  k7619
                                                                                                  x8801))))
                                                                                       g8800))))
                                                                           g8799))
                                                                       xj7614
                                                                       xk7615
                                                                       new-horde)))
                                                              g8798)))
                                                         (x8796 (input))
                                                         (x8795 (input)))
                                                  (x8797 x8796 x8795))
                                                (letrec ((x8806
                                                          (letrec ((xj7621
                                                                    (loc
                                                                     'module))
                                                                   (xk7622
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8807
                                                                      ((lambda (j7625
                                                                                k7626
                                                                                f7627)
                                                                         (letrec ((g8808
                                                                                   (lambda (g7623
                                                                                            g7624)
                                                                                     (letrec ((g8809
                                                                                               (letrec ((x8810
                                                                                                         (letrec ((x8812
                                                                                                                   (zombie/c
                                                                                                                    j7625
                                                                                                                    k7626
                                                                                                                    g7623))
                                                                                                                  (x8811
                                                                                                                   (zombies/c
                                                                                                                    j7625
                                                                                                                    k7626
                                                                                                                    g7624)))
                                                                                                           (f7627
                                                                                                            x8812
                                                                                                            x8811))))
                                                                                                 (zombies/c
                                                                                                  j7625
                                                                                                  k7626
                                                                                                  x8810))))
                                                                                       g8809))))
                                                                           g8808))
                                                                       xj7621
                                                                       xk7622
                                                                       new-cons-zombies)))
                                                              g8807)))
                                                         (x8805 (input))
                                                         (x8804 (input)))
                                                  (x8806 x8805 x8804))
                                                (letrec ((xj7628 (loc 'module))
                                                         (xk7629
                                                          (loc 'importer)))
                                                  (letrec ((g8813
                                                            ((lambda (j7630
                                                                      k7631
                                                                      f7632)
                                                               (letrec ((g8814
                                                                         (lambda ()
                                                                           (letrec ((g8815
                                                                                     (letrec ((x8816
                                                                                               (f7632)))
                                                                                       (zombies/c
                                                                                        j7630
                                                                                        k7631
                                                                                        x8816))))
                                                                             g8815))))
                                                                 g8814))
                                                             xj7628
                                                             xk7629
                                                             new-mt-zombies)))
                                                    g8813))
                                                (letrec ((x8818
                                                          (letrec ((xj7633
                                                                    (loc
                                                                     'module))
                                                                   (xk7634
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8819
                                                                      ((lambda (j7636
                                                                                k7637
                                                                                f7638)
                                                                         (letrec ((g8820
                                                                                   (lambda (g7635)
                                                                                     (letrec ((g8821
                                                                                               (letrec ((x8822
                                                                                                         (letrec ((x8823
                                                                                                                   (posn/c
                                                                                                                    j7636
                                                                                                                    k7637
                                                                                                                    g7635)))
                                                                                                           (f7638
                                                                                                            x8823))))
                                                                                                 (zombie/c
                                                                                                  j7636
                                                                                                  k7637
                                                                                                  x8822))))
                                                                                       g8821))))
                                                                           g8820))
                                                                       xj7633
                                                                       xk7634
                                                                       new-zombie)))
                                                              g8819)))
                                                         (x8817 (input)))
                                                  (x8818 x8817))
                                                (letrec ((x8826
                                                          (letrec ((xj7639
                                                                    (loc
                                                                     'module))
                                                                   (xk7640
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8827
                                                                      ((lambda (j7643
                                                                                k7644
                                                                                f7645)
                                                                         (letrec ((g8828
                                                                                   (lambda (g7641
                                                                                            g7642)
                                                                                     (letrec ((g8829
                                                                                               (letrec ((x8830
                                                                                                         (letrec ((x8832
                                                                                                                   (real?/c
                                                                                                                    j7643
                                                                                                                    k7644
                                                                                                                    g7641))
                                                                                                                  (x8831
                                                                                                                   (real?/c
                                                                                                                    j7643
                                                                                                                    k7644
                                                                                                                    g7642)))
                                                                                                           (f7645
                                                                                                            x8832
                                                                                                            x8831))))
                                                                                                 (posn/c
                                                                                                  j7643
                                                                                                  k7644
                                                                                                  x8830))))
                                                                                       g8829))))
                                                                           g8828))
                                                                       xj7639
                                                                       xk7640
                                                                       new-posn)))
                                                              g8827)))
                                                         (x8825 (input))
                                                         (x8824 (input)))
                                                  (x8826 x8825 x8824))
                                                (letrec ((xj7646 (loc 'module))
                                                         (xk7647
                                                          (loc 'importer)))
                                                  (letrec ((g8833
                                                            (world/c
                                                             xj7646
                                                             xk7647
                                                             w0)))
                                                    g8833))))))
                                      g8736))))
                          g7677))))
              g7660)))
    g7659))
