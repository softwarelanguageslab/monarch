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
                                           (add1
                                            (lambda (x)
                                              (letrec ((g7810 (+ x 1)))
                                                g7810)))
                                           (/
                                            (letrec ((xj7366 'server)
                                                     (xk7367 'client))
                                              (letrec ((g7811
                                                        ((lambda (j7370
                                                                  k7371
                                                                  f7372)
                                                           (letrec ((g7813
                                                                     (lambda (g7368
                                                                              g7369)
                                                                       (letrec ((g7814
                                                                                 (letrec ((x7815
                                                                                           (letrec ((x7817
                                                                                                     (number?/c
                                                                                                      j7370
                                                                                                      k7371
                                                                                                      g7368))
                                                                                                    (x7816
                                                                                                     (number?/c
                                                                                                      j7370
                                                                                                      k7371
                                                                                                      g7369)))
                                                                                             (f7372
                                                                                              x7817
                                                                                              x7816))))
                                                                                   (number?/c
                                                                                    j7370
                                                                                    k7371
                                                                                    x7815))))
                                                                         g7814))))
                                                             g7813))
                                                         xj7366
                                                         xk7367
                                                         (lambda (a b)
                                                           (letrec ((g7812
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7812)))))
                                                g7811)))
                                           (car
                                            (letrec ((xj7373 'server)
                                                     (xk7374 'client))
                                              (letrec ((g7818
                                                        ((lambda (j7376
                                                                  k7377
                                                                  f7378)
                                                           (letrec ((g7820
                                                                     (lambda (g7375)
                                                                       (letrec ((g7821
                                                                                 (letrec ((x7822
                                                                                           (letrec ((x7823
                                                                                                     (pair?/c
                                                                                                      j7376
                                                                                                      k7377
                                                                                                      g7375)))
                                                                                             (f7378
                                                                                              x7823))))
                                                                                   (any/c
                                                                                    j7376
                                                                                    k7377
                                                                                    x7822))))
                                                                         g7821))))
                                                             g7820))
                                                         xj7373
                                                         xk7374
                                                         (lambda (p)
                                                           (letrec ((g7819
                                                                     (orig-car
                                                                      p)))
                                                             g7819)))))
                                                g7818)))
                                           (cdr
                                            (letrec ((xj7379 'server)
                                                     (xk7380 'client))
                                              (letrec ((g7824
                                                        ((lambda (j7382
                                                                  k7383
                                                                  f7384)
                                                           (letrec ((g7826
                                                                     (lambda (g7381)
                                                                       (letrec ((g7827
                                                                                 (letrec ((x7828
                                                                                           (letrec ((x7829
                                                                                                     (pair?/c
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7381)))
                                                                                             (f7384
                                                                                              x7829))))
                                                                                   (any/c
                                                                                    j7382
                                                                                    k7383
                                                                                    x7828))))
                                                                         g7827))))
                                                             g7826))
                                                         xj7379
                                                         xk7380
                                                         (lambda (p)
                                                           (letrec ((g7825
                                                                     (orig-cdr
                                                                      p)))
                                                             g7825)))))
                                                g7824)))
                                           (cons
                                            (letrec ((xj7385 'server)
                                                     (xk7386 'client))
                                              (letrec ((g7830
                                                        ((lambda (j7389
                                                                  k7390
                                                                  f7391)
                                                           (letrec ((g7832
                                                                     (lambda (g7387
                                                                              g7388)
                                                                       (letrec ((g7833
                                                                                 (letrec ((x7834
                                                                                           (letrec ((x7836
                                                                                                     (any/c
                                                                                                      j7389
                                                                                                      k7390
                                                                                                      g7387))
                                                                                                    (x7835
                                                                                                     (any/c
                                                                                                      j7389
                                                                                                      k7390
                                                                                                      g7388)))
                                                                                             (f7391
                                                                                              x7836
                                                                                              x7835))))
                                                                                   (pair?/c
                                                                                    j7389
                                                                                    k7390
                                                                                    x7834))))
                                                                         g7833))))
                                                             g7832))
                                                         xj7385
                                                         xk7386
                                                         (lambda (a b)
                                                           (letrec ((g7831
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7831)))))
                                                g7830)))
                                           (vector-ref
                                            (letrec ((xj7392 'server)
                                                     (xk7393 'client))
                                              (letrec ((g7837
                                                        ((lambda (j7395
                                                                  k7396
                                                                  f7397)
                                                           (letrec ((g7839
                                                                     (lambda (g7394)
                                                                       (letrec ((g7840
                                                                                 (letrec ((x7841
                                                                                           (letrec ((x7842
                                                                                                     (vector?/c
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7394)))
                                                                                             (f7397
                                                                                              x7842))))
                                                                                   (integer?/c
                                                                                    j7395
                                                                                    k7396
                                                                                    x7841))))
                                                                         g7840))))
                                                             g7839))
                                                         xj7392
                                                         xk7393
                                                         (lambda (v i)
                                                           (letrec ((g7838
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7838)))))
                                                g7837)))
                                           (vector-set!
                                            (letrec ((xj7398 'server)
                                                     (xk7399 'client))
                                              (letrec ((g7843
                                                        ((lambda (j7402
                                                                  k7403
                                                                  f7404)
                                                           (letrec ((g7845
                                                                     (lambda (g7400
                                                                              g7401)
                                                                       (letrec ((g7846
                                                                                 (letrec ((x7847
                                                                                           (letrec ((x7849
                                                                                                     (vector?/c
                                                                                                      j7402
                                                                                                      k7403
                                                                                                      g7400))
                                                                                                    (x7848
                                                                                                     (integer?/c
                                                                                                      j7402
                                                                                                      k7403
                                                                                                      g7401)))
                                                                                             (f7404
                                                                                              x7849
                                                                                              x7848))))
                                                                                   (any/c
                                                                                    j7402
                                                                                    k7403
                                                                                    x7847))))
                                                                         g7846))))
                                                             g7845))
                                                         xj7398
                                                         xk7399
                                                         (lambda (vec i v)
                                                           (letrec ((g7844
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7844)))))
                                                g7843)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7850
                                                        (letrec ((x7851
                                                                  (letrec ((x7852
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7852))))
                                                          (cdr x7851))))
                                                g7850)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7853
                                                        (letrec ((x7856
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7856)))
                                                       (g7854
                                                        (letrec ((x7857
                                                                  (list? l)))
                                                          (assert x7857)))
                                                       (g7855
                                                        (letrec ((x-cnd7858
                                                                  (null? l)))
                                                          (if x-cnd7858
                                                            '()
                                                            (letrec ((x7861
                                                                      (letrec ((x7862
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7862)))
                                                                     (x7859
                                                                      (letrec ((x7860
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7860))))
                                                              (cons
                                                               x7861
                                                               x7859))))))
                                                g7855)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7863
                                                        (letrec ((x7864
                                                                  (car x)))
                                                          (cdr x7864))))
                                                g7863)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7865
                                                        (letrec ((x7866
                                                                  (letrec ((x7867
                                                                            (letrec ((x7868
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7868))))
                                                                    (cdr
                                                                     x7867))))
                                                          (car x7866))))
                                                g7865)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7869
                                                        (letrec ((x7870
                                                                  (letrec ((x7871
                                                                            (letrec ((x7872
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7872))))
                                                                    (car
                                                                     x7871))))
                                                          (cdr x7870))))
                                                g7869)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7873
                                                        (letrec ((x7876
                                                                  (string?
                                                                   filename)))
                                                          (assert x7876)))
                                                       (g7874
                                                        (letrec ((x7877
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7877)))
                                                       (g7875
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7878
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7879 res))
                                                            g7879))))
                                                g7875)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7880
                                                        (letrec ((x7881
                                                                  (letrec ((x7882
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7882))))
                                                          (car x7881))))
                                                g7880)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7883
                                                        (letrec ((x7884
                                                                  (letrec ((x7885
                                                                            (letrec ((x7886
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7886))))
                                                                    (car
                                                                     x7885))))
                                                          (cdr x7884))))
                                                g7883)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7887
                                                        (letrec ((x7889
                                                                  (list? l)))
                                                          (assert x7889)))
                                                       (g7888
                                                        (letrec ((x-cnd7890
                                                                  (null? l)))
                                                          (if x-cnd7890
                                                            #f
                                                            (letrec ((x-cnd7891
                                                                      (letrec ((x7892
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7892
                                                                         k))))
                                                              (if x-cnd7891
                                                                (car l)
                                                                (letrec ((x7893
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7893))))))))
                                                g7888)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7894
                                                        (letrec ((x7895
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7895))))
                                                g7894)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7896
                                                        (letrec ((x7898
                                                                  (list? l)))
                                                          (assert x7898)))
                                                       (g7897
                                                        (letrec ((x-cnd7899
                                                                  (null? l)))
                                                          (if x-cnd7899
                                                            ""
                                                            (letrec ((x7902
                                                                      (letrec ((x7903
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7903)))
                                                                     (x7900
                                                                      (letrec ((x7901
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7901))))
                                                              (string-append
                                                               x7902
                                                               x7900))))))
                                                g7897)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g7904
                                                        (letrec ((x7907
                                                                  (char? c1)))
                                                          (assert x7907)))
                                                       (g7905
                                                        (letrec ((x7908
                                                                  (char? c2)))
                                                          (assert x7908)))
                                                       (g7906
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7909
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7909))))
                                                g7906)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7910
                                                        (letrec ((x7911
                                                                  (letrec ((x7912
                                                                            (letrec ((x7913
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7913))))
                                                                    (cdr
                                                                     x7912))))
                                                          (cdr x7911))))
                                                g7910)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7914
                                                        (letrec ((x7917
                                                                  (list? l)))
                                                          (assert x7917)))
                                                       (g7915
                                                        (letrec ((x7918
                                                                  (number?)))
                                                          (assert x7918)))
                                                       (g7916
                                                        (letrec ((x-cnd7919
                                                                  (zero? k)))
                                                          (if x-cnd7919
                                                            x
                                                            (letrec ((x7921
                                                                      (cdr x))
                                                                     (x7920
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7921
                                                               x7920))))))
                                                g7916)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7922 '())) g7922)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7923
                                                        (letrec ((x-cnd7924
                                                                  (letrec ((x7925
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7925))))
                                                          (if x-cnd7924
                                                            (letrec ((x7926
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7926))
                                                            #f))))
                                                g7923)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7927
                                                        (letrec ((val7250
                                                                  (letrec ((x7928
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7928
                                                                     9))))
                                                          (letrec ((g7929
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x7930
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7930
                                                                                   10))))
                                                                        (letrec ((g7931
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x7932
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7932
                                                                                       32)))))
                                                                          g7931)))))
                                                            g7929))))
                                                g7927)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7933
                                                        (letrec ((x7934
                                                                  (letrec ((x7935
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7935))))
                                                          (cdr x7934))))
                                                g7933)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7936
                                                        (letrec ((x7938
                                                                  (number? x)))
                                                          (assert x7938)))
                                                       (g7937 (> x 0)))
                                                g7937)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g7939 (bool-top)))
                                                g7939)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7940 #f)) g7940)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7941
                                                        (letrec ((x7942
                                                                  (cdr x)))
                                                          (cdr x7942))))
                                                g7941)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7943
                                                        (letrec ((x7945
                                                                  (number? x)))
                                                          (assert x7945)))
                                                       (g7944
                                                        (letrec ((x-cnd7946
                                                                  (< x 0)))
                                                          (if x-cnd7946
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7944)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7947
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g7948
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd7949
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7949
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7950
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd7951
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7951
                                                                                                  (letrec ((x-cnd7952
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7952
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7953
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd7954
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7954
                                                                                                                (letrec ((x-cnd7955
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7955
                                                                                                                    (letrec ((x-cnd7956
                                                                                                                              (letrec ((x7958
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7957
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7958
                                                                                                                                 x7957))))
                                                                                                                      (if x-cnd7956
                                                                                                                        (letrec ((x7960
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7959
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7960
                                                                                                                           x7959))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7961
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd7962
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7962
                                                                                                                    (letrec ((x-cnd7963
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7963
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7964
                                                                                                                                    (letrec ((x-cnd7965
                                                                                                                                              (letrec ((x7966
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7966
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7965
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7967
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7968
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd7969
                                                                                                                                                                                      (letrec ((x7971
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7970
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7971
                                                                                                                                                                                         x7970))))
                                                                                                                                                                              (if x-cnd7969
                                                                                                                                                                                (letrec ((x7972
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7972))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7968))))
                                                                                                                                                      g7967))))
                                                                                                                                          (letrec ((g7973
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7973))
                                                                                                                                        #f))))
                                                                                                                            g7964))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7961)))))
                                                                                        g7953)))))
                                                                          g7950)))))
                                                            g7948))))
                                                g7947)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7974
                                                        (letrec ((x7975
                                                                  (letrec ((x7976
                                                                            (letrec ((x7977
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7977))))
                                                                    (car
                                                                     x7976))))
                                                          (cdr x7975))))
                                                g7974)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7978
                                                        (letrec ((x7979
                                                                  (letrec ((x7980
                                                                            (letrec ((x7981
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7981))))
                                                                    (car
                                                                     x7980))))
                                                          (car x7979))))
                                                g7978)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7982 (eq? x y)))
                                                g7982)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7983
                                                        (letrec ((x7986
                                                                  (string?
                                                                   filename)))
                                                          (assert x7986)))
                                                       (g7984
                                                        (letrec ((x7987
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7987)))
                                                       (g7985
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7988
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7989 res))
                                                            g7989))))
                                                g7985)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7990 (cons x '())))
                                                g7990)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7991
                                                        (letrec ((x7994
                                                                  (char? c1)))
                                                          (assert x7994)))
                                                       (g7992
                                                        (letrec ((x7995
                                                                  (char? c2)))
                                                          (assert x7995)))
                                                       (g7993
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7996
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7996))))
                                                g7993)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7997
                                                        (letrec ((x7998
                                                                  (letrec ((x7999
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7999))))
                                                          (cdr x7998))))
                                                g7997)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g8000
                                                        (letrec ((x8001
                                                                  (letrec ((x8002
                                                                            (letrec ((x8003
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8003))))
                                                                    (car
                                                                     x8002))))
                                                          (cdr x8001))))
                                                g8000)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g8004
                                                        (letrec ((x8005
                                                                  (letrec ((x8006
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8006))))
                                                          (car x8005))))
                                                g8004)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g8007
                                                        (letrec ((x8008
                                                                  (letrec ((x8009
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8009))))
                                                          (car x8008))))
                                                g8007)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g8010
                                                        (letrec ((x8013
                                                                  (char? c1)))
                                                          (assert x8013)))
                                                       (g8011
                                                        (letrec ((x8014
                                                                  (char? c2)))
                                                          (assert x8014)))
                                                       (g8012
                                                        (letrec ((x8015
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8015))))
                                                g8012)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g8016
                                                        (letrec ((x8017
                                                                  (letrec ((x8018
                                                                            (letrec ((x8019
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8019))))
                                                                    (car
                                                                     x8018))))
                                                          (car x8017))))
                                                g8016)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g8020
                                                        (letrec ((x8022
                                                                  (number? x)))
                                                          (assert x8022)))
                                                       (g8021 (< x 0)))
                                                g8021)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g8023 (memq e l)))
                                                g8023)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g8024
                                                        (letrec ((x8025
                                                                  (letrec ((x8026
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8026))))
                                                          (car x8025))))
                                                g8024)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8027 '())) g8027)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8028
                                                        (letrec ((x8030
                                                                  (list? l)))
                                                          (assert x8030)))
                                                       (g8029
                                                        (letrec ((x-cnd8031
                                                                  (null? l)))
                                                          (if x-cnd8031
                                                            '()
                                                            (letrec ((x8034
                                                                      (letrec ((x8035
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8035)))
                                                                     (x8032
                                                                      (letrec ((x8033
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8033))))
                                                              (append
                                                               x8034
                                                               x8032))))))
                                                g8029)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8036
                                                        (letrec ((x8037
                                                                  (letrec ((x8038
                                                                            (letrec ((x8039
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8039))))
                                                                    (car
                                                                     x8038))))
                                                          (car x8037))))
                                                g8036)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8040
                                                        (letrec ((x8041
                                                                  (letrec ((x8042
                                                                            (letrec ((x8043
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8043))))
                                                                    (cdr
                                                                     x8042))))
                                                          (cdr x8041))))
                                                g8040)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8044
                                                        (letrec ((x8046
                                                                  (number? x)))
                                                          (assert x8046)))
                                                       (g8045
                                                        (letrec ((x8047
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8047))))
                                                g8045)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8048
                                                        (letrec ((x8049
                                                                  (letrec ((x8050
                                                                            (letrec ((x8051
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8051))))
                                                                    (car
                                                                     x8050))))
                                                          (car x8049))))
                                                g8048)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8052
                                                        (letrec ((x8055
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8055)))
                                                       (g8053
                                                        (letrec ((x8056
                                                                  (list?
                                                                   args)))
                                                          (assert x8056)))
                                                       (g8054
                                                        (letrec ((x-cnd8057
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8057
                                                            (letrec ((g8058
                                                                      (proc)))
                                                              g8058)
                                                            (letrec ((x-cnd8059
                                                                      (letrec ((x8060
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8060))))
                                                              (if x-cnd8059
                                                                (letrec ((g8061
                                                                          (letrec ((x8062
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8062))))
                                                                  g8061)
                                                                (letrec ((x-cnd8063
                                                                          (letrec ((x8064
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8064))))
                                                                  (if x-cnd8063
                                                                    (letrec ((g8065
                                                                              (letrec ((x8067
                                                                                        (car
                                                                                         args))
                                                                                       (x8066
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8067
                                                                                 x8066))))
                                                                      g8065)
                                                                    (letrec ((x-cnd8068
                                                                              (letrec ((x8069
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8069))))
                                                                      (if x-cnd8068
                                                                        (letrec ((g8070
                                                                                  (letrec ((x8073
                                                                                            (car
                                                                                             args))
                                                                                           (x8072
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8071
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8073
                                                                                     x8072
                                                                                     x8071))))
                                                                          g8070)
                                                                        (letrec ((x-cnd8074
                                                                                  (letrec ((x8075
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8075))))
                                                                          (if x-cnd8074
                                                                            (letrec ((g8076
                                                                                      (letrec ((x8080
                                                                                                (car
                                                                                                 args))
                                                                                               (x8079
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8078
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8077
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8080
                                                                                         x8079
                                                                                         x8078
                                                                                         x8077))))
                                                                              g8076)
                                                                            (letrec ((x-cnd8081
                                                                                      (letrec ((x8082
                                                                                                (letrec ((x8083
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8083))))
                                                                                        (null?
                                                                                         x8082))))
                                                                              (if x-cnd8081
                                                                                (letrec ((g8084
                                                                                          (letrec ((x8090
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8089
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8088
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8087
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8085
                                                                                                    (letrec ((x8086
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8086))))
                                                                                            (proc
                                                                                             x8090
                                                                                             x8089
                                                                                             x8088
                                                                                             x8087
                                                                                             x8085))))
                                                                                  g8084)
                                                                                (letrec ((x-cnd8091
                                                                                          (letrec ((x8092
                                                                                                    (letrec ((x8093
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8093))))
                                                                                            (null?
                                                                                             x8092))))
                                                                                  (if x-cnd8091
                                                                                    (letrec ((g8094
                                                                                              (letrec ((x8102
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8101
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8100
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8099
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8097
                                                                                                        (letrec ((x8098
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8098)))
                                                                                                       (x8095
                                                                                                        (letrec ((x8096
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8096))))
                                                                                                (proc
                                                                                                 x8102
                                                                                                 x8101
                                                                                                 x8100
                                                                                                 x8099
                                                                                                 x8097
                                                                                                 x8095))))
                                                                                      g8094)
                                                                                    (letrec ((x-cnd8103
                                                                                              (letrec ((x8104
                                                                                                        (letrec ((x8105
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8105))))
                                                                                                (null?
                                                                                                 x8104))))
                                                                                      (if x-cnd8103
                                                                                        (letrec ((g8106
                                                                                                  (letrec ((x8116
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8115
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8114
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8113
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8111
                                                                                                            (letrec ((x8112
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8112)))
                                                                                                           (x8109
                                                                                                            (letrec ((x8110
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8110)))
                                                                                                           (x8107
                                                                                                            (letrec ((x8108
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8108))))
                                                                                                    (proc
                                                                                                     x8116
                                                                                                     x8115
                                                                                                     x8114
                                                                                                     x8113
                                                                                                     x8111
                                                                                                     x8109
                                                                                                     x8107))))
                                                                                          g8106)
                                                                                        (letrec ((g8117
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8117)))))))))))))))))))
                                                g8054)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8118
                                                        (letrec ((x8120
                                                                  (list? l)))
                                                          (assert x8120)))
                                                       (g8119
                                                        (letrec ((x-cnd8121
                                                                  (null? l)))
                                                          (if x-cnd8121
                                                            #f
                                                            (letrec ((x-cnd8122
                                                                      (letrec ((x8123
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8123
                                                                         e))))
                                                              (if x-cnd8122
                                                                l
                                                                (letrec ((x8124
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8124))))))))
                                                g8119)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8125
                                                        (letrec ((x8126
                                                                  (letrec ((x8127
                                                                            (letrec ((x8128
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8128))))
                                                                    (cdr
                                                                     x8127))))
                                                          (cdr x8126))))
                                                g8125)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8129
                                                        (letrec ((x8130
                                                                  (letrec ((x8131
                                                                            (letrec ((x8132
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8132))))
                                                                    (cdr
                                                                     x8131))))
                                                          (car x8130))))
                                                g8129)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8133 (random 42)))
                                                g8133)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8134
                                                        (letrec ((x8136
                                                                  (number? x)))
                                                          (assert x8136)))
                                                       (g8135 (= x 0)))
                                                g8135)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8137
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8138
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8138))))
                                                g8137)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8139
                                                        (letrec ((x8140
                                                                  (cdr x)))
                                                          (car x8140))))
                                                g8139)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8141
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd8142
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8142
                                                                      (letrec ((x8143
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8143))
                                                                      #f))))
                                                          (letrec ((g8144
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g8144))))
                                                g8141)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8145
                                                        (letrec ((x8146
                                                                  (letrec ((x8147
                                                                            (letrec ((x8148
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8148))))
                                                                    (cdr
                                                                     x8147))))
                                                          (cdr x8146))))
                                                g8145)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8149
                                                        (letrec ((x-cnd8150
                                                                  (letrec ((x8151
                                                                            #\0))
                                                                    (char<=?
                                                                     x8151
                                                                     c))))
                                                          (if x-cnd8150
                                                            (letrec ((x8152
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8152))
                                                            #f))))
                                                g8149)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8153
                                                        (letrec ((x8155
                                                                  (list? l)))
                                                          (assert x8155)))
                                                       (g8154
                                                        (letrec ((x-cnd8156
                                                                  (null? l)))
                                                          (if x-cnd8156
                                                            #f
                                                            (letrec ((x-cnd8157
                                                                      (letrec ((x8158
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8158
                                                                         k))))
                                                              (if x-cnd8157
                                                                (car l)
                                                                (letrec ((x8159
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8159))))))))
                                                g8154)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8160 (if x #f #t)))
                                                g8160)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8161 (append l1 l2)))
                                                g8161)))
                                           (memq
                                            (lambda (e l)
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
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8167
                                                                         e))))
                                                              (if x-cnd8166
                                                                l
                                                                (letrec ((x8168
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8168))))))))
                                                g8163)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8169
                                                        (letrec ((x8170
                                                                  (letrec ((x8171
                                                                            (letrec ((x8172
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8172))))
                                                                    (cdr
                                                                     x8171))))
                                                          (car x8170))))
                                                g8169)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8173
                                                        (letrec ((x8175
                                                                  (list? l)))
                                                          (assert x8175)))
                                                       (g8174
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8176
                                                                              (letrec ((x-cnd8177
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8177
                                                                                  0
                                                                                  (letrec ((x8178
                                                                                            (letrec ((x8179
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8179))))
                                                                                    (+
                                                                                     1
                                                                                     x8178))))))
                                                                      g8176))))
                                                          (letrec ((g8180
                                                                    (rec l)))
                                                            g8180))))
                                                g8174)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8181
                                                        (letrec ((x8184
                                                                  (char? c1)))
                                                          (assert x8184)))
                                                       (g8182
                                                        (letrec ((x8185
                                                                  (char? c2)))
                                                          (assert x8185)))
                                                       (g8183
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8186
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8186))))
                                                g8183)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8187
                                                        (letrec ((x8188
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8188))))
                                                g8187)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8189
                                                        (letrec ((x8190
                                                                  (letrec ((x8191
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8191))))
                                                          (cdr x8190))))
                                                g8189)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8192
                                                        (letrec ((x8194
                                                                  (list? l)))
                                                          (assert x8194)))
                                                       (g8193
                                                        (letrec ((x-cnd8195
                                                                  (null? l)))
                                                          (if x-cnd8195
                                                            #f
                                                            (letrec ((x-cnd8196
                                                                      (letrec ((x8197
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8197
                                                                         k))))
                                                              (if x-cnd8196
                                                                (car l)
                                                                (letrec ((x8198
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8198))))))))
                                                g8193)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8199
                                                        (letrec ((x8200
                                                                  (car x)))
                                                          (car x8200))))
                                                g8199)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8201
                                                        (letrec ((x8204
                                                                  (char? c1)))
                                                          (assert x8204)))
                                                       (g8202
                                                        (letrec ((x8205
                                                                  (char? c2)))
                                                          (assert x8205)))
                                                       (g8203
                                                        (letrec ((x8206
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8206))))
                                                g8203)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8207
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8208
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8208))))
                                                g8207)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8209
                                                        (letrec ((x8212
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8212)))
                                                       (g8210
                                                        (letrec ((x8213
                                                                  (list? l)))
                                                          (assert x8213)))
                                                       (g8211
                                                        (letrec ((x-cnd8214
                                                                  (null? l)))
                                                          (if x-cnd8214
                                                            #t
                                                            (letrec ((x-cnd8215
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8215
                                                                (letrec ((g8216
                                                                          (letrec ((x8218
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8218)))
                                                                         (g8217
                                                                          (letrec ((x8219
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8219))))
                                                                  g8217)
                                                                '()))))))
                                                g8211)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8220
                                                        (letrec ((x8222
                                                                  (number? x)))
                                                          (assert x8222)))
                                                       (g8221
                                                        (letrec ((x-cnd8223
                                                                  (< x 0)))
                                                          (if x-cnd8223
                                                            (- 0 x)
                                                            x))))
                                                g8221)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8224
                                                        (letrec ((x8227
                                                                  (char? c1)))
                                                          (assert x8227)))
                                                       (g8225
                                                        (letrec ((x8228
                                                                  (char? c2)))
                                                          (assert x8228)))
                                                       (g8226
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8229
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8229))))
                                                g8226)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8230
                                                        (letrec ((x8231
                                                                  (letrec ((x8232
                                                                            (letrec ((x8233
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8233))))
                                                                    (cdr
                                                                     x8232))))
                                                          (car x8231))))
                                                g8230)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8234 #f)) g8234)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8235
                                                        (letrec ((x8237
                                                                  (letrec ((x8238
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8238)))
                                                                 (x8236
                                                                  (gcd m n)))
                                                          (/ x8237 x8236))))
                                                g8235)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8239
                                                        (letrec ((x8243
                                                                  (list? l)))
                                                          (assert x8243)))
                                                       (g8240
                                                        (letrec ((x8244
                                                                  (number?
                                                                   index)))
                                                          (assert x8244)))
                                                       (g8241
                                                        (letrec ((x8245
                                                                  (letrec ((x8246
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8246))))
                                                          (assert x8245)))
                                                       (g8242
                                                        (letrec ((x-cnd8247
                                                                  (= index 0)))
                                                          (if x-cnd8247
                                                            (car l)
                                                            (letrec ((x8249
                                                                      (cdr l))
                                                                     (x8248
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8249
                                                               x8248))))))
                                                g8242)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8250
                                                        (letrec ((x-cnd8251
                                                                  (= b 0)))
                                                          (if x-cnd8251
                                                            a
                                                            (letrec ((x8252
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8252))))))
                                                g8250)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8253
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8253)))
                                           (image?
                                            (lambda (image7656)
                                              (letrec ((g8254
                                                        (letrec ((x8255
                                                                  (car
                                                                   image7656)))
                                                          (eq? x8255 'image))))
                                                g8254)))
                                           (image/c
                                            (lambda (j7406 k7407 v7405)
                                              (letrec ((g8256
                                                        (cons image '())))
                                                g8256)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8257 (image)))
                                                g8257)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8258 (image)))
                                                g8258)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8259 (image)))
                                                g8259)))
                                           (min
                                            (lambda (x y)
                                              (letrec ((g8260
                                                        (letrec ((x-cnd8261
                                                                  (<= x y)))
                                                          (if x-cnd8261 x y))))
                                                g8260)))
                                           (max
                                            (lambda (x y)
                                              (letrec ((g8262
                                                        (letrec ((x-cnd8263
                                                                  (>= x y)))
                                                          (if x-cnd8263 x y))))
                                                g8262)))
                                           (sqr
                                            (lambda (x)
                                              (letrec ((g8264 (* x x)))
                                                g8264)))
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
                                              (letrec ((g8265
                                                        (lambda (g7409)
                                                          (letrec ((g8266
                                                                    (letrec ((x7413
                                                                              ((lambda (g7417
                                                                                        g7418
                                                                                        g7419)
                                                                                 (letrec ((g8267
                                                                                           (letrec ((x-cnd8268
                                                                                                     ((lambda (v7416)
                                                                                                        (letrec ((g8269
                                                                                                                  (letrec ((x-cnd8270
                                                                                                                            (eq?
                                                                                                                             'x
                                                                                                                             v7416)))
                                                                                                                    (if x-cnd8270
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8271
                                                                                                                                (eq?
                                                                                                                                 'y
                                                                                                                                 v7416)))
                                                                                                                        (if x-cnd8271
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8272
                                                                                                                                    (eq?
                                                                                                                                     'posn
                                                                                                                                     v7416)))
                                                                                                                            (if x-cnd8272
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8273
                                                                                                                                        (eq?
                                                                                                                                         'move-toward/speed
                                                                                                                                         v7416)))
                                                                                                                                (if x-cnd8273
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8274
                                                                                                                                            (eq?
                                                                                                                                             'draw-on/image
                                                                                                                                             v7416)))
                                                                                                                                    (if x-cnd8274
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'dist
                                                                                                                                       v7416)))))))))))))
                                                                                                          g8269))
                                                                                                      g7419)))
                                                                                             (if x-cnd8268
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
                                                                                   g8267))
                                                                               j7410
                                                                               k7411
                                                                               g7409)))
                                                                      (letrec ((g8275
                                                                                (letrec ((x8277
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8278
                                                                                                       (letrec ((x-cnd8279
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'x)))
                                                                                                         (if x-cnd8279
                                                                                                           (letrec ((g8280
                                                                                                                     (lambda (j7420
                                                                                                                              k7421
                                                                                                                              f7422)
                                                                                                                       (letrec ((g8281
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8282
                                                                                                                                             (letrec ((x8283
                                                                                                                                                       (f7422)))
                                                                                                                                               (real?
                                                                                                                                                j7420
                                                                                                                                                k7421
                                                                                                                                                x8283))))
                                                                                                                                     g8282))))
                                                                                                                         g8281))))
                                                                                                             g8280)
                                                                                                           (letrec ((x-cnd8284
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'y)))
                                                                                                             (if x-cnd8284
                                                                                                               (letrec ((g8285
                                                                                                                         (lambda (j7423
                                                                                                                                  k7424
                                                                                                                                  f7425)
                                                                                                                           (letrec ((g8286
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8287
                                                                                                                                                 (letrec ((x8288
                                                                                                                                                           (f7425)))
                                                                                                                                                   (real?
                                                                                                                                                    j7423
                                                                                                                                                    k7424
                                                                                                                                                    x8288))))
                                                                                                                                         g8287))))
                                                                                                                             g8286))))
                                                                                                                 g8285)
                                                                                                               (letrec ((x-cnd8289
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'posn)))
                                                                                                                 (if x-cnd8289
                                                                                                                   (letrec ((g8290
                                                                                                                             (lambda (j7426
                                                                                                                                      k7427
                                                                                                                                      f7428)
                                                                                                                               (letrec ((g8291
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8292
                                                                                                                                                     (letrec ((x8293
                                                                                                                                                               (f7428)))
                                                                                                                                                       (posn/c
                                                                                                                                                        j7426
                                                                                                                                                        k7427
                                                                                                                                                        x8293))))
                                                                                                                                             g8292))))
                                                                                                                                 g8291))))
                                                                                                                     g8290)
                                                                                                                   (letrec ((x-cnd8294
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward/speed)))
                                                                                                                     (if x-cnd8294
                                                                                                                       (letrec ((g8295
                                                                                                                                 (lambda (j7431
                                                                                                                                          k7432
                                                                                                                                          f7433)
                                                                                                                                   (letrec ((g8296
                                                                                                                                             (lambda (g7429
                                                                                                                                                      g7430)
                                                                                                                                               (letrec ((g8297
                                                                                                                                                         (letrec ((x8298
                                                                                                                                                                   (letrec ((x8300
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7431
                                                                                                                                                                              k7432
                                                                                                                                                                              g7429))
                                                                                                                                                                            (x8299
                                                                                                                                                                             (real?
                                                                                                                                                                              j7431
                                                                                                                                                                              k7432
                                                                                                                                                                              g7430)))
                                                                                                                                                                     (f7433
                                                                                                                                                                      x8300
                                                                                                                                                                      x8299))))
                                                                                                                                                           (posn/c
                                                                                                                                                            j7431
                                                                                                                                                            k7432
                                                                                                                                                            x8298))))
                                                                                                                                                 g8297))))
                                                                                                                                     g8296))))
                                                                                                                         g8295)
                                                                                                                       (letrec ((x-cnd8301
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'draw-on/image)))
                                                                                                                         (if x-cnd8301
                                                                                                                           (letrec ((g8302
                                                                                                                                     (lambda (j7436
                                                                                                                                              k7437
                                                                                                                                              f7438)
                                                                                                                                       (letrec ((g8303
                                                                                                                                                 (lambda (g7434
                                                                                                                                                          g7435)
                                                                                                                                                   (letrec ((g8304
                                                                                                                                                             (letrec ((x8305
                                                                                                                                                                       (letrec ((x8307
                                                                                                                                                                                 (image/c
                                                                                                                                                                                  j7436
                                                                                                                                                                                  k7437
                                                                                                                                                                                  g7434))
                                                                                                                                                                                (x8306
                                                                                                                                                                                 (image/c
                                                                                                                                                                                  j7436
                                                                                                                                                                                  k7437
                                                                                                                                                                                  g7435)))
                                                                                                                                                                         (f7438
                                                                                                                                                                          x8307
                                                                                                                                                                          x8306))))
                                                                                                                                                               (image/c
                                                                                                                                                                j7436
                                                                                                                                                                k7437
                                                                                                                                                                x8305))))
                                                                                                                                                     g8304))))
                                                                                                                                         g8303))))
                                                                                                                             g8302)
                                                                                                                           (letrec ((x-cnd8308
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'dist)))
                                                                                                                             (if x-cnd8308
                                                                                                                               (letrec ((g8309
                                                                                                                                         (lambda (j7440
                                                                                                                                                  k7441
                                                                                                                                                  f7442)
                                                                                                                                           (letrec ((g8310
                                                                                                                                                     (lambda (g7439)
                                                                                                                                                       (letrec ((g8311
                                                                                                                                                                 (letrec ((x8312
                                                                                                                                                                           (letrec ((x8313
                                                                                                                                                                                     (posn/c
                                                                                                                                                                                      j7440
                                                                                                                                                                                      k7441
                                                                                                                                                                                      g7439)))
                                                                                                                                                                             (f7442
                                                                                                                                                                              x8313))))
                                                                                                                                                                   (real?
                                                                                                                                                                    j7440
                                                                                                                                                                    k7441
                                                                                                                                                                    x8312))))
                                                                                                                                                         g8311))))
                                                                                                                                             g8310))))
                                                                                                                                 g8309)
                                                                                                                               (letrec ((g8314
                                                                                                                                         "error"))
                                                                                                                                 g8314)))))))))))))))
                                                                                               g8278))
                                                                                           x7413))
                                                                                         (x8276
                                                                                          (f7412
                                                                                           x7413)))
                                                                                  (x8277
                                                                                   j7410
                                                                                   k7411
                                                                                   x8276))))
                                                                        g8275))))
                                                            g8266))))
                                                g8265)))
                                           (player/c
                                            (lambda (j7444 k7445 f7446)
                                              (letrec ((g8315
                                                        (lambda (g7443)
                                                          (letrec ((g8316
                                                                    (letrec ((x7447
                                                                              ((lambda (g7451
                                                                                        g7452
                                                                                        g7453)
                                                                                 (letrec ((g8317
                                                                                           (letrec ((x-cnd8318
                                                                                                     ((lambda (v7450)
                                                                                                        (letrec ((g8319
                                                                                                                  (letrec ((x-cnd8320
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7450)))
                                                                                                                    (if x-cnd8320
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8321
                                                                                                                                (eq?
                                                                                                                                 'move-toward
                                                                                                                                 v7450)))
                                                                                                                        (if x-cnd8321
                                                                                                                          #t
                                                                                                                          (eq?
                                                                                                                           'draw-on
                                                                                                                           v7450)))))))
                                                                                                          g8319))
                                                                                                      g7453)))
                                                                                             (if x-cnd8318
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
                                                                                   g8317))
                                                                               j7444
                                                                               k7445
                                                                               g7443)))
                                                                      (letrec ((g8322
                                                                                (letrec ((x8324
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8325
                                                                                                       (letrec ((x-cnd8326
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8326
                                                                                                           (letrec ((g8327
                                                                                                                     (lambda (j7454
                                                                                                                              k7455
                                                                                                                              f7456)
                                                                                                                       (letrec ((g8328
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8329
                                                                                                                                             (letrec ((x8330
                                                                                                                                                       (f7456)))
                                                                                                                                               (posn/c
                                                                                                                                                j7454
                                                                                                                                                k7455
                                                                                                                                                x8330))))
                                                                                                                                     g8329))))
                                                                                                                         g8328))))
                                                                                                             g8327)
                                                                                                           (letrec ((x-cnd8331
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'move-toward)))
                                                                                                             (if x-cnd8331
                                                                                                               (letrec ((g8332
                                                                                                                         (lambda (j7458
                                                                                                                                  k7459
                                                                                                                                  f7460)
                                                                                                                           (letrec ((g8333
                                                                                                                                     (lambda (g7457)
                                                                                                                                       (letrec ((g8334
                                                                                                                                                 (letrec ((x8335
                                                                                                                                                           (letrec ((x8336
                                                                                                                                                                     (posn/c
                                                                                                                                                                      j7458
                                                                                                                                                                      k7459
                                                                                                                                                                      g7457)))
                                                                                                                                                             (f7460
                                                                                                                                                              x8336))))
                                                                                                                                                   (player/c
                                                                                                                                                    j7458
                                                                                                                                                    k7459
                                                                                                                                                    x8335))))
                                                                                                                                         g8334))))
                                                                                                                             g8333))))
                                                                                                                 g8332)
                                                                                                               (letrec ((x-cnd8337
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8337
                                                                                                                   (letrec ((g8338
                                                                                                                             (lambda (j7462
                                                                                                                                      k7463
                                                                                                                                      f7464)
                                                                                                                               (letrec ((g8339
                                                                                                                                         (lambda (g7461)
                                                                                                                                           (letrec ((g8340
                                                                                                                                                     (letrec ((x8341
                                                                                                                                                               (letrec ((x8342
                                                                                                                                                                         (image/c
                                                                                                                                                                          j7462
                                                                                                                                                                          k7463
                                                                                                                                                                          g7461)))
                                                                                                                                                                 (f7464
                                                                                                                                                                  x8342))))
                                                                                                                                                       (image/c
                                                                                                                                                        j7462
                                                                                                                                                        k7463
                                                                                                                                                        x8341))))
                                                                                                                                             g8340))))
                                                                                                                                 g8339))))
                                                                                                                     g8338)
                                                                                                                   (letrec ((g8343
                                                                                                                             "error"))
                                                                                                                     g8343)))))))))
                                                                                               g8325))
                                                                                           x7447))
                                                                                         (x8323
                                                                                          (f7446
                                                                                           x7447)))
                                                                                  (x8324
                                                                                   j7444
                                                                                   k7445
                                                                                   x8323))))
                                                                        g8322))))
                                                            g8316))))
                                                g8315)))
                                           (zombie/c
                                            (lambda (j7466 k7467 f7468)
                                              (letrec ((g8344
                                                        (lambda (g7465)
                                                          (letrec ((g8345
                                                                    (letrec ((x7469
                                                                              ((lambda (g7473
                                                                                        g7474
                                                                                        g7475)
                                                                                 (letrec ((g8346
                                                                                           (letrec ((x-cnd8347
                                                                                                     ((lambda (v7472)
                                                                                                        (letrec ((g8348
                                                                                                                  (letrec ((x-cnd8349
                                                                                                                            (eq?
                                                                                                                             'posn
                                                                                                                             v7472)))
                                                                                                                    (if x-cnd8349
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8350
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7472)))
                                                                                                                        (if x-cnd8350
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8351
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7472)))
                                                                                                                            (if x-cnd8351
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'move-toward
                                                                                                                               v7472)))))))))
                                                                                                          g8348))
                                                                                                      g7475)))
                                                                                             (if x-cnd8347
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
                                                                                   g8346))
                                                                               j7466
                                                                               k7467
                                                                               g7465)))
                                                                      (letrec ((g8352
                                                                                (letrec ((x8354
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8355
                                                                                                       (letrec ((x-cnd8356
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'posn)))
                                                                                                         (if x-cnd8356
                                                                                                           (letrec ((g8357
                                                                                                                     (lambda (j7476
                                                                                                                              k7477
                                                                                                                              f7478)
                                                                                                                       (letrec ((g8358
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8359
                                                                                                                                             (letrec ((x8360
                                                                                                                                                       (f7478)))
                                                                                                                                               (posn/c
                                                                                                                                                j7476
                                                                                                                                                k7477
                                                                                                                                                x8360))))
                                                                                                                                     g8359))))
                                                                                                                         g8358))))
                                                                                                             g8357)
                                                                                                           (letrec ((x-cnd8361
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8361
                                                                                                               (letrec ((g8362
                                                                                                                         (lambda (j7481
                                                                                                                                  k7482
                                                                                                                                  f7483)
                                                                                                                           (letrec ((g8363
                                                                                                                                     (lambda (g7479
                                                                                                                                              g7480)
                                                                                                                                       (letrec ((g8364
                                                                                                                                                 (letrec ((x8365
                                                                                                                                                           (letrec ((x8367
                                                                                                                                                                     (string?
                                                                                                                                                                      j7481
                                                                                                                                                                      k7482
                                                                                                                                                                      g7479))
                                                                                                                                                                    (x8366
                                                                                                                                                                     (image/c
                                                                                                                                                                      j7481
                                                                                                                                                                      k7482
                                                                                                                                                                      g7480)))
                                                                                                                                                             (f7483
                                                                                                                                                              x8367
                                                                                                                                                              x8366))))
                                                                                                                                                   (image/c
                                                                                                                                                    j7481
                                                                                                                                                    k7482
                                                                                                                                                    x8365))))
                                                                                                                                         g8364))))
                                                                                                                             g8363))))
                                                                                                                 g8362)
                                                                                                               (letrec ((x-cnd8368
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8368
                                                                                                                   (letrec ((g8369
                                                                                                                             (lambda (j7485
                                                                                                                                      k7486
                                                                                                                                      f7487)
                                                                                                                               (letrec ((g8370
                                                                                                                                         (lambda (g7484)
                                                                                                                                           (letrec ((g8371
                                                                                                                                                     (letrec ((x8372
                                                                                                                                                               (letrec ((x8373
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7485
                                                                                                                                                                          k7486
                                                                                                                                                                          g7484)))
                                                                                                                                                                 (f7487
                                                                                                                                                                  x8373))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7485
                                                                                                                                                        k7486
                                                                                                                                                        x8372))))
                                                                                                                                             g8371))))
                                                                                                                                 g8370))))
                                                                                                                     g8369)
                                                                                                                   (letrec ((x-cnd8374
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'move-toward)))
                                                                                                                     (if x-cnd8374
                                                                                                                       (letrec ((g8375
                                                                                                                                 (lambda (j7489
                                                                                                                                          k7490
                                                                                                                                          f7491)
                                                                                                                                   (letrec ((g8376
                                                                                                                                             (lambda (g7488)
                                                                                                                                               (letrec ((g8377
                                                                                                                                                         (letrec ((x8378
                                                                                                                                                                   (letrec ((x8379
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7489
                                                                                                                                                                              k7490
                                                                                                                                                                              g7488)))
                                                                                                                                                                     (f7491
                                                                                                                                                                      x8379))))
                                                                                                                                                           (zombie/c
                                                                                                                                                            j7489
                                                                                                                                                            k7490
                                                                                                                                                            x8378))))
                                                                                                                                                 g8377))))
                                                                                                                                     g8376))))
                                                                                                                         g8375)
                                                                                                                       (letrec ((g8380
                                                                                                                                 "error"))
                                                                                                                         g8380)))))))))))
                                                                                               g8355))
                                                                                           x7469))
                                                                                         (x8353
                                                                                          (f7468
                                                                                           x7469)))
                                                                                  (x8354
                                                                                   j7466
                                                                                   k7467
                                                                                   x8353))))
                                                                        g8352))))
                                                            g8345))))
                                                g8344)))
                                           (horde/c
                                            (lambda (j7493 k7494 f7495)
                                              (letrec ((g8381
                                                        (lambda (g7492)
                                                          (letrec ((g8382
                                                                    (letrec ((x7496
                                                                              ((lambda (g7500
                                                                                        g7501
                                                                                        g7502)
                                                                                 (letrec ((g8383
                                                                                           (letrec ((x-cnd8384
                                                                                                     ((lambda (v7499)
                                                                                                        (letrec ((g8385
                                                                                                                  (letrec ((x-cnd8386
                                                                                                                            (eq?
                                                                                                                             'dead
                                                                                                                             v7499)))
                                                                                                                    (if x-cnd8386
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8387
                                                                                                                                (eq?
                                                                                                                                 'undead
                                                                                                                                 v7499)))
                                                                                                                        (if x-cnd8387
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8388
                                                                                                                                    (eq?
                                                                                                                                     'draw-on
                                                                                                                                     v7499)))
                                                                                                                            (if x-cnd8388
                                                                                                                              #t
                                                                                                                              (letrec ((x-cnd8389
                                                                                                                                        (eq?
                                                                                                                                         'touching?
                                                                                                                                         v7499)))
                                                                                                                                (if x-cnd8389
                                                                                                                                  #t
                                                                                                                                  (letrec ((x-cnd8390
                                                                                                                                            (eq?
                                                                                                                                             'move-toward
                                                                                                                                             v7499)))
                                                                                                                                    (if x-cnd8390
                                                                                                                                      #t
                                                                                                                                      (eq?
                                                                                                                                       'eat-brains
                                                                                                                                       v7499)))))))))))))
                                                                                                          g8385))
                                                                                                      g7502)))
                                                                                             (if x-cnd8384
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
                                                                                   g8383))
                                                                               j7493
                                                                               k7494
                                                                               g7492)))
                                                                      (letrec ((g8391
                                                                                (letrec ((x8393
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8394
                                                                                                       (letrec ((x-cnd8395
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'dead)))
                                                                                                         (if x-cnd8395
                                                                                                           (letrec ((g8396
                                                                                                                     (lambda (j7503
                                                                                                                              k7504
                                                                                                                              f7505)
                                                                                                                       (letrec ((g8397
                                                                                                                                 (lambda ()
                                                                                                                                   (letrec ((g8398
                                                                                                                                             (letrec ((x8399
                                                                                                                                                       (f7505)))
                                                                                                                                               (zombies/c
                                                                                                                                                j7503
                                                                                                                                                k7504
                                                                                                                                                x8399))))
                                                                                                                                     g8398))))
                                                                                                                         g8397))))
                                                                                                             g8396)
                                                                                                           (letrec ((x-cnd8400
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'undead)))
                                                                                                             (if x-cnd8400
                                                                                                               (letrec ((g8401
                                                                                                                         (lambda (j7506
                                                                                                                                  k7507
                                                                                                                                  f7508)
                                                                                                                           (letrec ((g8402
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8403
                                                                                                                                                 (letrec ((x8404
                                                                                                                                                           (f7508)))
                                                                                                                                                   (zombies/c
                                                                                                                                                    j7506
                                                                                                                                                    k7507
                                                                                                                                                    x8404))))
                                                                                                                                         g8403))))
                                                                                                                             g8402))))
                                                                                                                 g8401)
                                                                                                               (letrec ((x-cnd8405
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'draw-on)))
                                                                                                                 (if x-cnd8405
                                                                                                                   (letrec ((g8406
                                                                                                                             (lambda (j7510
                                                                                                                                      k7511
                                                                                                                                      f7512)
                                                                                                                               (letrec ((g8407
                                                                                                                                         (lambda (g7509)
                                                                                                                                           (letrec ((g8408
                                                                                                                                                     (letrec ((x8409
                                                                                                                                                               (letrec ((x8410
                                                                                                                                                                         (image/c
                                                                                                                                                                          j7510
                                                                                                                                                                          k7511
                                                                                                                                                                          g7509)))
                                                                                                                                                                 (f7512
                                                                                                                                                                  x8410))))
                                                                                                                                                       (image/c
                                                                                                                                                        j7510
                                                                                                                                                        k7511
                                                                                                                                                        x8409))))
                                                                                                                                             g8408))))
                                                                                                                                 g8407))))
                                                                                                                     g8406)
                                                                                                                   (letrec ((x-cnd8411
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'touching?)))
                                                                                                                     (if x-cnd8411
                                                                                                                       (letrec ((g8412
                                                                                                                                 (lambda (j7514
                                                                                                                                          k7515
                                                                                                                                          f7516)
                                                                                                                                   (letrec ((g8413
                                                                                                                                             (lambda (g7513)
                                                                                                                                               (letrec ((g8414
                                                                                                                                                         (letrec ((x8415
                                                                                                                                                                   (letrec ((x8416
                                                                                                                                                                             (posn/c
                                                                                                                                                                              j7514
                                                                                                                                                                              k7515
                                                                                                                                                                              g7513)))
                                                                                                                                                                     (f7516
                                                                                                                                                                      x8416))))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7514
                                                                                                                                                            k7515
                                                                                                                                                            x8415))))
                                                                                                                                                 g8414))))
                                                                                                                                     g8413))))
                                                                                                                         g8412)
                                                                                                                       (letrec ((x-cnd8417
                                                                                                                                 (equal?
                                                                                                                                  msg
                                                                                                                                  'move-toward)))
                                                                                                                         (if x-cnd8417
                                                                                                                           (letrec ((g8418
                                                                                                                                     (lambda (j7518
                                                                                                                                              k7519
                                                                                                                                              f7520)
                                                                                                                                       (letrec ((g8419
                                                                                                                                                 (lambda (g7517)
                                                                                                                                                   (letrec ((g8420
                                                                                                                                                             (letrec ((x8421
                                                                                                                                                                       (letrec ((x8422
                                                                                                                                                                                 (posn/c
                                                                                                                                                                                  j7518
                                                                                                                                                                                  k7519
                                                                                                                                                                                  g7517)))
                                                                                                                                                                         (f7520
                                                                                                                                                                          x8422))))
                                                                                                                                                               (horde/c
                                                                                                                                                                j7518
                                                                                                                                                                k7519
                                                                                                                                                                x8421))))
                                                                                                                                                     g8420))))
                                                                                                                                         g8419))))
                                                                                                                             g8418)
                                                                                                                           (letrec ((x-cnd8423
                                                                                                                                     (equal?
                                                                                                                                      msg
                                                                                                                                      'eat-brains)))
                                                                                                                             (if x-cnd8423
                                                                                                                               (letrec ((g8424
                                                                                                                                         (lambda (j7521
                                                                                                                                                  k7522
                                                                                                                                                  f7523)
                                                                                                                                           (letrec ((g8425
                                                                                                                                                     (lambda ()
                                                                                                                                                       (letrec ((g8426
                                                                                                                                                                 (letrec ((x8427
                                                                                                                                                                           (f7523)))
                                                                                                                                                                   (horde/c
                                                                                                                                                                    j7521
                                                                                                                                                                    k7522
                                                                                                                                                                    x8427))))
                                                                                                                                                         g8426))))
                                                                                                                                             g8425))))
                                                                                                                                 g8424)
                                                                                                                               (letrec ((g8428
                                                                                                                                         "error"))
                                                                                                                                 g8428)))))))))))))))
                                                                                               g8394))
                                                                                           x7496))
                                                                                         (x8392
                                                                                          (f7495
                                                                                           x7496)))
                                                                                  (x8393
                                                                                   j7493
                                                                                   k7494
                                                                                   x8392))))
                                                                        g8391))))
                                                            g8382))))
                                                g8381)))
                                           (zombies/c
                                            (lambda (j7525 k7526 f7527)
                                              (letrec ((g8429
                                                        (lambda (g7524)
                                                          (letrec ((g8430
                                                                    (letrec ((x7528
                                                                              ((lambda (g7532
                                                                                        g7533
                                                                                        g7534)
                                                                                 (letrec ((g8431
                                                                                           (letrec ((x-cnd8432
                                                                                                     ((lambda (v7531)
                                                                                                        (letrec ((g8433
                                                                                                                  (letrec ((x-cnd8434
                                                                                                                            (eq?
                                                                                                                             'move-toward
                                                                                                                             v7531)))
                                                                                                                    (if x-cnd8434
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8435
                                                                                                                                (eq?
                                                                                                                                 'draw-on/color
                                                                                                                                 v7531)))
                                                                                                                        (if x-cnd8435
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8436
                                                                                                                                    (eq?
                                                                                                                                     'touching?
                                                                                                                                     v7531)))
                                                                                                                            (if x-cnd8436
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'kill-all
                                                                                                                               v7531)))))))))
                                                                                                          g8433))
                                                                                                      g7534)))
                                                                                             (if x-cnd8432
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
                                                                                   g8431))
                                                                               j7525
                                                                               k7526
                                                                               g7524)))
                                                                      (letrec ((g8437
                                                                                (letrec ((x8439
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8440
                                                                                                       (letrec ((x-cnd8441
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'move-toward)))
                                                                                                         (if x-cnd8441
                                                                                                           (letrec ((g8442
                                                                                                                     (lambda (j7536
                                                                                                                              k7537
                                                                                                                              f7538)
                                                                                                                       (letrec ((g8443
                                                                                                                                 (lambda (g7535)
                                                                                                                                   (letrec ((g8444
                                                                                                                                             (letrec ((x8445
                                                                                                                                                       (letrec ((x8446
                                                                                                                                                                 (posn/c
                                                                                                                                                                  j7536
                                                                                                                                                                  k7537
                                                                                                                                                                  g7535)))
                                                                                                                                                         (f7538
                                                                                                                                                          x8446))))
                                                                                                                                               (zombies/c
                                                                                                                                                j7536
                                                                                                                                                k7537
                                                                                                                                                x8445))))
                                                                                                                                     g8444))))
                                                                                                                         g8443))))
                                                                                                             g8442)
                                                                                                           (letrec ((x-cnd8447
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'draw-on/color)))
                                                                                                             (if x-cnd8447
                                                                                                               (letrec ((g8448
                                                                                                                         (lambda (j7541
                                                                                                                                  k7542
                                                                                                                                  f7543)
                                                                                                                           (letrec ((g8449
                                                                                                                                     (lambda (g7539
                                                                                                                                              g7540)
                                                                                                                                       (letrec ((g8450
                                                                                                                                                 (letrec ((x8451
                                                                                                                                                           (letrec ((x8453
                                                                                                                                                                     (string?
                                                                                                                                                                      j7541
                                                                                                                                                                      k7542
                                                                                                                                                                      g7539))
                                                                                                                                                                    (x8452
                                                                                                                                                                     (image/c
                                                                                                                                                                      j7541
                                                                                                                                                                      k7542
                                                                                                                                                                      g7540)))
                                                                                                                                                             (f7543
                                                                                                                                                              x8453
                                                                                                                                                              x8452))))
                                                                                                                                                   (image/c
                                                                                                                                                    j7541
                                                                                                                                                    k7542
                                                                                                                                                    x8451))))
                                                                                                                                         g8450))))
                                                                                                                             g8449))))
                                                                                                                 g8448)
                                                                                                               (letrec ((x-cnd8454
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'touching?)))
                                                                                                                 (if x-cnd8454
                                                                                                                   (letrec ((g8455
                                                                                                                             (lambda (j7545
                                                                                                                                      k7546
                                                                                                                                      f7547)
                                                                                                                               (letrec ((g8456
                                                                                                                                         (lambda (g7544)
                                                                                                                                           (letrec ((g8457
                                                                                                                                                     (letrec ((x8458
                                                                                                                                                               (letrec ((x8459
                                                                                                                                                                         (posn/c
                                                                                                                                                                          j7545
                                                                                                                                                                          k7546
                                                                                                                                                                          g7544)))
                                                                                                                                                                 (f7547
                                                                                                                                                                  x8459))))
                                                                                                                                                       (boolean?
                                                                                                                                                        j7545
                                                                                                                                                        k7546
                                                                                                                                                        x8458))))
                                                                                                                                             g8457))))
                                                                                                                                 g8456))))
                                                                                                                     g8455)
                                                                                                                   (letrec ((x-cnd8460
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'kill-all)))
                                                                                                                     (if x-cnd8460
                                                                                                                       (letrec ((g8461
                                                                                                                                 (lambda (j7549
                                                                                                                                          k7550
                                                                                                                                          f7551)
                                                                                                                                   (letrec ((g8462
                                                                                                                                             (lambda (g7548)
                                                                                                                                               (letrec ((g8463
                                                                                                                                                         (letrec ((x8464
                                                                                                                                                                   (letrec ((x8465
                                                                                                                                                                             (zombies/c
                                                                                                                                                                              j7549
                                                                                                                                                                              k7550
                                                                                                                                                                              g7548)))
                                                                                                                                                                     (f7551
                                                                                                                                                                      x8465))))
                                                                                                                                                           (horde/c
                                                                                                                                                            j7549
                                                                                                                                                            k7550
                                                                                                                                                            x8464))))
                                                                                                                                                 g8463))))
                                                                                                                                     g8462))))
                                                                                                                         g8461)
                                                                                                                       (letrec ((g8466
                                                                                                                                 "error"))
                                                                                                                         g8466)))))))))))
                                                                                               g8440))
                                                                                           x7528))
                                                                                         (x8438
                                                                                          (f7527
                                                                                           x7528)))
                                                                                  (x8439
                                                                                   j7525
                                                                                   k7526
                                                                                   x8438))))
                                                                        g8437))))
                                                            g8430))))
                                                g8429)))
                                           (world/c
                                            (lambda (j7553 k7554 f7555)
                                              (letrec ((g8467
                                                        (lambda (g7552)
                                                          (letrec ((g8468
                                                                    (letrec ((x7556
                                                                              ((lambda (g7560
                                                                                        g7561
                                                                                        g7562)
                                                                                 (letrec ((g8469
                                                                                           (letrec ((x-cnd8470
                                                                                                     ((lambda (v7559)
                                                                                                        (letrec ((g8471
                                                                                                                  (letrec ((x-cnd8472
                                                                                                                            (eq?
                                                                                                                             'on-mouse
                                                                                                                             v7559)))
                                                                                                                    (if x-cnd8472
                                                                                                                      #t
                                                                                                                      (letrec ((x-cnd8473
                                                                                                                                (eq?
                                                                                                                                 'on-tick
                                                                                                                                 v7559)))
                                                                                                                        (if x-cnd8473
                                                                                                                          #t
                                                                                                                          (letrec ((x-cnd8474
                                                                                                                                    (eq?
                                                                                                                                     'to-draw
                                                                                                                                     v7559)))
                                                                                                                            (if x-cnd8474
                                                                                                                              #t
                                                                                                                              (eq?
                                                                                                                               'stop-when
                                                                                                                               v7559)))))))))
                                                                                                          g8471))
                                                                                                      g7562)))
                                                                                             (if x-cnd8470
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
                                                                                   g8469))
                                                                               j7553
                                                                               k7554
                                                                               g7552)))
                                                                      (letrec ((g8475
                                                                                (letrec ((x8477
                                                                                          ((lambda (msg)
                                                                                             (letrec ((g8478
                                                                                                       (letrec ((x-cnd8479
                                                                                                                 (equal?
                                                                                                                  msg
                                                                                                                  'on-mouse)))
                                                                                                         (if x-cnd8479
                                                                                                           (letrec ((g8480
                                                                                                                     (lambda (j7566
                                                                                                                              k7567
                                                                                                                              f7568)
                                                                                                                       (letrec ((g8481
                                                                                                                                 (lambda (g7563
                                                                                                                                          g7564
                                                                                                                                          g7565)
                                                                                                                                   (letrec ((g8482
                                                                                                                                             (letrec ((x8483
                                                                                                                                                       (letrec ((x8486
                                                                                                                                                                 (real?
                                                                                                                                                                  j7566
                                                                                                                                                                  k7567
                                                                                                                                                                  g7563))
                                                                                                                                                                (x8485
                                                                                                                                                                 (real?
                                                                                                                                                                  j7566
                                                                                                                                                                  k7567
                                                                                                                                                                  g7564))
                                                                                                                                                                (x8484
                                                                                                                                                                 (string?
                                                                                                                                                                  j7566
                                                                                                                                                                  k7567
                                                                                                                                                                  g7565)))
                                                                                                                                                         (f7568
                                                                                                                                                          x8486
                                                                                                                                                          x8485
                                                                                                                                                          x8484))))
                                                                                                                                               (world/c
                                                                                                                                                j7566
                                                                                                                                                k7567
                                                                                                                                                x8483))))
                                                                                                                                     g8482))))
                                                                                                                         g8481))))
                                                                                                             g8480)
                                                                                                           (letrec ((x-cnd8487
                                                                                                                     (equal?
                                                                                                                      msg
                                                                                                                      'on-tick)))
                                                                                                             (if x-cnd8487
                                                                                                               (letrec ((g8488
                                                                                                                         (lambda (j7569
                                                                                                                                  k7570
                                                                                                                                  f7571)
                                                                                                                           (letrec ((g8489
                                                                                                                                     (lambda ()
                                                                                                                                       (letrec ((g8490
                                                                                                                                                 (letrec ((x8491
                                                                                                                                                           (f7571)))
                                                                                                                                                   (world/c
                                                                                                                                                    j7569
                                                                                                                                                    k7570
                                                                                                                                                    x8491))))
                                                                                                                                         g8490))))
                                                                                                                             g8489))))
                                                                                                                 g8488)
                                                                                                               (letrec ((x-cnd8492
                                                                                                                         (equal?
                                                                                                                          msg
                                                                                                                          'to-draw)))
                                                                                                                 (if x-cnd8492
                                                                                                                   (letrec ((g8493
                                                                                                                             (lambda (j7572
                                                                                                                                      k7573
                                                                                                                                      f7574)
                                                                                                                               (letrec ((g8494
                                                                                                                                         (lambda ()
                                                                                                                                           (letrec ((g8495
                                                                                                                                                     (letrec ((x8496
                                                                                                                                                               (f7574)))
                                                                                                                                                       (image/c
                                                                                                                                                        j7572
                                                                                                                                                        k7573
                                                                                                                                                        x8496))))
                                                                                                                                             g8495))))
                                                                                                                                 g8494))))
                                                                                                                     g8493)
                                                                                                                   (letrec ((x-cnd8497
                                                                                                                             (equal?
                                                                                                                              msg
                                                                                                                              'stop-when)))
                                                                                                                     (if x-cnd8497
                                                                                                                       (letrec ((g8498
                                                                                                                                 (lambda (j7575
                                                                                                                                          k7576
                                                                                                                                          f7577)
                                                                                                                                   (letrec ((g8499
                                                                                                                                             (lambda ()
                                                                                                                                               (letrec ((g8500
                                                                                                                                                         (letrec ((x8501
                                                                                                                                                                   (f7577)))
                                                                                                                                                           (boolean?
                                                                                                                                                            j7575
                                                                                                                                                            k7576
                                                                                                                                                            x8501))))
                                                                                                                                                 g8500))))
                                                                                                                                     g8499))))
                                                                                                                         g8498)
                                                                                                                       (letrec ((g8502
                                                                                                                                 "error"))
                                                                                                                         g8502)))))))))))
                                                                                               g8478))
                                                                                           x7556))
                                                                                         (x8476
                                                                                          (f7555
                                                                                           x7556)))
                                                                                  (x8477
                                                                                   j7553
                                                                                   k7554
                                                                                   x8476))))
                                                                        g8475))))
                                                            g8468))))
                                                g8467)))
                                           (new-world
                                            (lambda (player mouse zombies)
                                              (letrec ((g8503
                                                        (lambda (msg)
                                                          (letrec ((g8504
                                                                    (letrec ((x-cnd8505
                                                                              (equal?
                                                                               msg
                                                                               'on-mouse)))
                                                                      (if x-cnd8505
                                                                        (letrec ((g8506
                                                                                  (lambda (x
                                                                                           y
                                                                                           me)
                                                                                    (letrec ((g8507
                                                                                              (letrec ((x8508
                                                                                                        (letrec ((x-cnd8509
                                                                                                                  (equal?
                                                                                                                   me
                                                                                                                   "leave")))
                                                                                                          (if x-cnd8509
                                                                                                            (letrec ((x8510
                                                                                                                      (player
                                                                                                                       'posn)))
                                                                                                              (x8510))
                                                                                                            (new-posn
                                                                                                             x
                                                                                                             y)))))
                                                                                                (new-world
                                                                                                 player
                                                                                                 x8508
                                                                                                 zombies))))
                                                                                      g8507))))
                                                                          g8506)
                                                                        (letrec ((x-cnd8511
                                                                                  (equal?
                                                                                   msg
                                                                                   'on-tick)))
                                                                          (if x-cnd8511
                                                                            (letrec ((g8512
                                                                                      (lambda ()
                                                                                        (letrec ((g8513
                                                                                                  (letrec ((x8520
                                                                                                            (letrec ((x8521
                                                                                                                      (player
                                                                                                                       'move-toward)))
                                                                                                              (x8521
                                                                                                               mouse)))
                                                                                                           (x8514
                                                                                                            (letrec ((x8517
                                                                                                                      (letrec ((x8518
                                                                                                                                (letrec ((x8519
                                                                                                                                          (zombies
                                                                                                                                           'eat-brains)))
                                                                                                                                  (x8519))))
                                                                                                                        (x8518
                                                                                                                         'move-toward)))
                                                                                                                     (x8515
                                                                                                                      (letrec ((x8516
                                                                                                                                (player
                                                                                                                                 'posn)))
                                                                                                                        (x8516))))
                                                                                                              (x8517
                                                                                                               x8515))))
                                                                                                    (new-world
                                                                                                     x8520
                                                                                                     mouse
                                                                                                     x8514))))
                                                                                          g8513))))
                                                                              g8512)
                                                                            (letrec ((x-cnd8522
                                                                                      (equal?
                                                                                       msg
                                                                                       'to-draw)))
                                                                              (if x-cnd8522
                                                                                (letrec ((g8523
                                                                                          (lambda ()
                                                                                            (letrec ((g8524
                                                                                                      (letrec ((x8527
                                                                                                                (player
                                                                                                                 'draw-on))
                                                                                                               (x8525
                                                                                                                (letrec ((x8526
                                                                                                                          (zombies
                                                                                                                           'draw-on)))
                                                                                                                  (x8526
                                                                                                                   MT-SCENE))))
                                                                                                        (x8527
                                                                                                         x8525))))
                                                                                              g8524))))
                                                                                  g8523)
                                                                                (letrec ((x-cnd8528
                                                                                          (equal?
                                                                                           msg
                                                                                           'stop-when)))
                                                                                  (if x-cnd8528
                                                                                    (letrec ((g8529
                                                                                              (lambda ()
                                                                                                (letrec ((g8530
                                                                                                          (letrec ((x8533
                                                                                                                    (zombies
                                                                                                                     'touching?))
                                                                                                                   (x8531
                                                                                                                    (letrec ((x8532
                                                                                                                              (player
                                                                                                                               'posn)))
                                                                                                                      (x8532))))
                                                                                                            (x8533
                                                                                                             x8531))))
                                                                                                  g8530))))
                                                                                      g8529)
                                                                                    (letrec ((g8534
                                                                                              "unknown message"))
                                                                                      g8534)))))))))))
                                                            g8504))))
                                                g8503)))
                                           (new-player
                                            (lambda (p)
                                              (letrec ((g8535
                                                        (lambda (msg)
                                                          (letrec ((g8536
                                                                    (letrec ((x-cnd8537
                                                                              (equal?
                                                                               msg
                                                                               'posn)))
                                                                      (if x-cnd8537
                                                                        (letrec ((g8538
                                                                                  (lambda ()
                                                                                    (letrec ((g8539
                                                                                              p))
                                                                                      g8539))))
                                                                          g8538)
                                                                        (letrec ((x-cnd8540
                                                                                  (equal?
                                                                                   msg
                                                                                   'move-toward)))
                                                                          (if x-cnd8540
                                                                            (letrec ((g8541
                                                                                      (lambda (q)
                                                                                        (letrec ((g8542
                                                                                                  (letrec ((x8543
                                                                                                            (letrec ((x8544
                                                                                                                      (p
                                                                                                                       'move-toward/speed)))
                                                                                                              (x8544
                                                                                                               q
                                                                                                               PLAYER-SPEED))))
                                                                                                    (new-player
                                                                                                     x8543))))
                                                                                          g8542))))
                                                                              g8541)
                                                                            (letrec ((x-cnd8545
                                                                                      (equal?
                                                                                       msg
                                                                                       'draw-on)))
                                                                              (if x-cnd8545
                                                                                (letrec ((g8546
                                                                                          (lambda (scn)
                                                                                            (letrec ((g8547
                                                                                                      (letrec ((x8548
                                                                                                                (p
                                                                                                                 'draw-on/image)))
                                                                                                        (x8548
                                                                                                         PLAYER-IMG
                                                                                                         scn))))
                                                                                              g8547))))
                                                                                  g8546)
                                                                                (letrec ((g8549
                                                                                          "unknown message"))
                                                                                  g8549)))))))))
                                                            g8536))))
                                                g8535)))
                                           (new-horde
                                            (lambda (undead dead)
                                              (letrec ((g8550
                                                        (lambda (msg)
                                                          (letrec ((g8551
                                                                    (letrec ((x-cnd8552
                                                                              (equal?
                                                                               msg
                                                                               'dead)))
                                                                      (if x-cnd8552
                                                                        (letrec ((g8553
                                                                                  (lambda ()
                                                                                    (letrec ((g8554
                                                                                              dead))
                                                                                      g8554))))
                                                                          g8553)
                                                                        (letrec ((x-cnd8555
                                                                                  (equal?
                                                                                   msg
                                                                                   'undead)))
                                                                          (if x-cnd8555
                                                                            (letrec ((g8556
                                                                                      (lambda ()
                                                                                        (letrec ((g8557
                                                                                                  undead))
                                                                                          g8557))))
                                                                              g8556)
                                                                            (letrec ((x-cnd8558
                                                                                      (equal?
                                                                                       msg
                                                                                       'draw-on)))
                                                                              (if x-cnd8558
                                                                                (letrec ((g8559
                                                                                          (lambda (scn)
                                                                                            (letrec ((g8560
                                                                                                      (letrec ((x8563
                                                                                                                (undead
                                                                                                                 'draw-on/color))
                                                                                                               (x8561
                                                                                                                (letrec ((x8562
                                                                                                                          (dead
                                                                                                                           'draw-on/color)))
                                                                                                                  (x8562
                                                                                                                   "black"
                                                                                                                   scn))))
                                                                                                        (x8563
                                                                                                         "yellow"
                                                                                                         x8561))))
                                                                                              g8560))))
                                                                                  g8559)
                                                                                (letrec ((x-cnd8564
                                                                                          (equal?
                                                                                           msg
                                                                                           'touching?)))
                                                                                  (if x-cnd8564
                                                                                    (letrec ((g8565
                                                                                              (lambda (p)
                                                                                                (letrec ((g8566
                                                                                                          (letrec ((val7263
                                                                                                                    (letrec ((x8567
                                                                                                                              (undead
                                                                                                                               'touching?)))
                                                                                                                      (x8567
                                                                                                                       p))))
                                                                                                            (letrec ((g8568
                                                                                                                      (if val7263
                                                                                                                        val7263
                                                                                                                        (letrec ((x8569
                                                                                                                                  (dead
                                                                                                                                   'touching?)))
                                                                                                                          (x8569
                                                                                                                           p)))))
                                                                                                              g8568))))
                                                                                                  g8566))))
                                                                                      g8565)
                                                                                    (letrec ((x-cnd8570
                                                                                              (equal?
                                                                                               msg
                                                                                               'move-toward)))
                                                                                      (if x-cnd8570
                                                                                        (letrec ((g8571
                                                                                                  (lambda (p)
                                                                                                    (letrec ((g8572
                                                                                                              (letrec ((x8573
                                                                                                                        (letrec ((x8574
                                                                                                                                  (undead
                                                                                                                                   'move-toward)))
                                                                                                                          (x8574
                                                                                                                           p))))
                                                                                                                (new-horde
                                                                                                                 x8573
                                                                                                                 dead))))
                                                                                                      g8572))))
                                                                                          g8571)
                                                                                        (letrec ((x-cnd8575
                                                                                                  (equal?
                                                                                                   msg
                                                                                                   'eat-brains)))
                                                                                          (if x-cnd8575
                                                                                            (letrec ((g8576
                                                                                                      (lambda ()
                                                                                                        (letrec ((g8577
                                                                                                                  (letrec ((x8578
                                                                                                                            (undead
                                                                                                                             'kill-all)))
                                                                                                                    (x8578
                                                                                                                     dead))))
                                                                                                          g8577))))
                                                                                              g8576)
                                                                                            (letrec ((g8579
                                                                                                      "unknown message"))
                                                                                              g8579)))))))))))))))
                                                            g8551))))
                                                g8550)))
                                           (new-cons-zombies
                                            (lambda (z r)
                                              (letrec ((g8580
                                                        (lambda (msg)
                                                          (letrec ((g8581
                                                                    (letrec ((x-cnd8582
                                                                              (equal?
                                                                               msg
                                                                               'move-toward)))
                                                                      (if x-cnd8582
                                                                        (letrec ((g8583
                                                                                  (lambda (p)
                                                                                    (letrec ((g8584
                                                                                              (letrec ((x8587
                                                                                                        (letrec ((x8588
                                                                                                                  (z
                                                                                                                   'move-toward)))
                                                                                                          (x8588
                                                                                                           p)))
                                                                                                       (x8585
                                                                                                        (letrec ((x8586
                                                                                                                  (r
                                                                                                                   'move-toward)))
                                                                                                          (x8586
                                                                                                           p))))
                                                                                                (new-cons-zombies
                                                                                                 x8587
                                                                                                 x8585))))
                                                                                      g8584))))
                                                                          g8583)
                                                                        (letrec ((x-cnd8589
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8589
                                                                            (letrec ((g8590
                                                                                      (lambda (c
                                                                                               s)
                                                                                        (letrec ((g8591
                                                                                                  (letrec ((x8594
                                                                                                            (z
                                                                                                             'draw-on/color))
                                                                                                           (x8592
                                                                                                            (letrec ((x8593
                                                                                                                      (r
                                                                                                                       'draw-on/color)))
                                                                                                              (x8593
                                                                                                               c
                                                                                                               s))))
                                                                                                    (x8594
                                                                                                     c
                                                                                                     x8592))))
                                                                                          g8591))))
                                                                              g8590)
                                                                            (letrec ((x-cnd8595
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8595
                                                                                (letrec ((g8596
                                                                                          (lambda (p)
                                                                                            (letrec ((g8597
                                                                                                      (letrec ((val7264
                                                                                                                (letrec ((x8598
                                                                                                                          (z
                                                                                                                           'touching?)))
                                                                                                                  (x8598
                                                                                                                   p))))
                                                                                                        (letrec ((g8599
                                                                                                                  (if val7264
                                                                                                                    val7264
                                                                                                                    (letrec ((x8600
                                                                                                                              (r
                                                                                                                               'touching?)))
                                                                                                                      (x8600
                                                                                                                       p)))))
                                                                                                          g8599))))
                                                                                              g8597))))
                                                                                  g8596)
                                                                                (letrec ((x-cnd8601
                                                                                          (equal?
                                                                                           msg
                                                                                           'kill-all)))
                                                                                  (if x-cnd8601
                                                                                    (letrec ((g8602
                                                                                              (lambda (dead)
                                                                                                (letrec ((g8603
                                                                                                          (letrec ((x-cnd8604
                                                                                                                    (letrec ((val7265
                                                                                                                              (letrec ((x8607
                                                                                                                                        (r
                                                                                                                                         'touching?))
                                                                                                                                       (x8605
                                                                                                                                        (letrec ((x8606
                                                                                                                                                  (z
                                                                                                                                                   'posn)))
                                                                                                                                          (x8606))))
                                                                                                                                (x8607
                                                                                                                                 x8605))))
                                                                                                                      (letrec ((g8608
                                                                                                                                (if val7265
                                                                                                                                  val7265
                                                                                                                                  (letrec ((x8611
                                                                                                                                            (dead
                                                                                                                                             'touching?))
                                                                                                                                           (x8609
                                                                                                                                            (letrec ((x8610
                                                                                                                                                      (z
                                                                                                                                                       'posn)))
                                                                                                                                              (x8610))))
                                                                                                                                    (x8611
                                                                                                                                     x8609)))))
                                                                                                                        g8608))))
                                                                                                            (if x-cnd8604
                                                                                                              (letrec ((g8612
                                                                                                                        (letrec ((x8614
                                                                                                                                  (r
                                                                                                                                   'kill-all))
                                                                                                                                 (x8613
                                                                                                                                  (new-cons-zombies
                                                                                                                                   z
                                                                                                                                   dead)))
                                                                                                                          (x8614
                                                                                                                           x8613))))
                                                                                                                g8612)
                                                                                                              (letrec ((g8615
                                                                                                                        (letrec ((res
                                                                                                                                  (letrec ((x8616
                                                                                                                                            (r
                                                                                                                                             'kill-all)))
                                                                                                                                    (x8616
                                                                                                                                     dead))))
                                                                                                                          (letrec ((g8617
                                                                                                                                    (letrec ((x8620
                                                                                                                                              (letrec ((x8621
                                                                                                                                                        (letrec ((x8622
                                                                                                                                                                  (res
                                                                                                                                                                   'undead)))
                                                                                                                                                          (x8622))))
                                                                                                                                                (new-cons-zombies
                                                                                                                                                 z
                                                                                                                                                 x8621)))
                                                                                                                                             (x8618
                                                                                                                                              (letrec ((x8619
                                                                                                                                                        (res
                                                                                                                                                         'dead)))
                                                                                                                                                (x8619))))
                                                                                                                                      (new-horde
                                                                                                                                       x8620
                                                                                                                                       x8618))))
                                                                                                                            g8617))))
                                                                                                                g8615)))))
                                                                                                  g8603))))
                                                                                      g8602)
                                                                                    (letrec ((g8623
                                                                                              "unknown message"))
                                                                                      g8623)))))))))))
                                                            g8581))))
                                                g8580)))
                                           (new-mt-zombies
                                            (lambda ()
                                              (letrec ((g8624
                                                        (lambda (msg)
                                                          (letrec ((g8625
                                                                    (letrec ((x-cnd8626
                                                                              (equal?
                                                                               msg
                                                                               'move-toward)))
                                                                      (if x-cnd8626
                                                                        (letrec ((g8627
                                                                                  (lambda (p)
                                                                                    (letrec ((g8628
                                                                                              (new-mt-zombies)))
                                                                                      g8628))))
                                                                          g8627)
                                                                        (letrec ((x-cnd8629
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8629
                                                                            (letrec ((g8630
                                                                                      (lambda (c
                                                                                               s)
                                                                                        (letrec ((g8631
                                                                                                  s))
                                                                                          g8631))))
                                                                              g8630)
                                                                            (letrec ((x-cnd8632
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8632
                                                                                (letrec ((g8633
                                                                                          (lambda (p)
                                                                                            (letrec ((g8634
                                                                                                      #f))
                                                                                              g8634))))
                                                                                  g8633)
                                                                                (letrec ((x-cnd8635
                                                                                          (equal?
                                                                                           msg
                                                                                           'kill-all)))
                                                                                  (if x-cnd8635
                                                                                    (letrec ((g8636
                                                                                              (lambda (dead)
                                                                                                (letrec ((g8637
                                                                                                          (letrec ((x8638
                                                                                                                    (new-mt-zombies)))
                                                                                                            (new-horde
                                                                                                             x8638
                                                                                                             dead))))
                                                                                                  g8637))))
                                                                                      g8636)
                                                                                    (letrec ((g8639
                                                                                              "unknown message"))
                                                                                      g8639)))))))))))
                                                            g8625))))
                                                g8624)))
                                           (new-zombie
                                            (lambda (p)
                                              (letrec ((g8640
                                                        (lambda (msg)
                                                          (letrec ((g8641
                                                                    (letrec ((x-cnd8642
                                                                              (equal?
                                                                               msg
                                                                               'posn)))
                                                                      (if x-cnd8642
                                                                        (letrec ((g8643
                                                                                  (lambda ()
                                                                                    (letrec ((g8644
                                                                                              p))
                                                                                      g8644))))
                                                                          g8643)
                                                                        (letrec ((x-cnd8645
                                                                                  (equal?
                                                                                   msg
                                                                                   'draw-on/color)))
                                                                          (if x-cnd8645
                                                                            (letrec ((g8646
                                                                                      (lambda (c
                                                                                               s)
                                                                                        (letrec ((g8647
                                                                                                  (letrec ((x8649
                                                                                                            (p
                                                                                                             'draw-on/image))
                                                                                                           (x8648
                                                                                                            (circle
                                                                                                             ZOMBIE-RADIUS
                                                                                                             "solid"
                                                                                                             c)))
                                                                                                    (x8649
                                                                                                     x8648
                                                                                                     s))))
                                                                                          g8647))))
                                                                              g8646)
                                                                            (letrec ((x-cnd8650
                                                                                      (equal?
                                                                                       msg
                                                                                       'touching?)))
                                                                              (if x-cnd8650
                                                                                (letrec ((g8651
                                                                                          (lambda (q)
                                                                                            (letrec ((g8652
                                                                                                      (letrec ((x8653
                                                                                                                (letrec ((x8654
                                                                                                                          (p
                                                                                                                           'dist)))
                                                                                                                  (x8654
                                                                                                                   q))))
                                                                                                        (<=
                                                                                                         x8653
                                                                                                         ZOMBIE-RADIUS))))
                                                                                              g8652))))
                                                                                  g8651)
                                                                                (letrec ((x-cnd8655
                                                                                          (equal?
                                                                                           msg
                                                                                           'move-toward)))
                                                                                  (if x-cnd8655
                                                                                    (letrec ((g8656
                                                                                              (lambda (q)
                                                                                                (letrec ((g8657
                                                                                                          (letrec ((x8658
                                                                                                                    (letrec ((x8659
                                                                                                                              (p
                                                                                                                               'move-toward/speed)))
                                                                                                                      (x8659
                                                                                                                       q
                                                                                                                       ZOMBIE-SPEED))))
                                                                                                            (new-zombie
                                                                                                             x8658))))
                                                                                                  g8657))))
                                                                                      g8656)
                                                                                    (letrec ((g8660
                                                                                              "unknown message"))
                                                                                      g8660)))))))))))
                                                            g8641))))
                                                g8640)))
                                           (new-posn
                                            (lambda (x y)
                                              (letrec ((g8661
                                                        (letrec ((this
                                                                  (lambda (msg)
                                                                    (letrec ((g8662
                                                                              (letrec ((x-cnd8663
                                                                                        (equal?
                                                                                         msg
                                                                                         'x)))
                                                                                (if x-cnd8663
                                                                                  (letrec ((g8664
                                                                                            (lambda ()
                                                                                              (letrec ((g8665
                                                                                                        x))
                                                                                                g8665))))
                                                                                    g8664)
                                                                                  (letrec ((x-cnd8666
                                                                                            (equal?
                                                                                             msg
                                                                                             'y)))
                                                                                    (if x-cnd8666
                                                                                      (letrec ((g8667
                                                                                                (lambda ()
                                                                                                  (letrec ((g8668
                                                                                                            y))
                                                                                                    g8668))))
                                                                                        g8667)
                                                                                      (letrec ((x-cnd8669
                                                                                                (equal?
                                                                                                 msg
                                                                                                 'posn)))
                                                                                        (if x-cnd8669
                                                                                          (letrec ((g8670
                                                                                                    (lambda ()
                                                                                                      (letrec ((g8671
                                                                                                                this))
                                                                                                        g8671))))
                                                                                            g8670)
                                                                                          (letrec ((x-cnd8672
                                                                                                    (equal?
                                                                                                     msg
                                                                                                     'move-toward/speed)))
                                                                                            (if x-cnd8672
                                                                                              (letrec ((g8673
                                                                                                        (lambda (p
                                                                                                                 speed)
                                                                                                          (letrec ((g8674
                                                                                                                    (letrec ((δx
                                                                                                                              (letrec ((x8675
                                                                                                                                        (letrec ((x8676
                                                                                                                                                  (p
                                                                                                                                                   'x)))
                                                                                                                                          (x8676))))
                                                                                                                                (-
                                                                                                                                 x8675
                                                                                                                                 x)))
                                                                                                                             (δy
                                                                                                                              (letrec ((x8677
                                                                                                                                        (letrec ((x8678
                                                                                                                                                  (p
                                                                                                                                                   'y)))
                                                                                                                                          (x8678))))
                                                                                                                                (-
                                                                                                                                 x8677
                                                                                                                                 y)))
                                                                                                                             (move-distance
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
                                                                                                                      (letrec ((g8682
                                                                                                                                (letrec ((x-cnd8683
                                                                                                                                          (letrec ((x8685
                                                                                                                                                    (abs
                                                                                                                                                     δx))
                                                                                                                                                   (x8684
                                                                                                                                                    (abs
                                                                                                                                                     δy)))
                                                                                                                                            (<
                                                                                                                                             x8685
                                                                                                                                             x8684))))
                                                                                                                                  (if x-cnd8683
                                                                                                                                    (letrec ((g8686
                                                                                                                                              (letrec ((x8689
                                                                                                                                                        (this
                                                                                                                                                         'move))
                                                                                                                                                       (x8687
                                                                                                                                                        (letrec ((x-cnd8688
                                                                                                                                                                  (positive?
                                                                                                                                                                   δy)))
                                                                                                                                                          (if x-cnd8688
                                                                                                                                                            move-distance
                                                                                                                                                            (-
                                                                                                                                                             0
                                                                                                                                                             move-distance)))))
                                                                                                                                                (x8689
                                                                                                                                                 0
                                                                                                                                                 x8687))))
                                                                                                                                      g8686)
                                                                                                                                    (letrec ((g8690
                                                                                                                                              (letrec ((x8693
                                                                                                                                                        (this
                                                                                                                                                         'move))
                                                                                                                                                       (x8691
                                                                                                                                                        (letrec ((x-cnd8692
                                                                                                                                                                  (positive?
                                                                                                                                                                   δx)))
                                                                                                                                                          (if x-cnd8692
                                                                                                                                                            move-distance
                                                                                                                                                            (-
                                                                                                                                                             0
                                                                                                                                                             move-distance)))))
                                                                                                                                                (x8693
                                                                                                                                                 x8691
                                                                                                                                                 0))))
                                                                                                                                      g8690)))))
                                                                                                                        g8682))))
                                                                                                            g8674))))
                                                                                                g8673)
                                                                                              (letrec ((x-cnd8694
                                                                                                        (equal?
                                                                                                         msg
                                                                                                         'move)))
                                                                                                (if x-cnd8694
                                                                                                  (letrec ((g8695
                                                                                                            (lambda (δx
                                                                                                                     δy)
                                                                                                              (letrec ((g8696
                                                                                                                        (letrec ((x8698
                                                                                                                                  (+
                                                                                                                                   x
                                                                                                                                   δx))
                                                                                                                                 (x8697
                                                                                                                                  (+
                                                                                                                                   y
                                                                                                                                   δy)))
                                                                                                                          (new-posn
                                                                                                                           x8698
                                                                                                                           x8697))))
                                                                                                                g8696))))
                                                                                                    g8695)
                                                                                                  (letrec ((x-cnd8699
                                                                                                            (equal?
                                                                                                             msg
                                                                                                             'draw-on/image)))
                                                                                                    (if x-cnd8699
                                                                                                      (letrec ((g8700
                                                                                                                (lambda (img
                                                                                                                         scn)
                                                                                                                  (letrec ((g8701
                                                                                                                            (place-image
                                                                                                                             img
                                                                                                                             x
                                                                                                                             y
                                                                                                                             scn)))
                                                                                                                    g8701))))
                                                                                                        g8700)
                                                                                                      (letrec ((x-cnd8702
                                                                                                                (equal?
                                                                                                                 msg
                                                                                                                 'dist)))
                                                                                                        (if x-cnd8702
                                                                                                          (letrec ((g8703
                                                                                                                    (lambda (p)
                                                                                                                      (letrec ((g8704
                                                                                                                                (letrec ((x8705
                                                                                                                                          (letrec ((x8710
                                                                                                                                                    (letrec ((x8711
                                                                                                                                                              (letrec ((x8712
                                                                                                                                                                        (letrec ((x8713
                                                                                                                                                                                  (p
                                                                                                                                                                                   'y)))
                                                                                                                                                                          (x8713))))
                                                                                                                                                                (-
                                                                                                                                                                 x8712
                                                                                                                                                                 y))))
                                                                                                                                                      (sqr
                                                                                                                                                       x8711)))
                                                                                                                                                   (x8706
                                                                                                                                                    (letrec ((x8707
                                                                                                                                                              (letrec ((x8708
                                                                                                                                                                        (letrec ((x8709
                                                                                                                                                                                  (p
                                                                                                                                                                                   'x)))
                                                                                                                                                                          (x8709))))
                                                                                                                                                                (-
                                                                                                                                                                 x8708
                                                                                                                                                                 x))))
                                                                                                                                                      (sqr
                                                                                                                                                       x8707))))
                                                                                                                                            (+
                                                                                                                                             x8710
                                                                                                                                             x8706))))
                                                                                                                                  (sqrt
                                                                                                                                   x8705))))
                                                                                                                        g8704))))
                                                                                                            g8703)
                                                                                                          (letrec ((g8714
                                                                                                                    "unknown message"))
                                                                                                            g8714)))))))))))))))))
                                                                      g8662))))
                                                          (letrec ((g8715
                                                                    this))
                                                            g8715))))
                                                g8661)))
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
                                                          (letrec ((xj7578
                                                                    (loc
                                                                     'module))
                                                                   (xk7579
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8734
                                                                      ((lambda (j7581
                                                                                k7582
                                                                                f7583)
                                                                         (letrec ((g8735
                                                                                   (lambda (g7580)
                                                                                     (letrec ((g8736
                                                                                               (letrec ((x8737
                                                                                                         (letrec ((x8738
                                                                                                                   (any/c
                                                                                                                    j7581
                                                                                                                    k7582
                                                                                                                    g7580)))
                                                                                                           (f7583
                                                                                                            x8738))))
                                                                                                 (boolean?/c
                                                                                                  j7581
                                                                                                  k7582
                                                                                                  x8737))))
                                                                                       g8736))))
                                                                           g8735))
                                                                       xj7578
                                                                       xk7579
                                                                       image/c)))
                                                              g8734)))
                                                         (x8732 (input)))
                                                  (x8733 x8732))
                                                (letrec ((x8741
                                                          (letrec ((xj7584
                                                                    (loc
                                                                     'module))
                                                                   (xk7585
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8742
                                                                      ((lambda (j7588
                                                                                k7589
                                                                                f7590)
                                                                         (letrec ((g8743
                                                                                   (lambda (g7586
                                                                                            g7587)
                                                                                     (letrec ((g8744
                                                                                               (letrec ((x8745
                                                                                                         (letrec ((x8747
                                                                                                                   (real?/c
                                                                                                                    j7588
                                                                                                                    k7589
                                                                                                                    g7586))
                                                                                                                  (x8746
                                                                                                                   (real?/c
                                                                                                                    j7588
                                                                                                                    k7589
                                                                                                                    g7587)))
                                                                                                           (f7590
                                                                                                            x8747
                                                                                                            x8746))))
                                                                                                 (image/c
                                                                                                  j7588
                                                                                                  k7589
                                                                                                  x8745))))
                                                                                       g8744))))
                                                                           g8743))
                                                                       xj7584
                                                                       xk7585
                                                                       empty-scene)))
                                                              g8742)))
                                                         (x8740 (input))
                                                         (x8739 (input)))
                                                  (x8741 x8740 x8739))
                                                (letrec ((x8752
                                                          (letrec ((xj7591
                                                                    (loc
                                                                     'module))
                                                                   (xk7592
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8753
                                                                      ((lambda (j7597
                                                                                k7598
                                                                                f7599)
                                                                         (letrec ((g8754
                                                                                   (lambda (g7593
                                                                                            g7594
                                                                                            g7595
                                                                                            g7596)
                                                                                     (letrec ((g8755
                                                                                               (letrec ((x8756
                                                                                                         (letrec ((x8760
                                                                                                                   (image/c/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7593))
                                                                                                                  (x8759
                                                                                                                   (real?/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7594))
                                                                                                                  (x8758
                                                                                                                   (real?/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7595))
                                                                                                                  (x8757
                                                                                                                   (image/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7596)))
                                                                                                           (f7599
                                                                                                            x8760
                                                                                                            x8759
                                                                                                            x8758
                                                                                                            x8757))))
                                                                                                 (image/c
                                                                                                  j7597
                                                                                                  k7598
                                                                                                  x8756))))
                                                                                       g8755))))
                                                                           g8754))
                                                                       xj7591
                                                                       xk7592
                                                                       place-image)))
                                                              g8753)))
                                                         (x8751 (input))
                                                         (x8750 (input))
                                                         (x8749 (input))
                                                         (x8748
                                                          (cons 'image '())))
                                                  (x8752
                                                   x8751
                                                   x8750
                                                   x8749
                                                   x8748))
                                                (letrec ((x8764
                                                          (letrec ((xj7600
                                                                    (loc
                                                                     'module))
                                                                   (xk7601
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8765
                                                                      ((lambda (j7605
                                                                                k7606
                                                                                f7607)
                                                                         (letrec ((g8766
                                                                                   (lambda (g7602
                                                                                            g7603
                                                                                            g7604)
                                                                                     (letrec ((g8767
                                                                                               (letrec ((x8768
                                                                                                         (letrec ((x8771
                                                                                                                   (real?/c
                                                                                                                    j7605
                                                                                                                    k7606
                                                                                                                    g7602))
                                                                                                                  (x8770
                                                                                                                   (string?/c
                                                                                                                    j7605
                                                                                                                    k7606
                                                                                                                    g7603))
                                                                                                                  (x8769
                                                                                                                   (string?/c
                                                                                                                    j7605
                                                                                                                    k7606
                                                                                                                    g7604)))
                                                                                                           (f7607
                                                                                                            x8771
                                                                                                            x8770
                                                                                                            x8769))))
                                                                                                 (image/c
                                                                                                  j7605
                                                                                                  k7606
                                                                                                  x8768))))
                                                                                       g8767))))
                                                                           g8766))
                                                                       xj7600
                                                                       xk7601
                                                                       circle)))
                                                              g8765)))
                                                         (x8763 (input))
                                                         (x8762 (input))
                                                         (x8761 (input)))
                                                  (x8764 x8763 x8762 x8761))
                                                (letrec ((x8775
                                                          (letrec ((xj7608
                                                                    (loc
                                                                     'module))
                                                                   (xk7609
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8776
                                                                      ((lambda (j7613
                                                                                k7614
                                                                                f7615)
                                                                         (letrec ((g8777
                                                                                   (lambda (g7610
                                                                                            g7611
                                                                                            g7612)
                                                                                     (letrec ((g8778
                                                                                               (letrec ((x8779
                                                                                                         (letrec ((x8782
                                                                                                                   (player/c
                                                                                                                    j7613
                                                                                                                    k7614
                                                                                                                    g7610))
                                                                                                                  (x8781
                                                                                                                   (posn/c
                                                                                                                    j7613
                                                                                                                    k7614
                                                                                                                    g7611))
                                                                                                                  (x8780
                                                                                                                   (horde/c
                                                                                                                    j7613
                                                                                                                    k7614
                                                                                                                    g7612)))
                                                                                                           (f7615
                                                                                                            x8782
                                                                                                            x8781
                                                                                                            x8780))))
                                                                                                 (world/c
                                                                                                  j7613
                                                                                                  k7614
                                                                                                  x8779))))
                                                                                       g8778))))
                                                                           g8777))
                                                                       xj7608
                                                                       xk7609
                                                                       new-world)))
                                                              g8776)))
                                                         (x8774 (input))
                                                         (x8773 (input))
                                                         (x8772 (input)))
                                                  (x8775 x8774 x8773 x8772))
                                                (letrec ((x8784
                                                          (letrec ((xj7616
                                                                    (loc
                                                                     'module))
                                                                   (xk7617
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8785
                                                                      ((lambda (j7619
                                                                                k7620
                                                                                f7621)
                                                                         (letrec ((g8786
                                                                                   (lambda (g7618)
                                                                                     (letrec ((g8787
                                                                                               (letrec ((x8788
                                                                                                         (letrec ((x8789
                                                                                                                   (posn/c
                                                                                                                    j7619
                                                                                                                    k7620
                                                                                                                    g7618)))
                                                                                                           (f7621
                                                                                                            x8789))))
                                                                                                 (player/c
                                                                                                  j7619
                                                                                                  k7620
                                                                                                  x8788))))
                                                                                       g8787))))
                                                                           g8786))
                                                                       xj7616
                                                                       xk7617
                                                                       new-player)))
                                                              g8785)))
                                                         (x8783 (input)))
                                                  (x8784 x8783))
                                                (letrec ((x8792
                                                          (letrec ((xj7622
                                                                    (loc
                                                                     'module))
                                                                   (xk7623
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8793
                                                                      ((lambda (j7626
                                                                                k7627
                                                                                f7628)
                                                                         (letrec ((g8794
                                                                                   (lambda (g7624
                                                                                            g7625)
                                                                                     (letrec ((g8795
                                                                                               (letrec ((x8796
                                                                                                         (letrec ((x8798
                                                                                                                   (zombies/c
                                                                                                                    j7626
                                                                                                                    k7627
                                                                                                                    g7624))
                                                                                                                  (x8797
                                                                                                                   (zombies/c
                                                                                                                    j7626
                                                                                                                    k7627
                                                                                                                    g7625)))
                                                                                                           (f7628
                                                                                                            x8798
                                                                                                            x8797))))
                                                                                                 (horde/c
                                                                                                  j7626
                                                                                                  k7627
                                                                                                  x8796))))
                                                                                       g8795))))
                                                                           g8794))
                                                                       xj7622
                                                                       xk7623
                                                                       new-horde)))
                                                              g8793)))
                                                         (x8791 (input))
                                                         (x8790 (input)))
                                                  (x8792 x8791 x8790))
                                                (letrec ((x8801
                                                          (letrec ((xj7629
                                                                    (loc
                                                                     'module))
                                                                   (xk7630
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8802
                                                                      ((lambda (j7633
                                                                                k7634
                                                                                f7635)
                                                                         (letrec ((g8803
                                                                                   (lambda (g7631
                                                                                            g7632)
                                                                                     (letrec ((g8804
                                                                                               (letrec ((x8805
                                                                                                         (letrec ((x8807
                                                                                                                   (zombie/c
                                                                                                                    j7633
                                                                                                                    k7634
                                                                                                                    g7631))
                                                                                                                  (x8806
                                                                                                                   (zombies/c
                                                                                                                    j7633
                                                                                                                    k7634
                                                                                                                    g7632)))
                                                                                                           (f7635
                                                                                                            x8807
                                                                                                            x8806))))
                                                                                                 (zombies/c
                                                                                                  j7633
                                                                                                  k7634
                                                                                                  x8805))))
                                                                                       g8804))))
                                                                           g8803))
                                                                       xj7629
                                                                       xk7630
                                                                       new-cons-zombies)))
                                                              g8802)))
                                                         (x8800 (input))
                                                         (x8799 (input)))
                                                  (x8801 x8800 x8799))
                                                (letrec ((xj7636 (loc 'module))
                                                         (xk7637
                                                          (loc 'importer)))
                                                  (letrec ((g8808
                                                            ((lambda (j7638
                                                                      k7639
                                                                      f7640)
                                                               (letrec ((g8809
                                                                         (lambda ()
                                                                           (letrec ((g8810
                                                                                     (letrec ((x8811
                                                                                               (f7640)))
                                                                                       (zombies/c
                                                                                        j7638
                                                                                        k7639
                                                                                        x8811))))
                                                                             g8810))))
                                                                 g8809))
                                                             xj7636
                                                             xk7637
                                                             new-mt-zombies)))
                                                    g8808))
                                                (letrec ((x8813
                                                          (letrec ((xj7641
                                                                    (loc
                                                                     'module))
                                                                   (xk7642
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8814
                                                                      ((lambda (j7644
                                                                                k7645
                                                                                f7646)
                                                                         (letrec ((g8815
                                                                                   (lambda (g7643)
                                                                                     (letrec ((g8816
                                                                                               (letrec ((x8817
                                                                                                         (letrec ((x8818
                                                                                                                   (posn/c
                                                                                                                    j7644
                                                                                                                    k7645
                                                                                                                    g7643)))
                                                                                                           (f7646
                                                                                                            x8818))))
                                                                                                 (zombie/c
                                                                                                  j7644
                                                                                                  k7645
                                                                                                  x8817))))
                                                                                       g8816))))
                                                                           g8815))
                                                                       xj7641
                                                                       xk7642
                                                                       new-zombie)))
                                                              g8814)))
                                                         (x8812 (input)))
                                                  (x8813 x8812))
                                                (letrec ((x8821
                                                          (letrec ((xj7647
                                                                    (loc
                                                                     'module))
                                                                   (xk7648
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8822
                                                                      ((lambda (j7651
                                                                                k7652
                                                                                f7653)
                                                                         (letrec ((g8823
                                                                                   (lambda (g7649
                                                                                            g7650)
                                                                                     (letrec ((g8824
                                                                                               (letrec ((x8825
                                                                                                         (letrec ((x8827
                                                                                                                   (real?/c
                                                                                                                    j7651
                                                                                                                    k7652
                                                                                                                    g7649))
                                                                                                                  (x8826
                                                                                                                   (real?/c
                                                                                                                    j7651
                                                                                                                    k7652
                                                                                                                    g7650)))
                                                                                                           (f7653
                                                                                                            x8827
                                                                                                            x8826))))
                                                                                                 (posn/c
                                                                                                  j7651
                                                                                                  k7652
                                                                                                  x8825))))
                                                                                       g8824))))
                                                                           g8823))
                                                                       xj7647
                                                                       xk7648
                                                                       new-posn)))
                                                              g8822)))
                                                         (x8820 (input))
                                                         (x8819 (input)))
                                                  (x8821 x8820 x8819))
                                                (letrec ((xj7654 (loc 'module))
                                                         (xk7655
                                                          (loc 'importer)))
                                                  (letrec ((g8828
                                                            (world/c
                                                             xj7654
                                                             xk7655
                                                             w0)))
                                                    g8828))))))
                                      g8731))))
                          g7685))))
              g7668)))
    g7667))
