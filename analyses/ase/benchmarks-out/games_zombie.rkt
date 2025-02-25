(letrec ((any? (lambda (v) (letrec ((g7657 #t)) g7657)))
         (meta (lambda (v) (letrec ((g7658 v)) g7658)))
         (member
          (lambda (v lst)
            (letrec ((g7659
                      (letrec ((g7660
                                (letrec ((x-e7661 lst))
                                  (match
                                   x-e7661
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7662 (eq? v v1)))
                                       (if x-cnd7662 #t (member v vs)))))))))
                        g7660)))
              g7659)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7663 (lambda (v) (letrec ((g7664 v)) g7664)))) g7663)))
         (nonzero?
          (lambda (v)
            (letrec ((g7665 (letrec ((x7666 (= v 0))) (not x7666)))) g7665))))
  (letrec ((g7667
            (letrec ((g7668
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7669
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7669)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7670
                                            (letrec ((x7672 (number? x)))
                                              (assert x7672)))
                                           (g7671
                                            (letrec ((val7244 (> x y)))
                                              (letrec ((g7673
                                                        (if val7244
                                                          val7244
                                                          (letrec ((val7245
                                                                    (= x y)))
                                                            (letrec ((g7674
                                                                      (if val7245
                                                                        val7245
                                                                        #f)))
                                                              g7674)))))
                                                g7673))))
                                    g7671)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7675
                                            (letrec ((x7677 (number? x)))
                                              (assert x7677)))
                                           (g7676
                                            (letrec ((val7246 (< x y)))
                                              (letrec ((g7678
                                                        (if val7246
                                                          val7246
                                                          (letrec ((val7247
                                                                    (= x y)))
                                                            (letrec ((g7679
                                                                      (if val7247
                                                                        val7247
                                                                        #f)))
                                                              g7679)))))
                                                g7678))))
                                    g7676)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7680
                                            (letrec ((x7682 (number? x)))
                                              (assert x7682)))
                                           (g7681
                                            (letrec ((x7683 (<= x y)))
                                              (not x7683))))
                                    g7681)))
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
                        (letrec ((g7684 '())
                                 (g7685
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7686
                                                        (lambda (k j lst)
                                                          (letrec ((g7687
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7688
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7688))
                                                                     lst)))
                                                            g7687))))
                                                g7686)))
                                           (real?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7689
                                                        (letrec ((x-cnd7690
                                                                  (real?
                                                                   g7268)))
                                                          (if x-cnd7690
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'real?)))))
                                                g7689)))
                                           (boolean?/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7691
                                                        (letrec ((x-cnd7692
                                                                  (boolean?
                                                                   g7271)))
                                                          (if x-cnd7692
                                                            g7271
                                                            (blame
                                                             g7269
                                                             'boolean?)))))
                                                g7691)))
                                           (number?/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7693
                                                        (letrec ((x-cnd7694
                                                                  (number?
                                                                   g7274)))
                                                          (if x-cnd7694
                                                            g7274
                                                            (blame
                                                             g7272
                                                             'number?)))))
                                                g7693)))
                                           (any/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7695
                                                        (letrec ((x-cnd7696
                                                                  ((lambda (v)
                                                                     (letrec ((g7697
                                                                               #t))
                                                                       g7697))
                                                                   g7277)))
                                                          (if x-cnd7696
                                                            g7277
                                                            (blame
                                                             g7275
                                                             '(lambda (v)
                                                                #t))))))
                                                g7695)))
                                           (any?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7698
                                                        (letrec ((x-cnd7699
                                                                  ((lambda (v)
                                                                     (letrec ((g7700
                                                                               #t))
                                                                       g7700))
                                                                   g7280)))
                                                          (if x-cnd7699
                                                            g7280
                                                            (blame
                                                             g7278
                                                             '(lambda (v)
                                                                #t))))))
                                                g7698)))
                                           (cons?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7701
                                                        (letrec ((x-cnd7702
                                                                  (pair?
                                                                   g7283)))
                                                          (if x-cnd7702
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'pair?)))))
                                                g7701)))
                                           (cons/c
                                            (lambda (k1 k2)
                                              (letrec ((g7703
                                                        (lambda (k j v)
                                                          (letrec ((g7704
                                                                    (letrec ((x7707
                                                                              (letrec ((x7708
                                                                                        (car
                                                                                         v)))
                                                                                (k1
                                                                                 k
                                                                                 j
                                                                                 x7708)))
                                                                             (x7705
                                                                              (letrec ((x7706
                                                                                        (cdr
                                                                                         v)))
                                                                                (k2
                                                                                 k
                                                                                 j
                                                                                 x7706))))
                                                                      (cons
                                                                       x7707
                                                                       x7705))))
                                                            g7704))))
                                                g7703)))
                                           (pair?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7709
                                                        (letrec ((x-cnd7710
                                                                  (pair?
                                                                   g7286)))
                                                          (if x-cnd7710
                                                            g7286
                                                            (blame
                                                             g7284
                                                             'pair?)))))
                                                g7709)))
                                           (integer?/c
                                            (lambda (g7287 g7288 g7289)
                                              (letrec ((g7711
                                                        (letrec ((x-cnd7712
                                                                  (integer?
                                                                   g7289)))
                                                          (if x-cnd7712
                                                            g7289
                                                            (blame
                                                             g7287
                                                             'integer?)))))
                                                g7711)))
                                           (symbol?/c
                                            (lambda (g7290 g7291 g7292)
                                              (letrec ((g7713
                                                        (letrec ((x-cnd7714
                                                                  (symbol?
                                                                   g7292)))
                                                          (if x-cnd7714
                                                            g7292
                                                            (blame
                                                             g7290
                                                             'symbol?)))))
                                                g7713)))
                                           (string?/c
                                            (lambda (g7293 g7294 g7295)
                                              (letrec ((g7715
                                                        (letrec ((x-cnd7716
                                                                  (string?
                                                                   g7295)))
                                                          (if x-cnd7716
                                                            g7295
                                                            (blame
                                                             g7293
                                                             'string?)))))
                                                g7715)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7717
                                                        (lambda (k j v)
                                                          (letrec ((g7718
                                                                    (letrec ((x-cnd7719
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7719
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7718))))
                                                g7717)))
                                           (or/c
                                            (lambda (c1 c2)
                                              (letrec ((g7720
                                                        (lambda (k j v)
                                                          (letrec ((g7721
                                                                    (letrec ((val7248
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (letrec ((g7722
                                                                                (if val7248
                                                                                  val7248
                                                                                  (c2
                                                                                   k
                                                                                   j
                                                                                   v))))
                                                                        g7722))))
                                                            g7721))))
                                                g7720)))
                                           (null?/c
                                            (lambda (g7296 g7297 g7298)
                                              (letrec ((g7723
                                                        (letrec ((x-cnd7724
                                                                  (null?
                                                                   g7298)))
                                                          (if x-cnd7724
                                                            g7298
                                                            (blame
                                                             g7296
                                                             'null?)))))
                                                g7723)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7725
                                                        (lambda (k j v)
                                                          (letrec ((g7726
                                                                    (letrec ((x-cnd7727
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7727
                                                                        '()
                                                                        (letrec ((x7731
                                                                                  (letrec ((x7732
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7732)))
                                                                                 (x7728
                                                                                  (letrec ((x7730
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7729
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7730
                                                                                     k
                                                                                     j
                                                                                     x7729))))
                                                                          (orig-cons
                                                                           x7731
                                                                           x7728))))))
                                                            g7726))))
                                                g7725)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7733 #t)) g7733)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7734
                                                        (letrec ((x7735
                                                                  (= v 0)))
                                                          (not x7735))))
                                                g7734)))
                                           (nonzero?/c
                                            (lambda (g7299 g7300 g7301)
                                              (letrec ((g7736
                                                        (letrec ((x-cnd7737
                                                                  ((lambda (v)
                                                                     (letrec ((g7738
                                                                               (letrec ((x7739
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7739))))
                                                                       g7738))
                                                                   g7301)))
                                                          (if x-cnd7737
                                                            g7301
                                                            (blame
                                                             g7299
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7736)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7740
                                                        (lambda (g7302
                                                                 g7303
                                                                 g7304)
                                                          (letrec ((g7741
                                                                    (letrec ((x-cnd7742
                                                                              ((lambda (v)
                                                                                 (letrec ((g7743
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7743))
                                                                               g7304)))
                                                                      (if x-cnd7742
                                                                        g7304
                                                                        (blame
                                                                         g7302
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7741))))
                                                g7740)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7744
                                                        (lambda (g7305
                                                                 g7306
                                                                 g7307)
                                                          (letrec ((g7745
                                                                    (letrec ((x-cnd7746
                                                                              ((lambda (v)
                                                                                 (letrec ((g7747
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7747))
                                                                               g7307)))
                                                                      (if x-cnd7746
                                                                        g7307
                                                                        (blame
                                                                         g7305
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7745))))
                                                g7744)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7748
                                                        (lambda (g7308
                                                                 g7309
                                                                 g7310)
                                                          (letrec ((g7749
                                                                    (letrec ((x-cnd7750
                                                                              ((lambda (v)
                                                                                 (letrec ((g7751
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7751))
                                                                               g7310)))
                                                                      (if x-cnd7750
                                                                        g7310
                                                                        (blame
                                                                         g7308
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7749))))
                                                g7748)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7752
                                                        (lambda (g7311
                                                                 g7312
                                                                 g7313)
                                                          (letrec ((g7753
                                                                    (letrec ((x-cnd7754
                                                                              ((lambda (v)
                                                                                 (letrec ((g7755
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7755))
                                                                               g7313)))
                                                                      (if x-cnd7754
                                                                        g7313
                                                                        (blame
                                                                         g7311
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7753))))
                                                g7752)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7756
                                                        (lambda (g7314
                                                                 g7315
                                                                 g7316)
                                                          (letrec ((g7757
                                                                    (letrec ((x-cnd7758
                                                                              ((lambda (v)
                                                                                 (letrec ((g7759
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7759))
                                                                               g7316)))
                                                                      (if x-cnd7758
                                                                        g7316
                                                                        (blame
                                                                         g7314
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7757))))
                                                g7756)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7760 v)) g7760)))
                                           (+
                                            (letrec ((xj7317 'server)
                                                     (xk7318 'client))
                                              (letrec ((g7761
                                                        ((lambda (j7321
                                                                  k7322
                                                                  f7323)
                                                           (letrec ((g7763
                                                                     (lambda (g7319
                                                                              g7320)
                                                                       (letrec ((g7764
                                                                                 (letrec ((x7765
                                                                                           (letrec ((x7767
                                                                                                     (number?/c
                                                                                                      j7321
                                                                                                      k7322
                                                                                                      g7319))
                                                                                                    (x7766
                                                                                                     (number?/c
                                                                                                      j7321
                                                                                                      k7322
                                                                                                      g7320)))
                                                                                             (f7323
                                                                                              x7767
                                                                                              x7766))))
                                                                                   (number?/c
                                                                                    j7321
                                                                                    k7322
                                                                                    x7765))))
                                                                         g7764))))
                                                             g7763))
                                                         xj7317
                                                         xk7318
                                                         (lambda (a b)
                                                           (letrec ((g7762
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7762)))))
                                                g7761)))
                                           (-
                                            (letrec ((xj7324 'server)
                                                     (xk7325 'client))
                                              (letrec ((g7768
                                                        ((lambda (j7328
                                                                  k7329
                                                                  f7330)
                                                           (letrec ((g7770
                                                                     (lambda (g7326
                                                                              g7327)
                                                                       (letrec ((g7771
                                                                                 (letrec ((x7772
                                                                                           (letrec ((x7774
                                                                                                     (number?/c
                                                                                                      j7328
                                                                                                      k7329
                                                                                                      g7326))
                                                                                                    (x7773
                                                                                                     (number?/c
                                                                                                      j7328
                                                                                                      k7329
                                                                                                      g7327)))
                                                                                             (f7330
                                                                                              x7774
                                                                                              x7773))))
                                                                                   (number?/c
                                                                                    j7328
                                                                                    k7329
                                                                                    x7772))))
                                                                         g7771))))
                                                             g7770))
                                                         xj7324
                                                         xk7325
                                                         (lambda (a b)
                                                           (letrec ((g7769
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7769)))))
                                                g7768)))
                                           (*
                                            (letrec ((xj7331 'server)
                                                     (xk7332 'client))
                                              (letrec ((g7775
                                                        ((lambda (j7335
                                                                  k7336
                                                                  f7337)
                                                           (letrec ((g7777
                                                                     (lambda (g7333
                                                                              g7334)
                                                                       (letrec ((g7778
                                                                                 (letrec ((x7779
                                                                                           (letrec ((x7781
                                                                                                     (number?/c
                                                                                                      j7335
                                                                                                      k7336
                                                                                                      g7333))
                                                                                                    (x7780
                                                                                                     (number?/c
                                                                                                      j7335
                                                                                                      k7336
                                                                                                      g7334)))
                                                                                             (f7337
                                                                                              x7781
                                                                                              x7780))))
                                                                                   (number?/c
                                                                                    j7335
                                                                                    k7336
                                                                                    x7779))))
                                                                         g7778))))
                                                             g7777))
                                                         xj7331
                                                         xk7332
                                                         (lambda (a b)
                                                           (letrec ((g7776
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7776)))))
                                                g7775)))
                                           (<
                                            (letrec ((xj7338 'server)
                                                     (xk7339 'client))
                                              (letrec ((g7782
                                                        ((lambda (j7342
                                                                  k7343
                                                                  f7344)
                                                           (letrec ((g7784
                                                                     (lambda (g7340
                                                                              g7341)
                                                                       (letrec ((g7785
                                                                                 (letrec ((x7786
                                                                                           (letrec ((x7788
                                                                                                     (number?/c
                                                                                                      j7342
                                                                                                      k7343
                                                                                                      g7340))
                                                                                                    (x7787
                                                                                                     (number?/c
                                                                                                      j7342
                                                                                                      k7343
                                                                                                      g7341)))
                                                                                             (f7344
                                                                                              x7788
                                                                                              x7787))))
                                                                                   (boolean?/c
                                                                                    j7342
                                                                                    k7343
                                                                                    x7786))))
                                                                         g7785))))
                                                             g7784))
                                                         xj7338
                                                         xk7339
                                                         (lambda (a b)
                                                           (letrec ((g7783
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7783)))))
                                                g7782)))
                                           (>
                                            (letrec ((xj7345 'server)
                                                     (xk7346 'client))
                                              (letrec ((g7789
                                                        ((lambda (j7349
                                                                  k7350
                                                                  f7351)
                                                           (letrec ((g7791
                                                                     (lambda (g7347
                                                                              g7348)
                                                                       (letrec ((g7792
                                                                                 (letrec ((x7793
                                                                                           (letrec ((x7795
                                                                                                     (number?/c
                                                                                                      j7349
                                                                                                      k7350
                                                                                                      g7347))
                                                                                                    (x7794
                                                                                                     (number?/c
                                                                                                      j7349
                                                                                                      k7350
                                                                                                      g7348)))
                                                                                             (f7351
                                                                                              x7795
                                                                                              x7794))))
                                                                                   (boolean?/c
                                                                                    j7349
                                                                                    k7350
                                                                                    x7793))))
                                                                         g7792))))
                                                             g7791))
                                                         xj7345
                                                         xk7346
                                                         (lambda (a b)
                                                           (letrec ((g7790
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7790)))))
                                                g7789)))
                                           (<=
                                            (letrec ((xj7352 'server)
                                                     (xk7353 'client))
                                              (letrec ((g7796
                                                        ((lambda (j7356
                                                                  k7357
                                                                  f7358)
                                                           (letrec ((g7798
                                                                     (lambda (g7354
                                                                              g7355)
                                                                       (letrec ((g7799
                                                                                 (letrec ((x7800
                                                                                           (letrec ((x7802
                                                                                                     (number?/c
                                                                                                      j7356
                                                                                                      k7357
                                                                                                      g7354))
                                                                                                    (x7801
                                                                                                     (number?/c
                                                                                                      j7356
                                                                                                      k7357
                                                                                                      g7355)))
                                                                                             (f7358
                                                                                              x7802
                                                                                              x7801))))
                                                                                   (boolean?/c
                                                                                    j7356
                                                                                    k7357
                                                                                    x7800))))
                                                                         g7799))))
                                                             g7798))
                                                         xj7352
                                                         xk7353
                                                         (lambda (a b)
                                                           (letrec ((g7797
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7797)))))
                                                g7796)))
                                           (>=
                                            (letrec ((xj7359 'server)
                                                     (xk7360 'client))
                                              (letrec ((g7803
                                                        ((lambda (j7363
                                                                  k7364
                                                                  f7365)
                                                           (letrec ((g7805
                                                                     (lambda (g7361
                                                                              g7362)
                                                                       (letrec ((g7806
                                                                                 (letrec ((x7807
                                                                                           (letrec ((x7809
                                                                                                     (number?/c
                                                                                                      j7363
                                                                                                      k7364
                                                                                                      g7361))
                                                                                                    (x7808
                                                                                                     (number?/c
                                                                                                      j7363
                                                                                                      k7364
                                                                                                      g7362)))
                                                                                             (f7365
                                                                                              x7809
                                                                                              x7808))))
                                                                                   (boolean?/c
                                                                                    j7363
                                                                                    k7364
                                                                                    x7807))))
                                                                         g7806))))
                                                             g7805))
                                                         xj7359
                                                         xk7360
                                                         (lambda (a b)
                                                           (letrec ((g7804
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7804)))))
                                                g7803)))
                                           (/
                                            (letrec ((xj7366 'server)
                                                     (xk7367 'client))
                                              (letrec ((g7810
                                                        ((lambda (j7370
                                                                  k7371
                                                                  f7372)
                                                           (letrec ((g7812
                                                                     (lambda (g7368
                                                                              g7369)
                                                                       (letrec ((g7813
                                                                                 (letrec ((x7814
                                                                                           (letrec ((x7816
                                                                                                     (number?/c
                                                                                                      j7370
                                                                                                      k7371
                                                                                                      g7368))
                                                                                                    (x7815
                                                                                                     (number?/c
                                                                                                      j7370
                                                                                                      k7371
                                                                                                      g7369)))
                                                                                             (f7372
                                                                                              x7816
                                                                                              x7815))))
                                                                                   (number?/c
                                                                                    j7370
                                                                                    k7371
                                                                                    x7814))))
                                                                         g7813))))
                                                             g7812))
                                                         xj7366
                                                         xk7367
                                                         (lambda (a b)
                                                           (letrec ((g7811
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7811)))))
                                                g7810)))
                                           (car
                                            (letrec ((xj7373 'server)
                                                     (xk7374 'client))
                                              (letrec ((g7817
                                                        ((lambda (j7376
                                                                  k7377
                                                                  f7378)
                                                           (letrec ((g7819
                                                                     (lambda (g7375)
                                                                       (letrec ((g7820
                                                                                 (letrec ((x7821
                                                                                           (letrec ((x7822
                                                                                                     (pair?/c
                                                                                                      j7376
                                                                                                      k7377
                                                                                                      g7375)))
                                                                                             (f7378
                                                                                              x7822))))
                                                                                   (any/c
                                                                                    j7376
                                                                                    k7377
                                                                                    x7821))))
                                                                         g7820))))
                                                             g7819))
                                                         xj7373
                                                         xk7374
                                                         (lambda (p)
                                                           (letrec ((g7818
                                                                     (orig-car
                                                                      p)))
                                                             g7818)))))
                                                g7817)))
                                           (cdr
                                            (letrec ((xj7379 'server)
                                                     (xk7380 'client))
                                              (letrec ((g7823
                                                        ((lambda (j7382
                                                                  k7383
                                                                  f7384)
                                                           (letrec ((g7825
                                                                     (lambda (g7381)
                                                                       (letrec ((g7826
                                                                                 (letrec ((x7827
                                                                                           (letrec ((x7828
                                                                                                     (pair?/c
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7381)))
                                                                                             (f7384
                                                                                              x7828))))
                                                                                   (any/c
                                                                                    j7382
                                                                                    k7383
                                                                                    x7827))))
                                                                         g7826))))
                                                             g7825))
                                                         xj7379
                                                         xk7380
                                                         (lambda (p)
                                                           (letrec ((g7824
                                                                     (orig-cdr
                                                                      p)))
                                                             g7824)))))
                                                g7823)))
                                           (cons
                                            (letrec ((xj7385 'server)
                                                     (xk7386 'client))
                                              (letrec ((g7829
                                                        ((lambda (j7389
                                                                  k7390
                                                                  f7391)
                                                           (letrec ((g7831
                                                                     (lambda (g7387
                                                                              g7388)
                                                                       (letrec ((g7832
                                                                                 (letrec ((x7833
                                                                                           (letrec ((x7835
                                                                                                     (any/c
                                                                                                      j7389
                                                                                                      k7390
                                                                                                      g7387))
                                                                                                    (x7834
                                                                                                     (any/c
                                                                                                      j7389
                                                                                                      k7390
                                                                                                      g7388)))
                                                                                             (f7391
                                                                                              x7835
                                                                                              x7834))))
                                                                                   (pair?/c
                                                                                    j7389
                                                                                    k7390
                                                                                    x7833))))
                                                                         g7832))))
                                                             g7831))
                                                         xj7385
                                                         xk7386
                                                         (lambda (a b)
                                                           (letrec ((g7830
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7830)))))
                                                g7829)))
                                           (vector-ref
                                            (letrec ((xj7392 'server)
                                                     (xk7393 'client))
                                              (letrec ((g7836
                                                        ((lambda (j7395
                                                                  k7396
                                                                  f7397)
                                                           (letrec ((g7838
                                                                     (lambda (g7394)
                                                                       (letrec ((g7839
                                                                                 (letrec ((x7840
                                                                                           (letrec ((x7841
                                                                                                     (vector?/c
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7394)))
                                                                                             (f7397
                                                                                              x7841))))
                                                                                   (integer?/c
                                                                                    j7395
                                                                                    k7396
                                                                                    x7840))))
                                                                         g7839))))
                                                             g7838))
                                                         xj7392
                                                         xk7393
                                                         (lambda (v i)
                                                           (letrec ((g7837
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7837)))))
                                                g7836)))
                                           (vector-set!
                                            (letrec ((xj7398 'server)
                                                     (xk7399 'client))
                                              (letrec ((g7842
                                                        ((lambda (j7402
                                                                  k7403
                                                                  f7404)
                                                           (letrec ((g7844
                                                                     (lambda (g7400
                                                                              g7401)
                                                                       (letrec ((g7845
                                                                                 (letrec ((x7846
                                                                                           (letrec ((x7848
                                                                                                     (vector?/c
                                                                                                      j7402
                                                                                                      k7403
                                                                                                      g7400))
                                                                                                    (x7847
                                                                                                     (integer?/c
                                                                                                      j7402
                                                                                                      k7403
                                                                                                      g7401)))
                                                                                             (f7404
                                                                                              x7848
                                                                                              x7847))))
                                                                                   (any/c
                                                                                    j7402
                                                                                    k7403
                                                                                    x7846))))
                                                                         g7845))))
                                                             g7844))
                                                         xj7398
                                                         xk7399
                                                         (lambda (vec i v)
                                                           (letrec ((g7843
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7843)))))
                                                g7842)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7849
                                                        (letrec ((x7850
                                                                  (letrec ((x7851
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7851))))
                                                          (cdr x7850))))
                                                g7849)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7852
                                                        (letrec ((x7855
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7855)))
                                                       (g7853
                                                        (letrec ((x7856
                                                                  (list? l)))
                                                          (assert x7856)))
                                                       (g7854
                                                        (letrec ((x-cnd7857
                                                                  (null? l)))
                                                          (if x-cnd7857
                                                            '()
                                                            (letrec ((x7860
                                                                      (letrec ((x7861
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7861)))
                                                                     (x7858
                                                                      (letrec ((x7859
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7859))))
                                                              (cons
                                                               x7860
                                                               x7858))))))
                                                g7854)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7862
                                                        (letrec ((x7863
                                                                  (car x)))
                                                          (cdr x7863))))
                                                g7862)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7864
                                                        (letrec ((x7865
                                                                  (letrec ((x7866
                                                                            (letrec ((x7867
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7867))))
                                                                    (cdr
                                                                     x7866))))
                                                          (car x7865))))
                                                g7864)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7868
                                                        (letrec ((x7869
                                                                  (letrec ((x7870
                                                                            (letrec ((x7871
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7871))))
                                                                    (car
                                                                     x7870))))
                                                          (cdr x7869))))
                                                g7868)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7872
                                                        (letrec ((x7875
                                                                  (string?
                                                                   filename)))
                                                          (assert x7875)))
                                                       (g7873
                                                        (letrec ((x7876
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7876)))
                                                       (g7874
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7877
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7878 res))
                                                            g7878))))
                                                g7874)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7879
                                                        (letrec ((x7880
                                                                  (letrec ((x7881
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7881))))
                                                          (car x7880))))
                                                g7879)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7882
                                                        (letrec ((x7883
                                                                  (letrec ((x7884
                                                                            (letrec ((x7885
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7885))))
                                                                    (car
                                                                     x7884))))
                                                          (cdr x7883))))
                                                g7882)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7886
                                                        (letrec ((x7888
                                                                  (list? l)))
                                                          (assert x7888)))
                                                       (g7887
                                                        (letrec ((x-cnd7889
                                                                  (null? l)))
                                                          (if x-cnd7889
                                                            #f
                                                            (letrec ((x-cnd7890
                                                                      (letrec ((x7891
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7891
                                                                         k))))
                                                              (if x-cnd7890
                                                                (car l)
                                                                (letrec ((x7892
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7892))))))))
                                                g7887)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7893
                                                        (letrec ((x7894
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7894))))
                                                g7893)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7895
                                                        (letrec ((x7897
                                                                  (list? l)))
                                                          (assert x7897)))
                                                       (g7896
                                                        (letrec ((x-cnd7898
                                                                  (null? l)))
                                                          (if x-cnd7898
                                                            ""
                                                            (letrec ((x7901
                                                                      (letrec ((x7902
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7902)))
                                                                     (x7899
                                                                      (letrec ((x7900
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7900))))
                                                              (string-append
                                                               x7901
                                                               x7899))))))
                                                g7896)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7903
                                                        (letrec ((x7906
                                                                  (char? c1)))
                                                          (assert x7906)))
                                                       (g7904
                                                        (letrec ((x7907
                                                                  (char? c2)))
                                                          (assert x7907)))
                                                       (g7905
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7908
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7908))))
                                                g7905)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7909
                                                        (letrec ((x7910
                                                                  (letrec ((x7911
                                                                            (letrec ((x7912
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7912))))
                                                                    (cdr
                                                                     x7911))))
                                                          (cdr x7910))))
                                                g7909)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7913
                                                        (letrec ((x7916
                                                                  (list? l)))
                                                          (assert x7916)))
                                                       (g7914
                                                        (letrec ((x7917
                                                                  (number?)))
                                                          (assert x7917)))
                                                       (g7915
                                                        (letrec ((x-cnd7918
                                                                  (zero? k)))
                                                          (if x-cnd7918
                                                            x
                                                            (letrec ((x7920
                                                                      (cdr x))
                                                                     (x7919
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7920
                                                               x7919))))))
                                                g7915)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7921 '())) g7921)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7922
                                                        (letrec ((x-cnd7923
                                                                  (letrec ((x7924
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7924))))
                                                          (if x-cnd7923
                                                            (letrec ((x7925
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7925))
                                                            #f))))
                                                g7922)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7926
                                                        (letrec ((val7250
                                                                  (letrec ((x7927
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7927
                                                                     9))))
                                                          (letrec ((g7928
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x7929
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7929
                                                                                   10))))
                                                                        (letrec ((g7930
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x7931
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7931
                                                                                       32)))))
                                                                          g7930)))))
                                                            g7928))))
                                                g7926)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7932
                                                        (letrec ((x7933
                                                                  (letrec ((x7934
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7934))))
                                                          (cdr x7933))))
                                                g7932)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7935
                                                        (letrec ((x7937
                                                                  (number? x)))
                                                          (assert x7937)))
                                                       (g7936 (> x 0)))
                                                g7936)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g7938 (bool-top)))
                                                g7938)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7939 #f)) g7939)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7940
                                                        (letrec ((x7941
                                                                  (cdr x)))
                                                          (cdr x7941))))
                                                g7940)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7942
                                                        (letrec ((x7944
                                                                  (number? x)))
                                                          (assert x7944)))
                                                       (g7943
                                                        (letrec ((x-cnd7945
                                                                  (< x 0)))
                                                          (if x-cnd7945
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7943)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7946
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g7947
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd7948
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7948
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7949
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd7950
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7950
                                                                                                  (letrec ((x-cnd7951
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7951
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7952
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd7953
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7953
                                                                                                                (letrec ((x-cnd7954
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7954
                                                                                                                    (letrec ((x-cnd7955
                                                                                                                              (letrec ((x7957
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7956
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7957
                                                                                                                                 x7956))))
                                                                                                                      (if x-cnd7955
                                                                                                                        (letrec ((x7959
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7958
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7959
                                                                                                                           x7958))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7960
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd7961
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7961
                                                                                                                    (letrec ((x-cnd7962
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7962
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7963
                                                                                                                                    (letrec ((x-cnd7964
                                                                                                                                              (letrec ((x7965
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7965
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7964
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7966
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7967
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd7968
                                                                                                                                                                                      (letrec ((x7970
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7969
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7970
                                                                                                                                                                                         x7969))))
                                                                                                                                                                              (if x-cnd7968
                                                                                                                                                                                (letrec ((x7971
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7971))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7967))))
                                                                                                                                                      g7966))))
                                                                                                                                          (letrec ((g7972
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7972))
                                                                                                                                        #f))))
                                                                                                                            g7963))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7960)))))
                                                                                        g7952)))))
                                                                          g7949)))))
                                                            g7947))))
                                                g7946)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7973
                                                        (letrec ((x7974
                                                                  (letrec ((x7975
                                                                            (letrec ((x7976
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7976))))
                                                                    (car
                                                                     x7975))))
                                                          (cdr x7974))))
                                                g7973)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7977
                                                        (letrec ((x7978
                                                                  (letrec ((x7979
                                                                            (letrec ((x7980
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7980))))
                                                                    (car
                                                                     x7979))))
                                                          (car x7978))))
                                                g7977)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7981 (eq? x y)))
                                                g7981)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7982
                                                        (letrec ((x7985
                                                                  (string?
                                                                   filename)))
                                                          (assert x7985)))
                                                       (g7983
                                                        (letrec ((x7986
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7986)))
                                                       (g7984
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7987
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7988 res))
                                                            g7988))))
                                                g7984)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7989 (cons x '())))
                                                g7989)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7990
                                                        (letrec ((x7993
                                                                  (char? c1)))
                                                          (assert x7993)))
                                                       (g7991
                                                        (letrec ((x7994
                                                                  (char? c2)))
                                                          (assert x7994)))
                                                       (g7992
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7995
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7995))))
                                                g7992)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7996
                                                        (letrec ((x7997
                                                                  (letrec ((x7998
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7998))))
                                                          (cdr x7997))))
                                                g7996)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7999
                                                        (letrec ((x8000
                                                                  (letrec ((x8001
                                                                            (letrec ((x8002
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8002))))
                                                                    (car
                                                                     x8001))))
                                                          (cdr x8000))))
                                                g7999)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g8003
                                                        (letrec ((x8004
                                                                  (letrec ((x8005
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8005))))
                                                          (car x8004))))
                                                g8003)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g8006
                                                        (letrec ((x8007
                                                                  (letrec ((x8008
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8008))))
                                                          (car x8007))))
                                                g8006)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g8009
                                                        (letrec ((x8012
                                                                  (char? c1)))
                                                          (assert x8012)))
                                                       (g8010
                                                        (letrec ((x8013
                                                                  (char? c2)))
                                                          (assert x8013)))
                                                       (g8011
                                                        (letrec ((x8014
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8014))))
                                                g8011)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g8015
                                                        (letrec ((x8016
                                                                  (letrec ((x8017
                                                                            (letrec ((x8018
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8018))))
                                                                    (car
                                                                     x8017))))
                                                          (car x8016))))
                                                g8015)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g8019
                                                        (letrec ((x8021
                                                                  (number? x)))
                                                          (assert x8021)))
                                                       (g8020 (< x 0)))
                                                g8020)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g8022 (memq e l)))
                                                g8022)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g8023
                                                        (letrec ((x8024
                                                                  (letrec ((x8025
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8025))))
                                                          (car x8024))))
                                                g8023)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8026 '())) g8026)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8027
                                                        (letrec ((x8029
                                                                  (list? l)))
                                                          (assert x8029)))
                                                       (g8028
                                                        (letrec ((x-cnd8030
                                                                  (null? l)))
                                                          (if x-cnd8030
                                                            '()
                                                            (letrec ((x8033
                                                                      (letrec ((x8034
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8034)))
                                                                     (x8031
                                                                      (letrec ((x8032
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8032))))
                                                              (append
                                                               x8033
                                                               x8031))))))
                                                g8028)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8035
                                                        (letrec ((x8036
                                                                  (letrec ((x8037
                                                                            (letrec ((x8038
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8038))))
                                                                    (car
                                                                     x8037))))
                                                          (car x8036))))
                                                g8035)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8039
                                                        (letrec ((x8040
                                                                  (letrec ((x8041
                                                                            (letrec ((x8042
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8042))))
                                                                    (cdr
                                                                     x8041))))
                                                          (cdr x8040))))
                                                g8039)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8043
                                                        (letrec ((x8045
                                                                  (number? x)))
                                                          (assert x8045)))
                                                       (g8044
                                                        (letrec ((x8046
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8046))))
                                                g8044)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8047
                                                        (letrec ((x8048
                                                                  (letrec ((x8049
                                                                            (letrec ((x8050
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8050))))
                                                                    (car
                                                                     x8049))))
                                                          (car x8048))))
                                                g8047)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8051
                                                        (letrec ((x8054
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8054)))
                                                       (g8052
                                                        (letrec ((x8055
                                                                  (list?
                                                                   args)))
                                                          (assert x8055)))
                                                       (g8053
                                                        (letrec ((x-cnd8056
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8056
                                                            (letrec ((g8057
                                                                      (proc)))
                                                              g8057)
                                                            (letrec ((x-cnd8058
                                                                      (letrec ((x8059
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8059))))
                                                              (if x-cnd8058
                                                                (letrec ((g8060
                                                                          (letrec ((x8061
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8061))))
                                                                  g8060)
                                                                (letrec ((x-cnd8062
                                                                          (letrec ((x8063
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8063))))
                                                                  (if x-cnd8062
                                                                    (letrec ((g8064
                                                                              (letrec ((x8066
                                                                                        (car
                                                                                         args))
                                                                                       (x8065
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8066
                                                                                 x8065))))
                                                                      g8064)
                                                                    (letrec ((x-cnd8067
                                                                              (letrec ((x8068
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8068))))
                                                                      (if x-cnd8067
                                                                        (letrec ((g8069
                                                                                  (letrec ((x8072
                                                                                            (car
                                                                                             args))
                                                                                           (x8071
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8070
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8072
                                                                                     x8071
                                                                                     x8070))))
                                                                          g8069)
                                                                        (letrec ((x-cnd8073
                                                                                  (letrec ((x8074
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8074))))
                                                                          (if x-cnd8073
                                                                            (letrec ((g8075
                                                                                      (letrec ((x8079
                                                                                                (car
                                                                                                 args))
                                                                                               (x8078
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8077
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8076
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8079
                                                                                         x8078
                                                                                         x8077
                                                                                         x8076))))
                                                                              g8075)
                                                                            (letrec ((x-cnd8080
                                                                                      (letrec ((x8081
                                                                                                (letrec ((x8082
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8082))))
                                                                                        (null?
                                                                                         x8081))))
                                                                              (if x-cnd8080
                                                                                (letrec ((g8083
                                                                                          (letrec ((x8089
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8088
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8087
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8086
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8084
                                                                                                    (letrec ((x8085
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8085))))
                                                                                            (proc
                                                                                             x8089
                                                                                             x8088
                                                                                             x8087
                                                                                             x8086
                                                                                             x8084))))
                                                                                  g8083)
                                                                                (letrec ((x-cnd8090
                                                                                          (letrec ((x8091
                                                                                                    (letrec ((x8092
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8092))))
                                                                                            (null?
                                                                                             x8091))))
                                                                                  (if x-cnd8090
                                                                                    (letrec ((g8093
                                                                                              (letrec ((x8101
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8100
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8099
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8098
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8096
                                                                                                        (letrec ((x8097
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8097)))
                                                                                                       (x8094
                                                                                                        (letrec ((x8095
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8095))))
                                                                                                (proc
                                                                                                 x8101
                                                                                                 x8100
                                                                                                 x8099
                                                                                                 x8098
                                                                                                 x8096
                                                                                                 x8094))))
                                                                                      g8093)
                                                                                    (letrec ((x-cnd8102
                                                                                              (letrec ((x8103
                                                                                                        (letrec ((x8104
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8104))))
                                                                                                (null?
                                                                                                 x8103))))
                                                                                      (if x-cnd8102
                                                                                        (letrec ((g8105
                                                                                                  (letrec ((x8115
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8114
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8113
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8112
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8110
                                                                                                            (letrec ((x8111
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8111)))
                                                                                                           (x8108
                                                                                                            (letrec ((x8109
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8109)))
                                                                                                           (x8106
                                                                                                            (letrec ((x8107
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8107))))
                                                                                                    (proc
                                                                                                     x8115
                                                                                                     x8114
                                                                                                     x8113
                                                                                                     x8112
                                                                                                     x8110
                                                                                                     x8108
                                                                                                     x8106))))
                                                                                          g8105)
                                                                                        (letrec ((g8116
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8116)))))))))))))))))))
                                                g8053)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8117
                                                        (letrec ((x8119
                                                                  (list? l)))
                                                          (assert x8119)))
                                                       (g8118
                                                        (letrec ((x-cnd8120
                                                                  (null? l)))
                                                          (if x-cnd8120
                                                            #f
                                                            (letrec ((x-cnd8121
                                                                      (letrec ((x8122
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8122
                                                                         e))))
                                                              (if x-cnd8121
                                                                l
                                                                (letrec ((x8123
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8123))))))))
                                                g8118)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8124
                                                        (letrec ((x8125
                                                                  (letrec ((x8126
                                                                            (letrec ((x8127
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8127))))
                                                                    (cdr
                                                                     x8126))))
                                                          (cdr x8125))))
                                                g8124)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8128
                                                        (letrec ((x8129
                                                                  (letrec ((x8130
                                                                            (letrec ((x8131
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8131))))
                                                                    (cdr
                                                                     x8130))))
                                                          (car x8129))))
                                                g8128)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8132 (random 42)))
                                                g8132)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8133
                                                        (letrec ((x8135
                                                                  (number? x)))
                                                          (assert x8135)))
                                                       (g8134 (= x 0)))
                                                g8134)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8136
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8137
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8137))))
                                                g8136)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8138
                                                        (letrec ((x8139
                                                                  (cdr x)))
                                                          (car x8139))))
                                                g8138)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8140
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd8141
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8141
                                                                      (letrec ((x8142
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8142))
                                                                      #f))))
                                                          (letrec ((g8143
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g8143))))
                                                g8140)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8144
                                                        (letrec ((x8145
                                                                  (letrec ((x8146
                                                                            (letrec ((x8147
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8147))))
                                                                    (cdr
                                                                     x8146))))
                                                          (cdr x8145))))
                                                g8144)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8148
                                                        (letrec ((x-cnd8149
                                                                  (letrec ((x8150
                                                                            #\0))
                                                                    (char<=?
                                                                     x8150
                                                                     c))))
                                                          (if x-cnd8149
                                                            (letrec ((x8151
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8151))
                                                            #f))))
                                                g8148)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8152
                                                        (letrec ((x8154
                                                                  (list? l)))
                                                          (assert x8154)))
                                                       (g8153
                                                        (letrec ((x-cnd8155
                                                                  (null? l)))
                                                          (if x-cnd8155
                                                            #f
                                                            (letrec ((x-cnd8156
                                                                      (letrec ((x8157
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8157
                                                                         k))))
                                                              (if x-cnd8156
                                                                (car l)
                                                                (letrec ((x8158
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8158))))))))
                                                g8153)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8159 (if x #f #t)))
                                                g8159)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8160 (append l1 l2)))
                                                g8160)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8161
                                                        (letrec ((x8163
                                                                  (list? l)))
                                                          (assert x8163)))
                                                       (g8162
                                                        (letrec ((x-cnd8164
                                                                  (null? l)))
                                                          (if x-cnd8164
                                                            #f
                                                            (letrec ((x-cnd8165
                                                                      (letrec ((x8166
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8166
                                                                         e))))
                                                              (if x-cnd8165
                                                                l
                                                                (letrec ((x8167
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8167))))))))
                                                g8162)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8168
                                                        (letrec ((x8169
                                                                  (letrec ((x8170
                                                                            (letrec ((x8171
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8171))))
                                                                    (cdr
                                                                     x8170))))
                                                          (car x8169))))
                                                g8168)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8172
                                                        (letrec ((x8174
                                                                  (list? l)))
                                                          (assert x8174)))
                                                       (g8173
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8175
                                                                              (letrec ((x-cnd8176
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8176
                                                                                  0
                                                                                  (letrec ((x8177
                                                                                            (letrec ((x8178
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8178))))
                                                                                    (+
                                                                                     1
                                                                                     x8177))))))
                                                                      g8175))))
                                                          (letrec ((g8179
                                                                    (rec l)))
                                                            g8179))))
                                                g8173)))
                                           (char-ci<=?
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
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8185
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8185))))
                                                g8182)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8186
                                                        (letrec ((x8187
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8187))))
                                                g8186)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8188
                                                        (letrec ((x8189
                                                                  (letrec ((x8190
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8190))))
                                                          (cdr x8189))))
                                                g8188)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8191
                                                        (letrec ((x8193
                                                                  (list? l)))
                                                          (assert x8193)))
                                                       (g8192
                                                        (letrec ((x-cnd8194
                                                                  (null? l)))
                                                          (if x-cnd8194
                                                            #f
                                                            (letrec ((x-cnd8195
                                                                      (letrec ((x8196
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8196
                                                                         k))))
                                                              (if x-cnd8195
                                                                (car l)
                                                                (letrec ((x8197
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8197))))))))
                                                g8192)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8198
                                                        (letrec ((x8199
                                                                  (car x)))
                                                          (car x8199))))
                                                g8198)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8200
                                                        (letrec ((x8203
                                                                  (char? c1)))
                                                          (assert x8203)))
                                                       (g8201
                                                        (letrec ((x8204
                                                                  (char? c2)))
                                                          (assert x8204)))
                                                       (g8202
                                                        (letrec ((x8205
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8205))))
                                                g8202)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8206
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8207
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8207))))
                                                g8206)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8208
                                                        (letrec ((x8211
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8211)))
                                                       (g8209
                                                        (letrec ((x8212
                                                                  (list? l)))
                                                          (assert x8212)))
                                                       (g8210
                                                        (letrec ((x-cnd8213
                                                                  (null? l)))
                                                          (if x-cnd8213
                                                            #t
                                                            (letrec ((x-cnd8214
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8214
                                                                (letrec ((g8215
                                                                          (letrec ((x8217
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8217)))
                                                                         (g8216
                                                                          (letrec ((x8218
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8218))))
                                                                  g8216)
                                                                '()))))))
                                                g8210)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8219
                                                        (letrec ((x8221
                                                                  (number? x)))
                                                          (assert x8221)))
                                                       (g8220
                                                        (letrec ((x-cnd8222
                                                                  (< x 0)))
                                                          (if x-cnd8222
                                                            (- 0 x)
                                                            x))))
                                                g8220)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8223
                                                        (letrec ((x8226
                                                                  (char? c1)))
                                                          (assert x8226)))
                                                       (g8224
                                                        (letrec ((x8227
                                                                  (char? c2)))
                                                          (assert x8227)))
                                                       (g8225
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8228
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8228))))
                                                g8225)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8229
                                                        (letrec ((x8230
                                                                  (letrec ((x8231
                                                                            (letrec ((x8232
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8232))))
                                                                    (cdr
                                                                     x8231))))
                                                          (car x8230))))
                                                g8229)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8233 #f)) g8233)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8234
                                                        (letrec ((x8236
                                                                  (letrec ((x8237
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8237)))
                                                                 (x8235
                                                                  (gcd m n)))
                                                          (/ x8236 x8235))))
                                                g8234)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8238
                                                        (letrec ((x8242
                                                                  (list? l)))
                                                          (assert x8242)))
                                                       (g8239
                                                        (letrec ((x8243
                                                                  (number?
                                                                   index)))
                                                          (assert x8243)))
                                                       (g8240
                                                        (letrec ((x8244
                                                                  (letrec ((x8245
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8245))))
                                                          (assert x8244)))
                                                       (g8241
                                                        (letrec ((x-cnd8246
                                                                  (= index 0)))
                                                          (if x-cnd8246
                                                            (car l)
                                                            (letrec ((x8248
                                                                      (cdr l))
                                                                     (x8247
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8248
                                                               x8247))))))
                                                g8241)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8249
                                                        (letrec ((x-cnd8250
                                                                  (= b 0)))
                                                          (if x-cnd8250
                                                            a
                                                            (letrec ((x8251
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8251))))))
                                                g8249)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8252
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8252)))
                                           (image?
                                            (lambda (image7656)
                                              (letrec ((g8253
                                                        (letrec ((x8254
                                                                  (car
                                                                   image7656)))
                                                          (eq? x8254 'image))))
                                                g8253)))
                                           (image/c
                                            (lambda (j7406 k7407 v7405)
                                              (letrec ((g8255
                                                        (cons image '())))
                                                g8255)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8256 (image)))
                                                g8256)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8257 (image)))
                                                g8257)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8258 (image)))
                                                g8258)))
                                           (min
                                            (lambda (x y)
                                              (letrec ((g8259
                                                        (letrec ((x-cnd8260
                                                                  (<= x y)))
                                                          (if x-cnd8260 x y))))
                                                g8259)))
                                           (max
                                            (lambda (x y)
                                              (letrec ((g8261
                                                        (letrec ((x-cnd8262
                                                                  (>= x y)))
                                                          (if x-cnd8262 x y))))
                                                g8261)))
                                           (sqr
                                            (lambda (x)
                                              (letrec ((g8263 (* x x)))
                                                g8263)))
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
                                            (lambda (j7410 k7411 f7412)
                                              (letrec ((g8264
                                                        (lambda (g7409)
                                                          (letrec ((g8265
                                                                    (letrec ((x7413
                                                                              ((lambda (g7417
                                                                                        g7418
                                                                                        g7419)
                                                                                 (letrec ((g8266
                                                                                           (letrec ((x-cnd8267
                                                                                                     ((lambda (v7416)
                                                                                                        (letrec ((g8268
                                                                                                                  (letrec ((x-cnd8269
                                                                                                                            (eq?
                                                                                                                             'x
                                                                                                                             v7416)))
                                                                                                                    (if x-cnd8269
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8270
                                                                                                                                (eq?
                                                                                                                                 'y
                                                                                                                                 v7416)))
                                                                                                                        (if x-cnd8270
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8271
                                                                                                                                    (eq?
                                                                                                                                     'posn
                                                                                                                                     v7416)))
                                                                                                                            (if x-cnd8271
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8272
                                                                                                                                        (eq?
                                                                                                                                         'move-toward/speed
                                                                                                                                         v7416)))
                                                                                                                                (if x-cnd8272
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8273
                                                                                                                                            (eq?
                                                                                                                                             'draw-on/image
                                                                                                                                             v7416)))
                                                                                                                                    (if x-cnd8273
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'dist
                                                                                                                                       v7416)))))))))))))
                                                                                                          g8268))
                                                                                                      g7419)))
                                                                                             (if x-cnd8267
                                                                                               g7419
                                                                                               (blame
                                                                                                g7417
                                                                                                '(lambda (v7416)
                                                                                                   (if (eq?
                                                                                                        'x
                                                                                                        v7416)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'y
                                                                                                          v7416)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'posn
                                                                                                            v7416)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'move-toward/speed
                                                                                                              v7416)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'draw-on/image
                                                                                                                v7416)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'dist
                                                                                                              v7416))))))))))))
                                                                                   g8266))
                                                                               j7410
                                                                               k7411
                                                                               g7409)))
                                                                      (letrec ((g8274
                                                                                (letrec ((x8276
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8277
                                                                                                       (letrec ((x-cnd8278
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'x)))
                                                                                                         (if x-cnd8278
                                                                                                           (letrec ((g8279
                                                                                                                     (lambda (j7420
                                                                                                                              k7421
                                                                                                                              f7422)
                                                                                                                       (letrec ((g8280
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8281
                                                                                                                                             (letrec ((x8282
                                                                                                                                                       (f7422)))
                                                                                                                                               (real?
                                                                                                                                                j7420
                                                                                                                                                k7421
                                                                                                                                                x8282))))
                                                                                                                                     g8281))))
                                                                                                                         g8280))))
                                                                                                             g8279)
                                                                                                           (letrec ((x-cnd8283
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'y)))
                                                                                                             (if x-cnd8283
                                                                                                               (letrec ((g8284
                                                                                                                         (lambda (j7423
                                                                                                                                  k7424
                                                                                                                                  f7425)
                                                                                                                           (letrec ((g8285
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8286
                                                                                                                                                 (letrec ((x8287
                                                                                                                                                           (f7425)))
                                                                                                                                                   (real?
                                                                                                                                                    j7423
                                                                                                                                                    k7424
                                                                                                                                                    x8287))))
                                                                                                                                         g8286))))
                                                                                                                             g8285))))
                                                                                                                 g8284)
                                                                                                               (letrec ((x-cnd8288
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'posn)))
                                                                                                                 (if x-cnd8288
                                                                                                                   (letrec ((g8289
                                                                                                                             (lambda (j7426
                                                                                                                                      k7427
                                                                                                                                      f7428)
                                                                                                                               (letrec ((g8290
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8291
                                                                                                                                                     (letrec ((x8292
                                                                                                                                                               (f7428)))
                                                                                                                                                       (posn/c
                                                                                                                                                        j7426
                                                                                                                                                        k7427
                                                                                                                                                        x8292))))
                                                                                                                                             g8291))))
                                                                                                                                 g8290))))
                                                                                                                     g8289)
                                                                                                                   (letrec ((x-cnd8293
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward/speed)))
                                                                                                                     (if x-cnd8293
                                                                                                                       (letrec ((g8294
                                                                                                                                 (lambda (j7431
                                                                                                                                          k7432
                                                                                                                                          f7433)
                                                                                                                                   (letrec ((g8295
                                                                                                                                             (lambda (g7429
                                                                                                                                                      g7430)
                                                                                                                                               (letrec ((g8296
                                                                                                                                                         (letrec ((x8297
                                                                                                                                                                   (letrec ((x8299
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7431
                                                                                                                                                                              k7432
                                                                                                                                                                              g7429))
                                                                                                                                                                            (x8298
                                                                                                                                                                             (real?
                                                                                                                                                                              j7431
                                                                                                                                                                              k7432
                                                                                                                                                                              g7430)))
                                                                                                                                                                     (f7433
                                                                                                                                                                      x8299
                                                                                                                                                                      x8298))))
                                                                                                                                                           (posn/c
                                                                                                                                                            j7431
                                                                                                                                                            k7432
                                                                                                                                                            x8297))))
                                                                                                                                                 g8296))))
                                                                                                                                     g8295))))
                                                                                                                         g8294)
                                                                                                                       (letrec ((x-cnd8300
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'draw-on/image)))
                                                                                                                         (if x-cnd8300
                                                                                                                           (letrec ((g8301
                                                                                                                                     (lambda (j7436
                                                                                                                                              k7437
                                                                                                                                              f7438)
                                                                                                                                       (letrec ((g8302
                                                                                                                                                 (lambda (g7434
                                                                                                                                                          g7435)
                                                                                                                                                   (letrec ((g8303
                                                                                                                                                             (letrec ((x8304
                                                                                                                                                                       (letrec ((x8306
                                                                                                                                                                                 (image/c
                                                                                                                                                                                  j7436
                                                                                                                                                                                  k7437
                                                                                                                                                                                  g7434))
                                                                                                                                                                                (x8305
                                                                                                                                                                                 (image/c
                                                                                                                                                                                  j7436
                                                                                                                                                                                  k7437
                                                                                                                                                                                  g7435)))
                                                                                                                                                                         (f7438
                                                                                                                                                                          x8306
                                                                                                                                                                          x8305))))
                                                                                                                                                               (image/c
                                                                                                                                                                j7436
                                                                                                                                                                k7437
                                                                                                                                                                x8304))))
                                                                                                                                                     g8303))))
                                                                                                                                         g8302))))
                                                                                                                             g8301)
                                                                                                                           (letrec ((x-cnd8307
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'dist)))
                                                                                                                             (if x-cnd8307
                                                                                                                               (letrec ((g8308
                                                                                                                                         (lambda (j7440
                                                                                                                                                  k7441
                                                                                                                                                  f7442)
                                                                                                                                           (letrec ((g8309
                                                                                                                                                     (lambda (g7439)
                                                                                                                                                       (letrec ((g8310
                                                                                                                                                                 (letrec ((x8311
                                                                                                                                                                           (letrec ((x8312
                                                                                                                                                                                     (posn/c
                                                                                                                                                                                      j7440
                                                                                                                                                                                      k7441
                                                                                                                                                                                      g7439)))
                                                                                                                                                                             (f7442
                                                                                                                                                                              x8312))))
                                                                                                                                                                   (real?
                                                                                                                                                                    j7440
                                                                                                                                                                    k7441
                                                                                                                                                                    x8311))))
                                                                                                                                                         g8310))))
                                                                                                                                             g8309))))
                                                                                                                                 g8308)
                                                                                                                               (letrec ((g8313
                                                                                                                                         "error"))
                                                                                                                                 g8313)))))))))))))))
                                                                                               g8277))
                                                                                           x7413))
                                                                                         (x8275
                                                                                          (f7412
                                                                                           x7413)))
                                                                                  (x8276
                                                                                   j7410
                                                                                   k7411
                                                                                   x8275))))
                                                                        g8274))))
                                                            g8265))))
                                                g8264)))
                                           (player/c
                                            (lambda (j7444 k7445 f7446)
                                              (letrec ((g8314
                                                        (lambda (g7443)
                                                          (letrec ((g8315
                                                                    (letrec ((x7447
                                                                              ((lambda (g7451
                                                                                        g7452
                                                                                        g7453)
                                                                                 (letrec ((g8316
                                                                                           (letrec ((x-cnd8317
                                                                                                     ((lambda (v7450)
                                                                                                        (letrec ((g8318
                                                                                                                  (letrec ((x-cnd8319
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7450)))
                                                                                                                    (if x-cnd8319
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8320
                                                                                                                                (eq?
                                                                                                                                 'move-toward
                                                                                                                                 v7450)))
                                                                                                                        (if x-cnd8320
                                                                                                                          #t
                                                                                                                          (eq?
                                                                                                                           'draw-on
                                                                                                                           v7450)))))))
                                                                                                          g8318))
                                                                                                      g7453)))
                                                                                             (if x-cnd8317
                                                                                               g7453
                                                                                               (blame
                                                                                                g7451
                                                                                                '(lambda (v7450)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7450)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'move-toward
                                                                                                          v7450)
                                                                                                       #t
                                                                                                       (eq?
                                                                                                        'draw-on
                                                                                                        v7450)))))))))
                                                                                   g8316))
                                                                               j7444
                                                                               k7445
                                                                               g7443)))
                                                                      (letrec ((g8321
                                                                                (letrec ((x8323
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8324
                                                                                                       (letrec ((x-cnd8325
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8325
                                                                                                           (letrec ((g8326
                                                                                                                     (lambda (j7454
                                                                                                                              k7455
                                                                                                                              f7456)
                                                                                                                       (letrec ((g8327
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8328
                                                                                                                                             (letrec ((x8329
                                                                                                                                                       (f7456)))
                                                                                                                                               (posn/c
                                                                                                                                                j7454
                                                                                                                                                k7455
                                                                                                                                                x8329))))
                                                                                                                                     g8328))))
                                                                                                                         g8327))))
                                                                                                             g8326)
                                                                                                           (letrec ((x-cnd8330
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'move-toward)))
                                                                                                             (if x-cnd8330
                                                                                                               (letrec ((g8331
                                                                                                                         (lambda (j7458
                                                                                                                                  k7459
                                                                                                                                  f7460)
                                                                                                                           (letrec ((g8332
                                                                                                                                     (lambda (g7457)
                                                                                                                                       (letrec ((g8333
                                                                                                                                                 (letrec ((x8334
                                                                                                                                                           (letrec ((x8335
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7458
                                                                                                                                                                      k7459
                                                                                                                                                                      g7457)))
                                                                                                                                                             (f7460
                                                                                                                                                              x8335))))
                                                                                                                                                   (player/c
                                                                                                                                                    j7458
                                                                                                                                                    k7459
                                                                                                                                                    x8334))))
                                                                                                                                         g8333))))
                                                                                                                             g8332))))
                                                                                                                 g8331)
                                                                                                               (letrec ((x-cnd8336
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8336
                                                                                                                   (letrec ((g8337
                                                                                                                             (lambda (j7462
                                                                                                                                      k7463
                                                                                                                                      f7464)
                                                                                                                               (letrec ((g8338
                                                                                                                                         (lambda (g7461)
                                                                                                                                           (letrec ((g8339
                                                                                                                                                     (letrec ((x8340
                                                                                                                                                               (letrec ((x8341
                                                                                                                                                                         (image/c
                                                                                                                                                                          j7462
                                                                                                                                                                          k7463
                                                                                                                                                                          g7461)))
                                                                                                                                                                 (f7464
                                                                                                                                                                  x8341))))
                                                                                                                                                       (image/c
                                                                                                                                                        j7462
                                                                                                                                                        k7463
                                                                                                                                                        x8340))))
                                                                                                                                             g8339))))
                                                                                                                                 g8338))))
                                                                                                                     g8337)
                                                                                                                   (letrec ((g8342
                                                                                                                             "error"))
                                                                                                                     g8342)))))))))
                                                                                               g8324))
                                                                                           x7447))
                                                                                         (x8322
                                                                                          (f7446
                                                                                           x7447)))
                                                                                  (x8323
                                                                                   j7444
                                                                                   k7445
                                                                                   x8322))))
                                                                        g8321))))
                                                            g8315))))
                                                g8314)))
                                           (zombie/c
                                            (lambda (j7466 k7467 f7468)
                                              (letrec ((g8343
                                                        (lambda (g7465)
                                                          (letrec ((g8344
                                                                    (letrec ((x7469
                                                                              ((lambda (g7473
                                                                                        g7474
                                                                                        g7475)
                                                                                 (letrec ((g8345
                                                                                           (letrec ((x-cnd8346
                                                                                                     ((lambda (v7472)
                                                                                                        (letrec ((g8347
                                                                                                                  (letrec ((x-cnd8348
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7472)))
                                                                                                                    (if x-cnd8348
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8349
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7472)))
                                                                                                                        (if x-cnd8349
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8350
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7472)))
                                                                                                                            (if x-cnd8350
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'move-toward
                                                                                                                               v7472)))))))))
                                                                                                          g8347))
                                                                                                      g7475)))
                                                                                             (if x-cnd8346
                                                                                               g7475
                                                                                               (blame
                                                                                                g7473
                                                                                                '(lambda (v7472)
                                                                                                   (if (eq?
                                                                                                        'posn
                                                                                                        v7472)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7472)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7472)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'move-toward
                                                                                                          v7472))))))))))
                                                                                   g8345))
                                                                               j7466
                                                                               k7467
                                                                               g7465)))
                                                                      (letrec ((g8351
                                                                                (letrec ((x8353
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8354
                                                                                                       (letrec ((x-cnd8355
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8355
                                                                                                           (letrec ((g8356
                                                                                                                     (lambda (j7476
                                                                                                                              k7477
                                                                                                                              f7478)
                                                                                                                       (letrec ((g8357
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8358
                                                                                                                                             (letrec ((x8359
                                                                                                                                                       (f7478)))
                                                                                                                                               (posn/c
                                                                                                                                                j7476
                                                                                                                                                k7477
                                                                                                                                                x8359))))
                                                                                                                                     g8358))))
                                                                                                                         g8357))))
                                                                                                             g8356)
                                                                                                           (letrec ((x-cnd8360
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8360
                                                                                                               (letrec ((g8361
                                                                                                                         (lambda (j7481
                                                                                                                                  k7482
                                                                                                                                  f7483)
                                                                                                                           (letrec ((g8362
                                                                                                                                     (lambda (g7479
                                                                                                                                              g7480)
                                                                                                                                       (letrec ((g8363
                                                                                                                                                 (letrec ((x8364
                                                                                                                                                           (letrec ((x8366
                                                                                                                                                                     (string?
                                                                                                                                                                      j7481
                                                                                                                                                                      k7482
                                                                                                                                                                      g7479))
                                                                                                                                                                    (x8365
                                                                                                                                                                     (image/c
                                                                                                                                                                      j7481
                                                                                                                                                                      k7482
                                                                                                                                                                      g7480)))
                                                                                                                                                             (f7483
                                                                                                                                                              x8366
                                                                                                                                                              x8365))))
                                                                                                                                                   (image/c
                                                                                                                                                    j7481
                                                                                                                                                    k7482
                                                                                                                                                    x8364))))
                                                                                                                                         g8363))))
                                                                                                                             g8362))))
                                                                                                                 g8361)
                                                                                                               (letrec ((x-cnd8367
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8367
                                                                                                                   (letrec ((g8368
                                                                                                                             (lambda (j7485
                                                                                                                                      k7486
                                                                                                                                      f7487)
                                                                                                                               (letrec ((g8369
                                                                                                                                         (lambda (g7484)
                                                                                                                                           (letrec ((g8370
                                                                                                                                                     (letrec ((x8371
                                                                                                                                                               (letrec ((x8372
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7485
                                                                                                                                                                          k7486
                                                                                                                                                                          g7484)))
                                                                                                                                                                 (f7487
                                                                                                                                                                  x8372))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7485
                                                                                                                                                        k7486
                                                                                                                                                        x8371))))
                                                                                                                                             g8370))))
                                                                                                                                 g8369))))
                                                                                                                     g8368)
                                                                                                                   (letrec ((x-cnd8373
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward)))
                                                                                                                     (if x-cnd8373
                                                                                                                       (letrec ((g8374
                                                                                                                                 (lambda (j7489
                                                                                                                                          k7490
                                                                                                                                          f7491)
                                                                                                                                   (letrec ((g8375
                                                                                                                                             (lambda (g7488)
                                                                                                                                               (letrec ((g8376
                                                                                                                                                         (letrec ((x8377
                                                                                                                                                                   (letrec ((x8378
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7489
                                                                                                                                                                              k7490
                                                                                                                                                                              g7488)))
                                                                                                                                                                     (f7491
                                                                                                                                                                      x8378))))
                                                                                                                                                           (zombie/c
                                                                                                                                                            j7489
                                                                                                                                                            k7490
                                                                                                                                                            x8377))))
                                                                                                                                                 g8376))))
                                                                                                                                     g8375))))
                                                                                                                         g8374)
                                                                                                                       (letrec ((g8379
                                                                                                                                 "error"))
                                                                                                                         g8379)))))))))))
                                                                                               g8354))
                                                                                           x7469))
                                                                                         (x8352
                                                                                          (f7468
                                                                                           x7469)))
                                                                                  (x8353
                                                                                   j7466
                                                                                   k7467
                                                                                   x8352))))
                                                                        g8351))))
                                                            g8344))))
                                                g8343)))
                                           (horde/c
                                            (lambda (j7493 k7494 f7495)
                                              (letrec ((g8380
                                                        (lambda (g7492)
                                                          (letrec ((g8381
                                                                    (letrec ((x7496
                                                                              ((lambda (g7500
                                                                                        g7501
                                                                                        g7502)
                                                                                 (letrec ((g8382
                                                                                           (letrec ((x-cnd8383
                                                                                                     ((lambda (v7499)
                                                                                                        (letrec ((g8384
                                                                                                                  (letrec ((x-cnd8385
                                                                                                                            (eq?
                                                                                                                             'dead
                                                                                                                             v7499)))
                                                                                                                    (if x-cnd8385
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8386
                                                                                                                                (eq?
                                                                                                                                 'undead
                                                                                                                                 v7499)))
                                                                                                                        (if x-cnd8386
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8387
                                                                                                                                    (eq?
                                                                                                                                     'draw-on
                                                                                                                                     v7499)))
                                                                                                                            (if x-cnd8387
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8388
                                                                                                                                        (eq?
                                                                                                                                         'touching?
                                                                                                                                         v7499)))
                                                                                                                                (if x-cnd8388
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8389
                                                                                                                                            (eq?
                                                                                                                                             'move-toward
                                                                                                                                             v7499)))
                                                                                                                                    (if x-cnd8389
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'eat-brains
                                                                                                                                       v7499)))))))))))))
                                                                                                          g8384))
                                                                                                      g7502)))
                                                                                             (if x-cnd8383
                                                                                               g7502
                                                                                               (blame
                                                                                                g7500
                                                                                                '(lambda (v7499)
                                                                                                   (if (eq?
                                                                                                        'dead
                                                                                                        v7499)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'undead
                                                                                                          v7499)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'draw-on
                                                                                                            v7499)
                                                                                                         #t
                                                                                                         (if (eq?
                                                                                                              'touching?
                                                                                                              v7499)
                                                                                                           #t
                                                                                                           (if (eq?
                                                                                                                'move-toward
                                                                                                                v7499)
                                                                                                             #t
                                                                                                             (eq?
                                                                                                              'eat-brains
                                                                                                              v7499))))))))))))
                                                                                   g8382))
                                                                               j7493
                                                                               k7494
                                                                               g7492)))
                                                                      (letrec ((g8390
                                                                                (letrec ((x8392
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8393
                                                                                                       (letrec ((x-cnd8394
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'dead)))
                                                                                                         (if x-cnd8394
                                                                                                           (letrec ((g8395
                                                                                                                     (lambda (j7503
                                                                                                                              k7504
                                                                                                                              f7505)
                                                                                                                       (letrec ((g8396
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8397
                                                                                                                                             (letrec ((x8398
                                                                                                                                                       (f7505)))
                                                                                                                                               (zombies/c
                                                                                                                                                j7503
                                                                                                                                                k7504
                                                                                                                                                x8398))))
                                                                                                                                     g8397))))
                                                                                                                         g8396))))
                                                                                                             g8395)
                                                                                                           (letrec ((x-cnd8399
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'undead)))
                                                                                                             (if x-cnd8399
                                                                                                               (letrec ((g8400
                                                                                                                         (lambda (j7506
                                                                                                                                  k7507
                                                                                                                                  f7508)
                                                                                                                           (letrec ((g8401
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8402
                                                                                                                                                 (letrec ((x8403
                                                                                                                                                           (f7508)))
                                                                                                                                                   (zombies/c
                                                                                                                                                    j7506
                                                                                                                                                    k7507
                                                                                                                                                    x8403))))
                                                                                                                                         g8402))))
                                                                                                                             g8401))))
                                                                                                                 g8400)
                                                                                                               (letrec ((x-cnd8404
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8404
                                                                                                                   (letrec ((g8405
                                                                                                                             (lambda (j7510
                                                                                                                                      k7511
                                                                                                                                      f7512)
                                                                                                                               (letrec ((g8406
                                                                                                                                         (lambda (g7509)
                                                                                                                                           (letrec ((g8407
                                                                                                                                                     (letrec ((x8408
                                                                                                                                                               (letrec ((x8409
                                                                                                                                                                         (image/c
                                                                                                                                                                          j7510
                                                                                                                                                                          k7511
                                                                                                                                                                          g7509)))
                                                                                                                                                                 (f7512
                                                                                                                                                                  x8409))))
                                                                                                                                                       (image/c
                                                                                                                                                        j7510
                                                                                                                                                        k7511
                                                                                                                                                        x8408))))
                                                                                                                                             g8407))))
                                                                                                                                 g8406))))
                                                                                                                     g8405)
                                                                                                                   (letrec ((x-cnd8410
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'touching?)))
                                                                                                                     (if x-cnd8410
                                                                                                                       (letrec ((g8411
                                                                                                                                 (lambda (j7514
                                                                                                                                          k7515
                                                                                                                                          f7516)
                                                                                                                                   (letrec ((g8412
                                                                                                                                             (lambda (g7513)
                                                                                                                                               (letrec ((g8413
                                                                                                                                                         (letrec ((x8414
                                                                                                                                                                   (letrec ((x8415
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7514
                                                                                                                                                                              k7515
                                                                                                                                                                              g7513)))
                                                                                                                                                                     (f7516
                                                                                                                                                                      x8415))))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7514
                                                                                                                                                            k7515
                                                                                                                                                            x8414))))
                                                                                                                                                 g8413))))
                                                                                                                                     g8412))))
                                                                                                                         g8411)
                                                                                                                       (letrec ((x-cnd8416
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'move-toward)))
                                                                                                                         (if x-cnd8416
                                                                                                                           (letrec ((g8417
                                                                                                                                     (lambda (j7518
                                                                                                                                              k7519
                                                                                                                                              f7520)
                                                                                                                                       (letrec ((g8418
                                                                                                                                                 (lambda (g7517)
                                                                                                                                                   (letrec ((g8419
                                                                                                                                                             (letrec ((x8420
                                                                                                                                                                       (letrec ((x8421
                                                                                                                                                                                 (posn/c
                                                                                                                                                                                  j7518
                                                                                                                                                                                  k7519
                                                                                                                                                                                  g7517)))
                                                                                                                                                                         (f7520
                                                                                                                                                                          x8421))))
                                                                                                                                                               (horde/c
                                                                                                                                                                j7518
                                                                                                                                                                k7519
                                                                                                                                                                x8420))))
                                                                                                                                                     g8419))))
                                                                                                                                         g8418))))
                                                                                                                             g8417)
                                                                                                                           (letrec ((x-cnd8422
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'eat-brains)))
                                                                                                                             (if x-cnd8422
                                                                                                                               (letrec ((g8423
                                                                                                                                         (lambda (j7521
                                                                                                                                                  k7522
                                                                                                                                                  f7523)
                                                                                                                                           (letrec ((g8424
                                                                                                                                                     (lambda ()
                                                                                                                                                       (letrec ((g8425
                                                                                                                                                                 (letrec ((x8426
                                                                                                                                                                           (f7523)))
                                                                                                                                                                   (horde/c
                                                                                                                                                                    j7521
                                                                                                                                                                    k7522
                                                                                                                                                                    x8426))))
                                                                                                                                                         g8425))))
                                                                                                                                             g8424))))
                                                                                                                                 g8423)
                                                                                                                               (letrec ((g8427
                                                                                                                                         "error"))
                                                                                                                                 g8427)))))))))))))))
                                                                                               g8393))
                                                                                           x7496))
                                                                                         (x8391
                                                                                          (f7495
                                                                                           x7496)))
                                                                                  (x8392
                                                                                   j7493
                                                                                   k7494
                                                                                   x8391))))
                                                                        g8390))))
                                                            g8381))))
                                                g8380)))
                                           (zombies/c
                                            (lambda (j7525 k7526 f7527)
                                              (letrec ((g8428
                                                        (lambda (g7524)
                                                          (letrec ((g8429
                                                                    (letrec ((x7528
                                                                              ((lambda (g7532
                                                                                        g7533
                                                                                        g7534)
                                                                                 (letrec ((g8430
                                                                                           (letrec ((x-cnd8431
                                                                                                     ((lambda (v7531)
                                                                                                        (letrec ((g8432
                                                                                                                  (letrec ((x-cnd8433
                                                                                                                            (eq?
                                                                                                                             'move-toward
                                                                                                                             v7531)))
                                                                                                                    (if x-cnd8433
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8434
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7531)))
                                                                                                                        (if x-cnd8434
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8435
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7531)))
                                                                                                                            (if x-cnd8435
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'kill-all
                                                                                                                               v7531)))))))))
                                                                                                          g8432))
                                                                                                      g7534)))
                                                                                             (if x-cnd8431
                                                                                               g7534
                                                                                               (blame
                                                                                                g7532
                                                                                                '(lambda (v7531)
                                                                                                   (if (eq?
                                                                                                        'move-toward
                                                                                                        v7531)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'draw-on/color
                                                                                                          v7531)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'touching?
                                                                                                            v7531)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'kill-all
                                                                                                          v7531))))))))))
                                                                                   g8430))
                                                                               j7525
                                                                               k7526
                                                                               g7524)))
                                                                      (letrec ((g8436
                                                                                (letrec ((x8438
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8439
                                                                                                       (letrec ((x-cnd8440
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'move-toward)))
                                                                                                         (if x-cnd8440
                                                                                                           (letrec ((g8441
                                                                                                                     (lambda (j7536
                                                                                                                              k7537
                                                                                                                              f7538)
                                                                                                                       (letrec ((g8442
                                                                                                                                 (lambda (g7535)
                                                                                                                                   (letrec ((g8443
                                                                                                                                             (letrec ((x8444
                                                                                                                                                       (letrec ((x8445
                                                                                                                                                                 (posn/c
                                                                                                                                                                  j7536
                                                                                                                                                                  k7537
                                                                                                                                                                  g7535)))
                                                                                                                                                         (f7538
                                                                                                                                                          x8445))))
                                                                                                                                               (zombies/c
                                                                                                                                                j7536
                                                                                                                                                k7537
                                                                                                                                                x8444))))
                                                                                                                                     g8443))))
                                                                                                                         g8442))))
                                                                                                             g8441)
                                                                                                           (letrec ((x-cnd8446
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8446
                                                                                                               (letrec ((g8447
                                                                                                                         (lambda (j7541
                                                                                                                                  k7542
                                                                                                                                  f7543)
                                                                                                                           (letrec ((g8448
                                                                                                                                     (lambda (g7539
                                                                                                                                              g7540)
                                                                                                                                       (letrec ((g8449
                                                                                                                                                 (letrec ((x8450
                                                                                                                                                           (letrec ((x8452
                                                                                                                                                                     (string?
                                                                                                                                                                      j7541
                                                                                                                                                                      k7542
                                                                                                                                                                      g7539))
                                                                                                                                                                    (x8451
                                                                                                                                                                     (image/c
                                                                                                                                                                      j7541
                                                                                                                                                                      k7542
                                                                                                                                                                      g7540)))
                                                                                                                                                             (f7543
                                                                                                                                                              x8452
                                                                                                                                                              x8451))))
                                                                                                                                                   (image/c
                                                                                                                                                    j7541
                                                                                                                                                    k7542
                                                                                                                                                    x8450))))
                                                                                                                                         g8449))))
                                                                                                                             g8448))))
                                                                                                                 g8447)
                                                                                                               (letrec ((x-cnd8453
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8453
                                                                                                                   (letrec ((g8454
                                                                                                                             (lambda (j7545
                                                                                                                                      k7546
                                                                                                                                      f7547)
                                                                                                                               (letrec ((g8455
                                                                                                                                         (lambda (g7544)
                                                                                                                                           (letrec ((g8456
                                                                                                                                                     (letrec ((x8457
                                                                                                                                                               (letrec ((x8458
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7545
                                                                                                                                                                          k7546
                                                                                                                                                                          g7544)))
                                                                                                                                                                 (f7547
                                                                                                                                                                  x8458))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7545
                                                                                                                                                        k7546
                                                                                                                                                        x8457))))
                                                                                                                                             g8456))))
                                                                                                                                 g8455))))
                                                                                                                     g8454)
                                                                                                                   (letrec ((x-cnd8459
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'kill-all)))
                                                                                                                     (if x-cnd8459
                                                                                                                       (letrec ((g8460
                                                                                                                                 (lambda (j7549
                                                                                                                                          k7550
                                                                                                                                          f7551)
                                                                                                                                   (letrec ((g8461
                                                                                                                                             (lambda (g7548)
                                                                                                                                               (letrec ((g8462
                                                                                                                                                         (letrec ((x8463
                                                                                                                                                                   (letrec ((x8464
                                                                                                                                                                             (zombies/c
                                                                                                                                                                              j7549
                                                                                                                                                                              k7550
                                                                                                                                                                              g7548)))
                                                                                                                                                                     (f7551
                                                                                                                                                                      x8464))))
                                                                                                                                                           (horde/c
                                                                                                                                                            j7549
                                                                                                                                                            k7550
                                                                                                                                                            x8463))))
                                                                                                                                                 g8462))))
                                                                                                                                     g8461))))
                                                                                                                         g8460)
                                                                                                                       (letrec ((g8465
                                                                                                                                 "error"))
                                                                                                                         g8465)))))))))))
                                                                                               g8439))
                                                                                           x7528))
                                                                                         (x8437
                                                                                          (f7527
                                                                                           x7528)))
                                                                                  (x8438
                                                                                   j7525
                                                                                   k7526
                                                                                   x8437))))
                                                                        g8436))))
                                                            g8429))))
                                                g8428)))
                                           (world/c
                                            (lambda (j7553 k7554 f7555)
                                              (letrec ((g8466
                                                        (lambda (g7552)
                                                          (letrec ((g8467
                                                                    (letrec ((x7556
                                                                              ((lambda (g7560
                                                                                        g7561
                                                                                        g7562)
                                                                                 (letrec ((g8468
                                                                                           (letrec ((x-cnd8469
                                                                                                     ((lambda (v7559)
                                                                                                        (letrec ((g8470
                                                                                                                  (letrec ((x-cnd8471
                                                                                                                            (eq?
                                                                                                                             'on-mouse
                                                                                                                             v7559)))
                                                                                                                    (if x-cnd8471
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8472
                                                                                                                                (eq?
                                                                                                                                 'on-tick
                                                                                                                                 v7559)))
                                                                                                                        (if x-cnd8472
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8473
                                                                                                                                    (eq?
                                                                                                                                     'to-draw
                                                                                                                                     v7559)))
                                                                                                                            (if x-cnd8473
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'stop-when
                                                                                                                               v7559)))))))))
                                                                                                          g8470))
                                                                                                      g7562)))
                                                                                             (if x-cnd8469
                                                                                               g7562
                                                                                               (blame
                                                                                                g7560
                                                                                                '(lambda (v7559)
                                                                                                   (if (eq?
                                                                                                        'on-mouse
                                                                                                        v7559)
                                                                                                     #t
                                                                                                     (if (eq?
                                                                                                          'on-tick
                                                                                                          v7559)
                                                                                                       #t
                                                                                                       (if (eq?
                                                                                                            'to-draw
                                                                                                            v7559)
                                                                                                         #t
                                                                                                         (eq?
                                                                                                          'stop-when
                                                                                                          v7559))))))))))
                                                                                   g8468))
                                                                               j7553
                                                                               k7554
                                                                               g7552)))
                                                                      (letrec ((g8474
                                                                                (letrec ((x8476
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8477
                                                                                                       (letrec ((x-cnd8478
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'on-mouse)))
                                                                                                         (if x-cnd8478
                                                                                                           (letrec ((g8479
                                                                                                                     (lambda (j7566
                                                                                                                              k7567
                                                                                                                              f7568)
                                                                                                                       (letrec ((g8480
                                                                                                                                 (lambda (g7563
                                                                                                                                          g7564
                                                                                                                                          g7565)
                                                                                                                                   (letrec ((g8481
                                                                                                                                             (letrec ((x8482
                                                                                                                                                       (letrec ((x8485
                                                                                                                                                                 (real?
                                                                                                                                                                  j7566
                                                                                                                                                                  k7567
                                                                                                                                                                  g7563))
                                                                                                                                                                (x8484
                                                                                                                                                                 (real?
                                                                                                                                                                  j7566
                                                                                                                                                                  k7567
                                                                                                                                                                  g7564))
                                                                                                                                                                (x8483
                                                                                                                                                                 (string?
                                                                                                                                                                  j7566
                                                                                                                                                                  k7567
                                                                                                                                                                  g7565)))
                                                                                                                                                         (f7568
                                                                                                                                                          x8485
                                                                                                                                                          x8484
                                                                                                                                                          x8483))))
                                                                                                                                               (world/c
                                                                                                                                                j7566
                                                                                                                                                k7567
                                                                                                                                                x8482))))
                                                                                                                                     g8481))))
                                                                                                                         g8480))))
                                                                                                             g8479)
                                                                                                           (letrec ((x-cnd8486
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'on-tick)))
                                                                                                             (if x-cnd8486
                                                                                                               (letrec ((g8487
                                                                                                                         (lambda (j7569
                                                                                                                                  k7570
                                                                                                                                  f7571)
                                                                                                                           (letrec ((g8488
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8489
                                                                                                                                                 (letrec ((x8490
                                                                                                                                                           (f7571)))
                                                                                                                                                   (world/c
                                                                                                                                                    j7569
                                                                                                                                                    k7570
                                                                                                                                                    x8490))))
                                                                                                                                         g8489))))
                                                                                                                             g8488))))
                                                                                                                 g8487)
                                                                                                               (letrec ((x-cnd8491
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'to-draw)))
                                                                                                                 (if x-cnd8491
                                                                                                                   (letrec ((g8492
                                                                                                                             (lambda (j7572
                                                                                                                                      k7573
                                                                                                                                      f7574)
                                                                                                                               (letrec ((g8493
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8494
                                                                                                                                                     (letrec ((x8495
                                                                                                                                                               (f7574)))
                                                                                                                                                       (image/c
                                                                                                                                                        j7572
                                                                                                                                                        k7573
                                                                                                                                                        x8495))))
                                                                                                                                             g8494))))
                                                                                                                                 g8493))))
                                                                                                                     g8492)
                                                                                                                   (letrec ((x-cnd8496
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'stop-when)))
                                                                                                                     (if x-cnd8496
                                                                                                                       (letrec ((g8497
                                                                                                                                 (lambda (j7575
                                                                                                                                          k7576
                                                                                                                                          f7577)
                                                                                                                                   (letrec ((g8498
                                                                                                                                             (lambda ()
                                                                                                                                               (letrec ((g8499
                                                                                                                                                         (letrec ((x8500
                                                                                                                                                                   (f7577)))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7575
                                                                                                                                                            k7576
                                                                                                                                                            x8500))))
                                                                                                                                                 g8499))))
                                                                                                                                     g8498))))
                                                                                                                         g8497)
                                                                                                                       (letrec ((g8501
                                                                                                                                 "error"))
                                                                                                                         g8501)))))))))))
                                                                                               g8477))
                                                                                           x7556))
                                                                                         (x8475
                                                                                          (f7555
                                                                                           x7556)))
                                                                                  (x8476
                                                                                   j7553
                                                                                   k7554
                                                                                   x8475))))
                                                                        g8474))))
                                                            g8467))))
                                                g8466)))
                                           (new-world
                                            (lambda (player mouse zombies)
                                              (letrec ((g8502
                                                        (lambda (msg)
                                                          (letrec ((g8503
                                                                    (letrec ((x-cnd8504
                                                                              (equal?
                                                                               msg
                                                                               'on-mouse)))
                                                                      (if x-cnd8504
                                                                        (letrec ((g8505
                                                                                  (lambda (x
                                                                                           y
                                                                                           me)
                                                                                    (letrec ((g8506
                                                                                              (letrec ((x8507
                                                                                                        (letrec ((x-cnd8508
                                                                                                                  (equal?
                                                                                                                   me
                                                                                                                   "leave")))
                                                                                                          (if x-cnd8508
                                                                                                            (letrec ((x8509
                                                                                                                      (player
                                                                                                                       'posn)))
                                                                                                              (x8509))
                                                                                                            (new-posn
                                                                                                             x
                                                                                                             y)))))
                                                                                                (new-world
                                                                                                 player
                                                                                                 x8507
                                                                                                 zombies))))
                                                                                      g8506))))
                                                                          g8505)
                                                                        (letrec ((x-cnd8510
                                                                                  (equal?
                                                                                   msg
                                                                                   'on-tick)))
                                                                          (if x-cnd8510
                                                                            (letrec ((g8511
                                                                                      (lambda ()
                                                                                        (letrec ((g8512
                                                                                                  (letrec ((x8519
                                                                                                            (letrec ((x8520
                                                                                                                      (player
                                                                                                                       'move-toward)))
                                                                                                              (x8520
                                                                                                               mouse)))
                                                                                                           (x8513
                                                                                                            (letrec ((x8516
                                                                                                                      (letrec ((x8517
                                                                                                                                (letrec ((x8518
                                                                                                                                          (zombies
                                                                                                                                           'eat-brains)))
                                                                                                                                  (x8518))))
                                                                                                                        (x8517
                                                                                                                         'move-toward)))
                                                                                                                     (x8514
                                                                                                                      (letrec ((x8515
                                                                                                                                (player
                                                                                                                                 'posn)))
                                                                                                                        (x8515))))
                                                                                                              (x8516
                                                                                                               x8514))))
                                                                                                    (new-world
                                                                                                     x8519
                                                                                                     mouse
                                                                                                     x8513))))
                                                                                          g8512))))
                                                                              g8511)
                                                                            (letrec ((x-cnd8521
                                                                                      (equal?
                                                                                       msg
                                                                                       'to-draw)))
                                                                              (if x-cnd8521
                                                                                (letrec ((g8522
                                                                                          (lambda ()
                                                                                            (letrec ((g8523
                                                                                                      (letrec ((x8526
                                                                                                                (player
                                                                                                                 'draw-on))
                                                                                                               (x8524
                                                                                                                (letrec ((x8525
                                                                                                                          (zombies
                                                                                                                           'draw-on)))
                                                                                                                  (x8525
                                                                                                                   MT-SCENE))))
                                                                                                        (x8526
                                                                                                         x8524))))
                                                                                              g8523))))
                                                                                  g8522)
                                                                                (letrec ((x-cnd8527
                                                                                          (equal?
                                                                                           msg
                                                                                           'stop-when)))
                                                                                  (if x-cnd8527
                                                                                    (letrec ((g8528
                                                                                              (lambda ()
                                                                                                (letrec ((g8529
                                                                                                          (letrec ((x8532
                                                                                                                    (zombies
                                                                                                                     'touching?))
                                                                                                                   (x8530
                                                                                                                    (letrec ((x8531
                                                                                                                              (player
                                                                                                                               'posn)))
                                                                                                                      (x8531))))
                                                                                                            (x8532
                                                                                                             x8530))))
                                                                                                  g8529))))
                                                                                      g8528)
                                                                                    (letrec ((g8533
                                                                                              "unknown message"))
                                                                                      g8533)))))))))))
                                                            g8503))))
                                                g8502)))
                                           (new-player
                                            (lambda (p)
                                              (letrec ((g8534
                                                        (lambda (msg)
                                                          (letrec ((g8535
                                                                    (letrec ((x-cnd8536
                                                                              (equal?
                                                                               msg
                                                                               'posn)))
                                                                      (if x-cnd8536
                                                                        (letrec ((g8537
                                                                                  (lambda ()
                                                                                    (letrec ((g8538
                                                                                              p))
                                                                                      g8538))))
                                                                          g8537)
                                                                        (letrec ((x-cnd8539
                                                                                  (equal?
                                                                                   msg
                                                                                   'move-toward)))
                                                                          (if x-cnd8539
                                                                            (letrec ((g8540
                                                                                      (lambda (q)
                                                                                        (letrec ((g8541
                                                                                                  (letrec ((x8542
                                                                                                            (letrec ((x8543
                                                                                                                      (p
                                                                                                                       'move-toward/speed)))
                                                                                                              (x8543
                                                                                                               q
                                                                                                               PLAYER-SPEED))))
                                                                                                    (new-player
                                                                                                     x8542))))
                                                                                          g8541))))
                                                                              g8540)
                                                                            (letrec ((x-cnd8544
                                                                                      (equal?
                                                                                       msg
                                                                                       'draw-on)))
                                                                              (if x-cnd8544
                                                                                (letrec ((g8545
                                                                                          (lambda (scn)
                                                                                            (letrec ((g8546
                                                                                                      (letrec ((x8547
                                                                                                                (p
                                                                                                                 'draw-on/image)))
                                                                                                        (x8547
                                                                                                         PLAYER-IMG
                                                                                                         scn))))
                                                                                              g8546))))
                                                                                  g8545)
                                                                                (letrec ((g8548
                                                                                          "unknown message"))
                                                                                  g8548)))))))))
                                                            g8535))))
                                                g8534)))
                                           (new-horde
                                            (lambda (undead dead)
                                              (letrec ((g8549
                                                        (lambda (msg)
                                                          (letrec ((g8550
                                                                    (letrec ((x-cnd8551
                                                                              (equal?
                                                                               msg
                                                                               'dead)))
                                                                      (if x-cnd8551
                                                                        (letrec ((g8552
                                                                                  (lambda ()
                                                                                    (letrec ((g8553
                                                                                              dead))
                                                                                      g8553))))
                                                                          g8552)
                                                                        (letrec ((x-cnd8554
                                                                                  (equal?
                                                                                   msg
                                                                                   'undead)))
                                                                          (if x-cnd8554
                                                                            (letrec ((g8555
                                                                                      (lambda ()
                                                                                        (letrec ((g8556
                                                                                                  undead))
                                                                                          g8556))))
                                                                              g8555)
                                                                            (letrec ((x-cnd8557
                                                                                      (equal?
                                                                                       msg
                                                                                       'draw-on)))
                                                                              (if x-cnd8557
                                                                                (letrec ((g8558
                                                                                          (lambda (scn)
                                                                                            (letrec ((g8559
                                                                                                      (letrec ((x8562
                                                                                                                (undead
                                                                                                                 'draw-on/color))
                                                                                                               (x8560
                                                                                                                (letrec ((x8561
                                                                                                                          (dead
                                                                                                                           'draw-on/color)))
                                                                                                                  (x8561
                                                                                                                   "black"
                                                                                                                   scn))))
                                                                                                        (x8562
                                                                                                         "yellow"
                                                                                                         x8560))))
                                                                                              g8559))))
                                                                                  g8558)
                                                                                (letrec ((x-cnd8563
                                                                                          (equal?
                                                                                           msg
                                                                                           'touching?)))
                                                                                  (if x-cnd8563
                                                                                    (letrec ((g8564
                                                                                              (lambda (p)
                                                                                                (letrec ((g8565
                                                                                                          (letrec ((val7263
                                                                                                                    (letrec ((x8566
                                                                                                                              (undead
                                                                                                                               'touching?)))
                                                                                                                      (x8566
                                                                                                                       p))))
                                                                                                            (letrec ((g8567
                                                                                                                      (if val7263
                                                                                                                        val7263
                                                                                                                        (letrec ((x8568
                                                                                                                                  (dead
                                                                                                                                   'touching?)))
                                                                                                                          (x8568
                                                                                                                           p)))))
                                                                                                              g8567))))
                                                                                                  g8565))))
                                                                                      g8564)
                                                                                    (letrec ((x-cnd8569
                                                                                              (equal?
                                                                                               msg
                                                                                               'move-toward)))
                                                                                      (if x-cnd8569
                                                                                        (letrec ((g8570
                                                                                                  (lambda (p)
                                                                                                    (letrec ((g8571
                                                                                                              (letrec ((x8572
                                                                                                                        (letrec ((x8573
                                                                                                                                  (undead
                                                                                                                                   'move-toward)))
                                                                                                                          (x8573
                                                                                                                           p))))
                                                                                                                (new-horde
                                                                                                                 x8572
                                                                                                                 dead))))
                                                                                                      g8571))))
                                                                                          g8570)
                                                                                        (letrec ((x-cnd8574
                                                                                                  (equal?
                                                                                                   msg
                                                                                                   'eat-brains)))
                                                                                          (if x-cnd8574
                                                                                            (letrec ((g8575
                                                                                                      (lambda ()
                                                                                                        (letrec ((g8576
                                                                                                                  (letrec ((x8577
                                                                                                                            (undead
                                                                                                                             'kill-all)))
                                                                                                                    (x8577
                                                                                                                     dead))))
                                                                                                          g8576))))
                                                                                              g8575)
                                                                                            (letrec ((g8578
                                                                                                      "unknown message"))
                                                                                              g8578)))))))))))))))
                                                            g8550))))
                                                g8549)))
                                           (new-cons-zombies
                                            (lambda (z r)
                                              (letrec ((g8579
                                                        (lambda (msg)
                                                          (letrec ((g8580
                                                                    (letrec ((x-cnd8581
                                                                              (equal?
                                                                               msg
                                                                               'move-toward)))
                                                                      (if x-cnd8581
                                                                        (letrec ((g8582
                                                                                  (lambda (p)
                                                                                    (letrec ((g8583
                                                                                              (letrec ((x8586
                                                                                                        (letrec ((x8587
                                                                                                                  (z
                                                                                                                   'move-toward)))
                                                                                                          (x8587
                                                                                                           p)))
                                                                                                       (x8584
                                                                                                        (letrec ((x8585
                                                                                                                  (r
                                                                                                                   'move-toward)))
                                                                                                          (x8585
                                                                                                           p))))
                                                                                                (new-cons-zombies
                                                                                                 x8586
                                                                                                 x8584))))
                                                                                      g8583))))
                                                                          g8582)
                                                                        (letrec ((x-cnd8588
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8588
                                                                            (letrec ((g8589
                                                                                      (lambda (c
                                                                                               s)
                                                                                        (letrec ((g8590
                                                                                                  (letrec ((x8593
                                                                                                            (z
                                                                                                             'draw-on/color))
                                                                                                           (x8591
                                                                                                            (letrec ((x8592
                                                                                                                      (r
                                                                                                                       'draw-on/color)))
                                                                                                              (x8592
                                                                                                               c
                                                                                                               s))))
                                                                                                    (x8593
                                                                                                     c
                                                                                                     x8591))))
                                                                                          g8590))))
                                                                              g8589)
                                                                            (letrec ((x-cnd8594
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8594
                                                                                (letrec ((g8595
                                                                                          (lambda (p)
                                                                                            (letrec ((g8596
                                                                                                      (letrec ((val7264
                                                                                                                (letrec ((x8597
                                                                                                                          (z
                                                                                                                           'touching?)))
                                                                                                                  (x8597
                                                                                                                   p))))
                                                                                                        (letrec ((g8598
                                                                                                                  (if val7264
                                                                                                                    val7264
                                                                                                                    (letrec ((x8599
                                                                                                                              (r
                                                                                                                               'touching?)))
                                                                                                                      (x8599
                                                                                                                       p)))))
                                                                                                          g8598))))
                                                                                              g8596))))
                                                                                  g8595)
                                                                                (letrec ((x-cnd8600
                                                                                          (equal?
                                                                                           msg
                                                                                           'kill-all)))
                                                                                  (if x-cnd8600
                                                                                    (letrec ((g8601
                                                                                              (lambda (dead)
                                                                                                (letrec ((g8602
                                                                                                          (letrec ((x-cnd8603
                                                                                                                    (letrec ((val7265
                                                                                                                              (letrec ((x8606
                                                                                                                                        (r
                                                                                                                                         'touching?))
                                                                                                                                       (x8604
                                                                                                                                        (letrec ((x8605
                                                                                                                                                  (z
                                                                                                                                                   'posn)))
                                                                                                                                          (x8605))))
                                                                                                                                (x8606
                                                                                                                                 x8604))))
                                                                                                                      (letrec ((g8607
                                                                                                                                (if val7265
                                                                                                                                  val7265
                                                                                                                                  (letrec ((x8610
                                                                                                                                            (dead
                                                                                                                                             'touching?))
                                                                                                                                           (x8608
                                                                                                                                            (letrec ((x8609
                                                                                                                                                      (z
                                                                                                                                                       'posn)))
                                                                                                                                              (x8609))))
                                                                                                                                    (x8610
                                                                                                                                     x8608)))))
                                                                                                                        g8607))))
                                                                                                            (if x-cnd8603
                                                                                                              (letrec ((g8611
                                                                                                                        (letrec ((x8613
                                                                                                                                  (r
                                                                                                                                   'kill-all))
                                                                                                                                 (x8612
                                                                                                                                  (new-cons-zombies
                                                                                                                                   z
                                                                                                                                   dead)))
                                                                                                                          (x8613
                                                                                                                           x8612))))
                                                                                                                g8611)
                                                                                                              (letrec ((g8614
                                                                                                                        (letrec ((res
                                                                                                                                  (letrec ((x8615
                                                                                                                                            (r
                                                                                                                                             'kill-all)))
                                                                                                                                    (x8615
                                                                                                                                     dead))))
                                                                                                                          (letrec ((g8616
                                                                                                                                    (letrec ((x8619
                                                                                                                                              (letrec ((x8620
                                                                                                                                                        (letrec ((x8621
                                                                                                                                                                  (res
                                                                                                                                                                   'undead)))
                                                                                                                                                          (x8621))))
                                                                                                                                                (new-cons-zombies
                                                                                                                                                 z
                                                                                                                                                 x8620)))
                                                                                                                                             (x8617
                                                                                                                                              (letrec ((x8618
                                                                                                                                                        (res
                                                                                                                                                         'dead)))
                                                                                                                                                (x8618))))
                                                                                                                                      (new-horde
                                                                                                                                       x8619
                                                                                                                                       x8617))))
                                                                                                                            g8616))))
                                                                                                                g8614)))))
                                                                                                  g8602))))
                                                                                      g8601)
                                                                                    (letrec ((g8622
                                                                                              "unknown message"))
                                                                                      g8622)))))))))))
                                                            g8580))))
                                                g8579)))
                                           (new-mt-zombies
                                            (lambda ()
                                              (letrec ((g8623
                                                        (lambda (msg)
                                                          (letrec ((g8624
                                                                    (letrec ((x-cnd8625
                                                                              (equal?
                                                                               msg
                                                                               'move-toward)))
                                                                      (if x-cnd8625
                                                                        (letrec ((g8626
                                                                                  (lambda (p)
                                                                                    (letrec ((g8627
                                                                                              (new-mt-zombies)))
                                                                                      g8627))))
                                                                          g8626)
                                                                        (letrec ((x-cnd8628
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8628
                                                                            (letrec ((g8629
                                                                                      (lambda (c
                                                                                               s)
                                                                                        (letrec ((g8630
                                                                                                  s))
                                                                                          g8630))))
                                                                              g8629)
                                                                            (letrec ((x-cnd8631
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8631
                                                                                (letrec ((g8632
                                                                                          (lambda (p)
                                                                                            (letrec ((g8633
                                                                                                      #f))
                                                                                              g8633))))
                                                                                  g8632)
                                                                                (letrec ((x-cnd8634
                                                                                          (equal?
                                                                                           msg
                                                                                           'kill-all)))
                                                                                  (if x-cnd8634
                                                                                    (letrec ((g8635
                                                                                              (lambda (dead)
                                                                                                (letrec ((g8636
                                                                                                          (letrec ((x8637
                                                                                                                    (new-mt-zombies)))
                                                                                                            (new-horde
                                                                                                             x8637
                                                                                                             dead))))
                                                                                                  g8636))))
                                                                                      g8635)
                                                                                    (letrec ((g8638
                                                                                              "unknown message"))
                                                                                      g8638)))))))))))
                                                            g8624))))
                                                g8623)))
                                           (new-zombie
                                            (lambda (p)
                                              (letrec ((g8639
                                                        (lambda (msg)
                                                          (letrec ((g8640
                                                                    (letrec ((x-cnd8641
                                                                              (equal?
                                                                               msg
                                                                               'posn)))
                                                                      (if x-cnd8641
                                                                        (letrec ((g8642
                                                                                  (lambda ()
                                                                                    (letrec ((g8643
                                                                                              p))
                                                                                      g8643))))
                                                                          g8642)
                                                                        (letrec ((x-cnd8644
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8644
                                                                            (letrec ((g8645
                                                                                      (lambda (c
                                                                                               s)
                                                                                        (letrec ((g8646
                                                                                                  (letrec ((x8648
                                                                                                            (p
                                                                                                             'draw-on/image))
                                                                                                           (x8647
                                                                                                            (circle
                                                                                                             ZOMBIE-RADIUS
                                                                                                             "solid"
                                                                                                             c)))
                                                                                                    (x8648
                                                                                                     x8647
                                                                                                     s))))
                                                                                          g8646))))
                                                                              g8645)
                                                                            (letrec ((x-cnd8649
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8649
                                                                                (letrec ((g8650
                                                                                          (lambda (q)
                                                                                            (letrec ((g8651
                                                                                                      (letrec ((x8652
                                                                                                                (letrec ((x8653
                                                                                                                          (p
                                                                                                                           'dist)))
                                                                                                                  (x8653
                                                                                                                   q))))
                                                                                                        (<=
                                                                                                         x8652
                                                                                                         ZOMBIE-RADIUS))))
                                                                                              g8651))))
                                                                                  g8650)
                                                                                (letrec ((x-cnd8654
                                                                                          (equal?
                                                                                           msg
                                                                                           'move-toward)))
                                                                                  (if x-cnd8654
                                                                                    (letrec ((g8655
                                                                                              (lambda (q)
                                                                                                (letrec ((g8656
                                                                                                          (letrec ((x8657
                                                                                                                    (letrec ((x8658
                                                                                                                              (p
                                                                                                                               'move-toward/speed)))
                                                                                                                      (x8658
                                                                                                                       q
                                                                                                                       ZOMBIE-SPEED))))
                                                                                                            (new-zombie
                                                                                                             x8657))))
                                                                                                  g8656))))
                                                                                      g8655)
                                                                                    (letrec ((g8659
                                                                                              "unknown message"))
                                                                                      g8659)))))))))))
                                                            g8640))))
                                                g8639)))
                                           (new-posn
                                            (lambda (x y)
                                              (letrec ((g8660
                                                        (letrec ((this
                                                                  (lambda (msg)
                                                                    (letrec ((g8661
                                                                              (letrec ((x-cnd8662
                                                                                        (equal?
                                                                                         msg
                                                                                         'x)))
                                                                                (if x-cnd8662
                                                                                  (letrec ((g8663
                                                                                            (lambda ()
                                                                                              (letrec ((g8664
                                                                                                        x))
                                                                                                g8664))))
                                                                                    g8663)
                                                                                  (letrec ((x-cnd8665
                                                                                            (equal?
                                                                                             msg
                                                                                             'y)))
                                                                                    (if x-cnd8665
                                                                                      (letrec ((g8666
                                                                                                (lambda ()
                                                                                                  (letrec ((g8667
                                                                                                            y))
                                                                                                    g8667))))
                                                                                        g8666)
                                                                                      (letrec ((x-cnd8668
                                                                                                (equal?
                                                                                                 msg
                                                                                                 'posn)))
                                                                                        (if x-cnd8668
                                                                                          (letrec ((g8669
                                                                                                    (lambda ()
                                                                                                      (letrec ((g8670
                                                                                                                this))
                                                                                                        g8670))))
                                                                                            g8669)
                                                                                          (letrec ((x-cnd8671
                                                                                                    (equal?
                                                                                                     msg
                                                                                                     'move-toward/speed)))
                                                                                            (if x-cnd8671
                                                                                              (letrec ((g8672
                                                                                                        (lambda (p
                                                                                                                 speed)
                                                                                                          (letrec ((g8673
                                                                                                                    (letrec ((δx
                                                                                                                              (letrec ((x8674
                                                                                                                                        (letrec ((x8675
                                                                                                                                                  (p
                                                                                                                                                   'x)))
                                                                                                                                          (x8675))))
                                                                                                                                (-
                                                                                                                                 x8674
                                                                                                                                 x)))
                                                                                                                             (δy
                                                                                                                              (letrec ((x8676
                                                                                                                                        (letrec ((x8677
                                                                                                                                                  (p
                                                                                                                                                   'y)))
                                                                                                                                          (x8677))))
                                                                                                                                (-
                                                                                                                                 x8676
                                                                                                                                 y)))
                                                                                                                             (move-distance
                                                                                                                              (letrec ((x8678
                                                                                                                                        (letrec ((x8680
                                                                                                                                                  (abs
                                                                                                                                                   δx))
                                                                                                                                                 (x8679
                                                                                                                                                  (abs
                                                                                                                                                   δy)))
                                                                                                                                          (max
                                                                                                                                           x8680
                                                                                                                                           x8679))))
                                                                                                                                (min
                                                                                                                                 speed
                                                                                                                                 x8678))))
                                                                                                                      (letrec ((g8681
                                                                                                                                (letrec ((x-cnd8682
                                                                                                                                          (letrec ((x8684
                                                                                                                                                    (abs
                                                                                                                                                     δx))
                                                                                                                                                   (x8683
                                                                                                                                                    (abs
                                                                                                                                                     δy)))
                                                                                                                                            (<
                                                                                                                                             x8684
                                                                                                                                             x8683))))
                                                                                                                                  (if x-cnd8682
                                                                                                                                    (letrec ((g8685
                                                                                                                                              (letrec ((x8688
                                                                                                                                                        (this
                                                                                                                                                         'move))
                                                                                                                                                       (x8686
                                                                                                                                                        (letrec ((x-cnd8687
                                                                                                                                                                  (positive?
                                                                                                                                                                   δy)))
                                                                                                                                                          (if x-cnd8687
                                                                                                                                                            move-distance
                                                                                                                                                            (-
                                                                                                                                                             0
                                                                                                                                                             move-distance)))))
                                                                                                                                                (x8688
                                                                                                                                                 0
                                                                                                                                                 x8686))))
                                                                                                                                      g8685)
                                                                                                                                    (letrec ((g8689
                                                                                                                                              (letrec ((x8692
                                                                                                                                                        (this
                                                                                                                                                         'move))
                                                                                                                                                       (x8690
                                                                                                                                                        (letrec ((x-cnd8691
                                                                                                                                                                  (positive?
                                                                                                                                                                   δx)))
                                                                                                                                                          (if x-cnd8691
                                                                                                                                                            move-distance
                                                                                                                                                            (-
                                                                                                                                                             0
                                                                                                                                                             move-distance)))))
                                                                                                                                                (x8692
                                                                                                                                                 x8690
                                                                                                                                                 0))))
                                                                                                                                      g8689)))))
                                                                                                                        g8681))))
                                                                                                            g8673))))
                                                                                                g8672)
                                                                                              (letrec ((x-cnd8693
                                                                                                        (equal?
                                                                                                         msg
                                                                                                         'move)))
                                                                                                (if x-cnd8693
                                                                                                  (letrec ((g8694
                                                                                                            (lambda (δx
                                                                                                                     δy)
                                                                                                              (letrec ((g8695
                                                                                                                        (letrec ((x8697
                                                                                                                                  (+
                                                                                                                                   x
                                                                                                                                   δx))
                                                                                                                                 (x8696
                                                                                                                                  (+
                                                                                                                                   y
                                                                                                                                   δy)))
                                                                                                                          (new-posn
                                                                                                                           x8697
                                                                                                                           x8696))))
                                                                                                                g8695))))
                                                                                                    g8694)
                                                                                                  (letrec ((x-cnd8698
                                                                                                            (equal?
                                                                                                             msg
                                                                                                             'draw-on/image)))
                                                                                                    (if x-cnd8698
                                                                                                      (letrec ((g8699
                                                                                                                (lambda (img
                                                                                                                         scn)
                                                                                                                  (letrec ((g8700
                                                                                                                            (place-image
                                                                                                                             img
                                                                                                                             x
                                                                                                                             y
                                                                                                                             scn)))
                                                                                                                    g8700))))
                                                                                                        g8699)
                                                                                                      (letrec ((x-cnd8701
                                                                                                                (equal?
                                                                                                                 msg
                                                                                                                 'dist)))
                                                                                                        (if x-cnd8701
                                                                                                          (letrec ((g8702
                                                                                                                    (lambda (p)
                                                                                                                      (letrec ((g8703
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
                                                                                                                        g8703))))
                                                                                                            g8702)
                                                                                                          (letrec ((g8713
                                                                                                                    "unknown message"))
                                                                                                            g8713)))))))))))))))))
                                                                      g8661))))
                                                          (letrec ((g8714
                                                                    this))
                                                            g8714))))
                                                g8660)))
                                           (w0
                                            (letrec ((x8728
                                                      (letrec ((x8729
                                                                (new-posn
                                                                 0
                                                                 0)))
                                                        (new-player x8729)))
                                                     (x8727 (new-posn 0 0))
                                                     (x8715
                                                      (letrec ((x8720
                                                                (letrec ((x8725
                                                                          (letrec ((x8726
                                                                                    (new-posn
                                                                                     100
                                                                                     300)))
                                                                            (new-zombie
                                                                             x8726)))
                                                                         (x8721
                                                                          (letrec ((x8723
                                                                                    (letrec ((x8724
                                                                                              (new-posn
                                                                                               100
                                                                                               200)))
                                                                                      (new-zombie
                                                                                       x8724)))
                                                                                   (x8722
                                                                                    (new-mt-zombies)))
                                                                            (new-cons-zombies
                                                                             x8723
                                                                             x8722))))
                                                                  (new-cons-zombies
                                                                   x8725
                                                                   x8721)))
                                                               (x8716
                                                                (letrec ((x8718
                                                                          (letrec ((x8719
                                                                                    (new-posn
                                                                                     200
                                                                                     200)))
                                                                            (new-zombie
                                                                             x8719)))
                                                                         (x8717
                                                                          (new-mt-zombies)))
                                                                  (new-cons-zombies
                                                                   x8718
                                                                   x8717))))
                                                        (new-horde
                                                         x8720
                                                         x8716))))
                                              (new-world x8728 x8727 x8715))))
                                    (letrec ((g8730
                                              (parallel
                                               (parallel
                                                (letrec ((x8732
                                                          (letrec ((xj7578
                                                                    (loc
                                                                     'module))
                                                                   (xk7579
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8733
                                                                      ((lambda (j7581
                                                                                k7582
                                                                                f7583)
                                                                         (letrec ((g8734
                                                                                   (lambda (g7580)
                                                                                     (letrec ((g8735
                                                                                               (letrec ((x8736
                                                                                                         (letrec ((x8737
                                                                                                                   (any/c
                                                                                                                    j7581
                                                                                                                    k7582
                                                                                                                    g7580)))
                                                                                                           (f7583
                                                                                                            x8737))))
                                                                                                 (boolean?/c
                                                                                                  j7581
                                                                                                  k7582
                                                                                                  x8736))))
                                                                                       g8735))))
                                                                           g8734))
                                                                       xj7578
                                                                       xk7579
                                                                       image/c)))
                                                              g8733)))
                                                         (x8731 (input)))
                                                  (x8732 x8731))
                                                (letrec ((x8740
                                                          (letrec ((xj7584
                                                                    (loc
                                                                     'module))
                                                                   (xk7585
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8741
                                                                      ((lambda (j7588
                                                                                k7589
                                                                                f7590)
                                                                         (letrec ((g8742
                                                                                   (lambda (g7586
                                                                                            g7587)
                                                                                     (letrec ((g8743
                                                                                               (letrec ((x8744
                                                                                                         (letrec ((x8746
                                                                                                                   (real?/c
                                                                                                                    j7588
                                                                                                                    k7589
                                                                                                                    g7586))
                                                                                                                  (x8745
                                                                                                                   (real?/c
                                                                                                                    j7588
                                                                                                                    k7589
                                                                                                                    g7587)))
                                                                                                           (f7590
                                                                                                            x8746
                                                                                                            x8745))))
                                                                                                 (image/c
                                                                                                  j7588
                                                                                                  k7589
                                                                                                  x8744))))
                                                                                       g8743))))
                                                                           g8742))
                                                                       xj7584
                                                                       xk7585
                                                                       empty-scene)))
                                                              g8741)))
                                                         (x8739 (input))
                                                         (x8738 (input)))
                                                  (x8740 x8739 x8738))
                                                (letrec ((x8751
                                                          (letrec ((xj7591
                                                                    (loc
                                                                     'module))
                                                                   (xk7592
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8752
                                                                      ((lambda (j7597
                                                                                k7598
                                                                                f7599)
                                                                         (letrec ((g8753
                                                                                   (lambda (g7593
                                                                                            g7594
                                                                                            g7595
                                                                                            g7596)
                                                                                     (letrec ((g8754
                                                                                               (letrec ((x8755
                                                                                                         (letrec ((x8759
                                                                                                                   (image/c/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7593))
                                                                                                                  (x8758
                                                                                                                   (real?/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7594))
                                                                                                                  (x8757
                                                                                                                   (real?/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7595))
                                                                                                                  (x8756
                                                                                                                   (image/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7596)))
                                                                                                           (f7599
                                                                                                            x8759
                                                                                                            x8758
                                                                                                            x8757
                                                                                                            x8756))))
                                                                                                 (image/c
                                                                                                  j7597
                                                                                                  k7598
                                                                                                  x8755))))
                                                                                       g8754))))
                                                                           g8753))
                                                                       xj7591
                                                                       xk7592
                                                                       place-image)))
                                                              g8752)))
                                                         (x8750 (input))
                                                         (x8749 (input))
                                                         (x8748 (input))
                                                         (x8747
                                                          (cons 'image '())))
                                                  (x8751
                                                   x8750
                                                   x8749
                                                   x8748
                                                   x8747))
                                                (letrec ((x8763
                                                          (letrec ((xj7600
                                                                    (loc
                                                                     'module))
                                                                   (xk7601
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8764
                                                                      ((lambda (j7605
                                                                                k7606
                                                                                f7607)
                                                                         (letrec ((g8765
                                                                                   (lambda (g7602
                                                                                            g7603
                                                                                            g7604)
                                                                                     (letrec ((g8766
                                                                                               (letrec ((x8767
                                                                                                         (letrec ((x8770
                                                                                                                   (real?/c
                                                                                                                    j7605
                                                                                                                    k7606
                                                                                                                    g7602))
                                                                                                                  (x8769
                                                                                                                   (string?/c
                                                                                                                    j7605
                                                                                                                    k7606
                                                                                                                    g7603))
                                                                                                                  (x8768
                                                                                                                   (string?/c
                                                                                                                    j7605
                                                                                                                    k7606
                                                                                                                    g7604)))
                                                                                                           (f7607
                                                                                                            x8770
                                                                                                            x8769
                                                                                                            x8768))))
                                                                                                 (image/c
                                                                                                  j7605
                                                                                                  k7606
                                                                                                  x8767))))
                                                                                       g8766))))
                                                                           g8765))
                                                                       xj7600
                                                                       xk7601
                                                                       circle)))
                                                              g8764)))
                                                         (x8762 (input))
                                                         (x8761 (input))
                                                         (x8760 (input)))
                                                  (x8763 x8762 x8761 x8760))
                                                (letrec ((x8774
                                                          (letrec ((xj7608
                                                                    (loc
                                                                     'module))
                                                                   (xk7609
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8775
                                                                      ((lambda (j7613
                                                                                k7614
                                                                                f7615)
                                                                         (letrec ((g8776
                                                                                   (lambda (g7610
                                                                                            g7611
                                                                                            g7612)
                                                                                     (letrec ((g8777
                                                                                               (letrec ((x8778
                                                                                                         (letrec ((x8781
                                                                                                                   (player/c
                                                                                                                    j7613
                                                                                                                    k7614
                                                                                                                    g7610))
                                                                                                                  (x8780
                                                                                                                   (posn/c
                                                                                                                    j7613
                                                                                                                    k7614
                                                                                                                    g7611))
                                                                                                                  (x8779
                                                                                                                   (horde/c
                                                                                                                    j7613
                                                                                                                    k7614
                                                                                                                    g7612)))
                                                                                                           (f7615
                                                                                                            x8781
                                                                                                            x8780
                                                                                                            x8779))))
                                                                                                 (world/c
                                                                                                  j7613
                                                                                                  k7614
                                                                                                  x8778))))
                                                                                       g8777))))
                                                                           g8776))
                                                                       xj7608
                                                                       xk7609
                                                                       new-world)))
                                                              g8775)))
                                                         (x8773 (input))
                                                         (x8772 (input))
                                                         (x8771 (input)))
                                                  (x8774 x8773 x8772 x8771))
                                                (letrec ((x8783
                                                          (letrec ((xj7616
                                                                    (loc
                                                                     'module))
                                                                   (xk7617
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8784
                                                                      ((lambda (j7619
                                                                                k7620
                                                                                f7621)
                                                                         (letrec ((g8785
                                                                                   (lambda (g7618)
                                                                                     (letrec ((g8786
                                                                                               (letrec ((x8787
                                                                                                         (letrec ((x8788
                                                                                                                   (posn/c
                                                                                                                    j7619
                                                                                                                    k7620
                                                                                                                    g7618)))
                                                                                                           (f7621
                                                                                                            x8788))))
                                                                                                 (player/c
                                                                                                  j7619
                                                                                                  k7620
                                                                                                  x8787))))
                                                                                       g8786))))
                                                                           g8785))
                                                                       xj7616
                                                                       xk7617
                                                                       new-player)))
                                                              g8784)))
                                                         (x8782 (input)))
                                                  (x8783 x8782))
                                                (letrec ((x8791
                                                          (letrec ((xj7622
                                                                    (loc
                                                                     'module))
                                                                   (xk7623
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8792
                                                                      ((lambda (j7626
                                                                                k7627
                                                                                f7628)
                                                                         (letrec ((g8793
                                                                                   (lambda (g7624
                                                                                            g7625)
                                                                                     (letrec ((g8794
                                                                                               (letrec ((x8795
                                                                                                         (letrec ((x8797
                                                                                                                   (zombies/c
                                                                                                                    j7626
                                                                                                                    k7627
                                                                                                                    g7624))
                                                                                                                  (x8796
                                                                                                                   (zombies/c
                                                                                                                    j7626
                                                                                                                    k7627
                                                                                                                    g7625)))
                                                                                                           (f7628
                                                                                                            x8797
                                                                                                            x8796))))
                                                                                                 (horde/c
                                                                                                  j7626
                                                                                                  k7627
                                                                                                  x8795))))
                                                                                       g8794))))
                                                                           g8793))
                                                                       xj7622
                                                                       xk7623
                                                                       new-horde)))
                                                              g8792)))
                                                         (x8790 (input))
                                                         (x8789 (input)))
                                                  (x8791 x8790 x8789))
                                                (letrec ((x8800
                                                          (letrec ((xj7629
                                                                    (loc
                                                                     'module))
                                                                   (xk7630
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8801
                                                                      ((lambda (j7633
                                                                                k7634
                                                                                f7635)
                                                                         (letrec ((g8802
                                                                                   (lambda (g7631
                                                                                            g7632)
                                                                                     (letrec ((g8803
                                                                                               (letrec ((x8804
                                                                                                         (letrec ((x8806
                                                                                                                   (zombie/c
                                                                                                                    j7633
                                                                                                                    k7634
                                                                                                                    g7631))
                                                                                                                  (x8805
                                                                                                                   (zombies/c
                                                                                                                    j7633
                                                                                                                    k7634
                                                                                                                    g7632)))
                                                                                                           (f7635
                                                                                                            x8806
                                                                                                            x8805))))
                                                                                                 (zombies/c
                                                                                                  j7633
                                                                                                  k7634
                                                                                                  x8804))))
                                                                                       g8803))))
                                                                           g8802))
                                                                       xj7629
                                                                       xk7630
                                                                       new-cons-zombies)))
                                                              g8801)))
                                                         (x8799 (input))
                                                         (x8798 (input)))
                                                  (x8800 x8799 x8798))
                                                (letrec ((xj7636 (loc 'module))
                                                         (xk7637
                                                          (loc 'importer)))
                                                  (letrec ((g8807
                                                            ((lambda (j7638
                                                                      k7639
                                                                      f7640)
                                                               (letrec ((g8808
                                                                         (lambda ()
                                                                           (letrec ((g8809
                                                                                     (letrec ((x8810
                                                                                               (f7640)))
                                                                                       (zombies/c
                                                                                        j7638
                                                                                        k7639
                                                                                        x8810))))
                                                                             g8809))))
                                                                 g8808))
                                                             xj7636
                                                             xk7637
                                                             new-mt-zombies)))
                                                    g8807))
                                                (letrec ((x8812
                                                          (letrec ((xj7641
                                                                    (loc
                                                                     'module))
                                                                   (xk7642
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8813
                                                                      ((lambda (j7644
                                                                                k7645
                                                                                f7646)
                                                                         (letrec ((g8814
                                                                                   (lambda (g7643)
                                                                                     (letrec ((g8815
                                                                                               (letrec ((x8816
                                                                                                         (letrec ((x8817
                                                                                                                   (posn/c
                                                                                                                    j7644
                                                                                                                    k7645
                                                                                                                    g7643)))
                                                                                                           (f7646
                                                                                                            x8817))))
                                                                                                 (zombie/c
                                                                                                  j7644
                                                                                                  k7645
                                                                                                  x8816))))
                                                                                       g8815))))
                                                                           g8814))
                                                                       xj7641
                                                                       xk7642
                                                                       new-zombie)))
                                                              g8813)))
                                                         (x8811 (input)))
                                                  (x8812 x8811))
                                                (letrec ((x8820
                                                          (letrec ((xj7647
                                                                    (loc
                                                                     'module))
                                                                   (xk7648
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8821
                                                                      ((lambda (j7651
                                                                                k7652
                                                                                f7653)
                                                                         (letrec ((g8822
                                                                                   (lambda (g7649
                                                                                            g7650)
                                                                                     (letrec ((g8823
                                                                                               (letrec ((x8824
                                                                                                         (letrec ((x8826
                                                                                                                   (real?/c
                                                                                                                    j7651
                                                                                                                    k7652
                                                                                                                    g7649))
                                                                                                                  (x8825
                                                                                                                   (real?/c
                                                                                                                    j7651
                                                                                                                    k7652
                                                                                                                    g7650)))
                                                                                                           (f7653
                                                                                                            x8826
                                                                                                            x8825))))
                                                                                                 (posn/c
                                                                                                  j7651
                                                                                                  k7652
                                                                                                  x8824))))
                                                                                       g8823))))
                                                                           g8822))
                                                                       xj7647
                                                                       xk7648
                                                                       new-posn)))
                                                              g8821)))
                                                         (x8819 (input))
                                                         (x8818 (input)))
                                                  (x8820 x8819 x8818))
                                                (letrec ((xj7654 (loc 'module))
                                                         (xk7655
                                                          (loc 'importer)))
                                                  (letrec ((g8827
                                                            (world/c
                                                             xj7654
                                                             xk7655
                                                             w0)))
                                                    g8827))))))
                                      g8730))))
                          g7685))))
              g7668)))
    g7667))
