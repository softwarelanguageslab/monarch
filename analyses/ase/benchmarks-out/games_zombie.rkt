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
                      (letrec ((>=
                                (lambda (x y)
                                  (letrec ((g7658
                                            (letrec ((x7660 (number? x)))
                                              (assert x7660)))
                                           (g7659
                                            (letrec ((val7243 (> x y)))
                                              (letrec ((g7661
                                                        (if val7243
                                                          val7243
                                                          (letrec ((val7244
                                                                    (= x y)))
                                                            (letrec ((g7662
                                                                      (if val7244
                                                                        val7244
                                                                        #f)))
                                                              g7662)))))
                                                g7661))))
                                    g7659)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7663
                                            (letrec ((x7665 (number? x)))
                                              (assert x7665)))
                                           (g7664
                                            (letrec ((val7245 (< x y)))
                                              (letrec ((g7666
                                                        (if val7245
                                                          val7245
                                                          (letrec ((val7246
                                                                    (= x y)))
                                                            (letrec ((g7667
                                                                      (if val7246
                                                                        val7246
                                                                        #f)))
                                                              g7667)))))
                                                g7666))))
                                    g7664)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7668
                                            (letrec ((x7670 (number? x)))
                                              (assert x7670)))
                                           (g7669
                                            (letrec ((x7671 (<= x y)))
                                              (not x7671))))
                                    g7669)))
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
                        (letrec ((g7672 '())
                                 (g7673
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7674
                                                        (lambda (k j lst)
                                                          (letrec ((g7675
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7676
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7676))
                                                                     lst)))
                                                            g7675))))
                                                g7674)))
                                           (real?/c
                                            (lambda (g7261 g7262 g7263)
                                              (letrec ((g7677
                                                        (letrec ((x-cnd7678
                                                                  (real?
                                                                   g7263)))
                                                          (if x-cnd7678
                                                            g7263
                                                            (blame
                                                             g7261
                                                             'real?)))))
                                                g7677)))
                                           (boolean?/c
                                            (lambda (g7264 g7265 g7266)
                                              (letrec ((g7679
                                                        (letrec ((x-cnd7680
                                                                  (boolean?
                                                                   g7266)))
                                                          (if x-cnd7680
                                                            g7266
                                                            (blame
                                                             g7264
                                                             'boolean?)))))
                                                g7679)))
                                           (number?/c
                                            (lambda (g7267 g7268 g7269)
                                              (letrec ((g7681
                                                        (letrec ((x-cnd7682
                                                                  (number?
                                                                   g7269)))
                                                          (if x-cnd7682
                                                            g7269
                                                            (blame
                                                             g7267
                                                             'number?)))))
                                                g7681)))
                                           (any/c
                                            (lambda (g7270 g7271 g7272)
                                              (letrec ((g7683
                                                        (letrec ((x-cnd7684
                                                                  ((lambda (v)
                                                                     (letrec ((g7685
                                                                               #t))
                                                                       g7685))
                                                                   g7272)))
                                                          (if x-cnd7684
                                                            g7272
                                                            (blame
                                                             g7270
                                                             '(lambda (v)
                                                                #t))))))
                                                g7683)))
                                           (any?/c
                                            (lambda (g7273 g7274 g7275)
                                              (letrec ((g7686
                                                        (letrec ((x-cnd7687
                                                                  ((lambda (v)
                                                                     (letrec ((g7688
                                                                               #t))
                                                                       g7688))
                                                                   g7275)))
                                                          (if x-cnd7687
                                                            g7275
                                                            (blame
                                                             g7273
                                                             '(lambda (v)
                                                                #t))))))
                                                g7686)))
                                           (cons?/c
                                            (lambda (g7276 g7277 g7278)
                                              (letrec ((g7689
                                                        (letrec ((x-cnd7690
                                                                  (pair?
                                                                   g7278)))
                                                          (if x-cnd7690
                                                            g7278
                                                            (blame
                                                             g7276
                                                             'pair?)))))
                                                g7689)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7279 g7280 g7281)
                                              (letrec ((g7691
                                                        (letrec ((x-cnd7692
                                                                  (pair?
                                                                   g7281)))
                                                          (if x-cnd7692
                                                            g7281
                                                            (blame
                                                             g7279
                                                             'pair?)))))
                                                g7691)))
                                           (integer?/c
                                            (lambda (g7282 g7283 g7284)
                                              (letrec ((g7693
                                                        (letrec ((x-cnd7694
                                                                  (integer?
                                                                   g7284)))
                                                          (if x-cnd7694
                                                            g7284
                                                            (blame
                                                             g7282
                                                             'integer?)))))
                                                g7693)))
                                           (symbol?/c
                                            (lambda (g7285 g7286 g7287)
                                              (letrec ((g7695
                                                        (letrec ((x-cnd7696
                                                                  (symbol?
                                                                   g7287)))
                                                          (if x-cnd7696
                                                            g7287
                                                            (blame
                                                             g7285
                                                             'symbol?)))))
                                                g7695)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7697
                                                        (lambda (k j v)
                                                          (letrec ((g7698
                                                                    (letrec ((x-cnd7699
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7699
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7698))))
                                                g7697)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7700
                                                        (lambda (k j v)
                                                          (letrec ((g7701
                                                                    (letrec ((x-cnd7702
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7702
                                                                        '()
                                                                        (letrec ((x7706
                                                                                  (letrec ((x7707
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7707)))
                                                                                 (x7703
                                                                                  (letrec ((x7705
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7704
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7705
                                                                                     k
                                                                                     j
                                                                                     x7704))))
                                                                          (orig-cons
                                                                           x7706
                                                                           x7703))))))
                                                            g7701))))
                                                g7700)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7708 #t)) g7708)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7709
                                                        (letrec ((x7710
                                                                  (= v 0)))
                                                          (not x7710))))
                                                g7709)))
                                           (nonzero?/c
                                            (lambda (g7288 g7289 g7290)
                                              (letrec ((g7711
                                                        (letrec ((x-cnd7712
                                                                  ((lambda (v)
                                                                     (letrec ((g7713
                                                                               (letrec ((x7714
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7714))))
                                                                       g7713))
                                                                   g7290)))
                                                          (if x-cnd7712
                                                            g7290
                                                            (blame
                                                             g7288
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7711)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7715
                                                        (lambda (g7291
                                                                 g7292
                                                                 g7293)
                                                          (letrec ((g7716
                                                                    (letrec ((x-cnd7717
                                                                              ((lambda (v)
                                                                                 (letrec ((g7718
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7718))
                                                                               g7293)))
                                                                      (if x-cnd7717
                                                                        g7293
                                                                        (blame
                                                                         g7291
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7716))))
                                                g7715)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7719
                                                        (lambda (g7294
                                                                 g7295
                                                                 g7296)
                                                          (letrec ((g7720
                                                                    (letrec ((x-cnd7721
                                                                              ((lambda (v)
                                                                                 (letrec ((g7722
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7722))
                                                                               g7296)))
                                                                      (if x-cnd7721
                                                                        g7296
                                                                        (blame
                                                                         g7294
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7720))))
                                                g7719)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7723
                                                        (lambda (g7297
                                                                 g7298
                                                                 g7299)
                                                          (letrec ((g7724
                                                                    (letrec ((x-cnd7725
                                                                              ((lambda (v)
                                                                                 (letrec ((g7726
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7726))
                                                                               g7299)))
                                                                      (if x-cnd7725
                                                                        g7299
                                                                        (blame
                                                                         g7297
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7724))))
                                                g7723)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7727
                                                        (lambda (g7300
                                                                 g7301
                                                                 g7302)
                                                          (letrec ((g7728
                                                                    (letrec ((x-cnd7729
                                                                              ((lambda (v)
                                                                                 (letrec ((g7730
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7730))
                                                                               g7302)))
                                                                      (if x-cnd7729
                                                                        g7302
                                                                        (blame
                                                                         g7300
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7728))))
                                                g7727)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7731
                                                        (lambda (g7303
                                                                 g7304
                                                                 g7305)
                                                          (letrec ((g7732
                                                                    (letrec ((x-cnd7733
                                                                              ((lambda (v)
                                                                                 (letrec ((g7734
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7734))
                                                                               g7305)))
                                                                      (if x-cnd7733
                                                                        g7305
                                                                        (blame
                                                                         g7303
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7732))))
                                                g7731)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7735 v)) g7735)))
                                           (+
                                            (letrec ((xj7306 'server)
                                                     (xk7307 'client))
                                              (letrec ((g7736
                                                        ((lambda (j7310
                                                                  k7311
                                                                  f7312)
                                                           (letrec ((g7738
                                                                     (lambda (g7308
                                                                              g7309)
                                                                       (letrec ((g7739
                                                                                 (letrec ((x7740
                                                                                           (letrec ((x7742
                                                                                                     (number?/c
                                                                                                      j7310
                                                                                                      k7311
                                                                                                      g7308))
                                                                                                    (x7741
                                                                                                     (number?/c
                                                                                                      j7310
                                                                                                      k7311
                                                                                                      g7309)))
                                                                                             (f7312
                                                                                              x7742
                                                                                              x7741))))
                                                                                   (number?/c
                                                                                    j7310
                                                                                    k7311
                                                                                    x7740))))
                                                                         g7739))))
                                                             g7738))
                                                         xj7306
                                                         xk7307
                                                         (lambda (a b)
                                                           (letrec ((g7737
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7737)))))
                                                g7736)))
                                           (-
                                            (letrec ((xj7313 'server)
                                                     (xk7314 'client))
                                              (letrec ((g7743
                                                        ((lambda (j7317
                                                                  k7318
                                                                  f7319)
                                                           (letrec ((g7745
                                                                     (lambda (g7315
                                                                              g7316)
                                                                       (letrec ((g7746
                                                                                 (letrec ((x7747
                                                                                           (letrec ((x7749
                                                                                                     (number?/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7315))
                                                                                                    (x7748
                                                                                                     (number?/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7316)))
                                                                                             (f7319
                                                                                              x7749
                                                                                              x7748))))
                                                                                   (number?/c
                                                                                    j7317
                                                                                    k7318
                                                                                    x7747))))
                                                                         g7746))))
                                                             g7745))
                                                         xj7313
                                                         xk7314
                                                         (lambda (a b)
                                                           (letrec ((g7744
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7744)))))
                                                g7743)))
                                           (*
                                            (letrec ((xj7320 'server)
                                                     (xk7321 'client))
                                              (letrec ((g7750
                                                        ((lambda (j7324
                                                                  k7325
                                                                  f7326)
                                                           (letrec ((g7752
                                                                     (lambda (g7322
                                                                              g7323)
                                                                       (letrec ((g7753
                                                                                 (letrec ((x7754
                                                                                           (letrec ((x7756
                                                                                                     (number?/c
                                                                                                      j7324
                                                                                                      k7325
                                                                                                      g7322))
                                                                                                    (x7755
                                                                                                     (number?/c
                                                                                                      j7324
                                                                                                      k7325
                                                                                                      g7323)))
                                                                                             (f7326
                                                                                              x7756
                                                                                              x7755))))
                                                                                   (number?/c
                                                                                    j7324
                                                                                    k7325
                                                                                    x7754))))
                                                                         g7753))))
                                                             g7752))
                                                         xj7320
                                                         xk7321
                                                         (lambda (a b)
                                                           (letrec ((g7751
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7751)))))
                                                g7750)))
                                           (<
                                            (letrec ((xj7327 'server)
                                                     (xk7328 'client))
                                              (letrec ((g7757
                                                        ((lambda (j7331
                                                                  k7332
                                                                  f7333)
                                                           (letrec ((g7759
                                                                     (lambda (g7329
                                                                              g7330)
                                                                       (letrec ((g7760
                                                                                 (letrec ((x7761
                                                                                           (letrec ((x7763
                                                                                                     (number?/c
                                                                                                      j7331
                                                                                                      k7332
                                                                                                      g7329))
                                                                                                    (x7762
                                                                                                     (number?/c
                                                                                                      j7331
                                                                                                      k7332
                                                                                                      g7330)))
                                                                                             (f7333
                                                                                              x7763
                                                                                              x7762))))
                                                                                   (boolean?/c
                                                                                    j7331
                                                                                    k7332
                                                                                    x7761))))
                                                                         g7760))))
                                                             g7759))
                                                         xj7327
                                                         xk7328
                                                         (lambda (a b)
                                                           (letrec ((g7758
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7758)))))
                                                g7757)))
                                           (>
                                            (letrec ((xj7334 'server)
                                                     (xk7335 'client))
                                              (letrec ((g7764
                                                        ((lambda (j7338
                                                                  k7339
                                                                  f7340)
                                                           (letrec ((g7766
                                                                     (lambda (g7336
                                                                              g7337)
                                                                       (letrec ((g7767
                                                                                 (letrec ((x7768
                                                                                           (letrec ((x7770
                                                                                                     (number?/c
                                                                                                      j7338
                                                                                                      k7339
                                                                                                      g7336))
                                                                                                    (x7769
                                                                                                     (number?/c
                                                                                                      j7338
                                                                                                      k7339
                                                                                                      g7337)))
                                                                                             (f7340
                                                                                              x7770
                                                                                              x7769))))
                                                                                   (boolean?/c
                                                                                    j7338
                                                                                    k7339
                                                                                    x7768))))
                                                                         g7767))))
                                                             g7766))
                                                         xj7334
                                                         xk7335
                                                         (lambda (a b)
                                                           (letrec ((g7765
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7765)))))
                                                g7764)))
                                           (<=
                                            (letrec ((xj7341 'server)
                                                     (xk7342 'client))
                                              (letrec ((g7771
                                                        ((lambda (j7345
                                                                  k7346
                                                                  f7347)
                                                           (letrec ((g7773
                                                                     (lambda (g7343
                                                                              g7344)
                                                                       (letrec ((g7774
                                                                                 (letrec ((x7775
                                                                                           (letrec ((x7777
                                                                                                     (number?/c
                                                                                                      j7345
                                                                                                      k7346
                                                                                                      g7343))
                                                                                                    (x7776
                                                                                                     (number?/c
                                                                                                      j7345
                                                                                                      k7346
                                                                                                      g7344)))
                                                                                             (f7347
                                                                                              x7777
                                                                                              x7776))))
                                                                                   (boolean?/c
                                                                                    j7345
                                                                                    k7346
                                                                                    x7775))))
                                                                         g7774))))
                                                             g7773))
                                                         xj7341
                                                         xk7342
                                                         (lambda (a b)
                                                           (letrec ((g7772
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7772)))))
                                                g7771)))
                                           (>=
                                            (letrec ((xj7348 'server)
                                                     (xk7349 'client))
                                              (letrec ((g7778
                                                        ((lambda (j7352
                                                                  k7353
                                                                  f7354)
                                                           (letrec ((g7780
                                                                     (lambda (g7350
                                                                              g7351)
                                                                       (letrec ((g7781
                                                                                 (letrec ((x7782
                                                                                           (letrec ((x7784
                                                                                                     (number?/c
                                                                                                      j7352
                                                                                                      k7353
                                                                                                      g7350))
                                                                                                    (x7783
                                                                                                     (number?/c
                                                                                                      j7352
                                                                                                      k7353
                                                                                                      g7351)))
                                                                                             (f7354
                                                                                              x7784
                                                                                              x7783))))
                                                                                   (boolean?/c
                                                                                    j7352
                                                                                    k7353
                                                                                    x7782))))
                                                                         g7781))))
                                                             g7780))
                                                         xj7348
                                                         xk7349
                                                         (lambda (a b)
                                                           (letrec ((g7779
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7779)))))
                                                g7778)))
                                           (/
                                            (letrec ((xj7355 'server)
                                                     (xk7356 'client))
                                              (letrec ((g7785
                                                        ((lambda (j7359
                                                                  k7360
                                                                  f7361)
                                                           (letrec ((g7787
                                                                     (lambda (g7357
                                                                              g7358)
                                                                       (letrec ((g7788
                                                                                 (letrec ((x7789
                                                                                           (letrec ((x7791
                                                                                                     (number?/c
                                                                                                      j7359
                                                                                                      k7360
                                                                                                      g7357))
                                                                                                    (x7790
                                                                                                     (number?/c
                                                                                                      j7359
                                                                                                      k7360
                                                                                                      g7358)))
                                                                                             (f7361
                                                                                              x7791
                                                                                              x7790))))
                                                                                   (number?/c
                                                                                    j7359
                                                                                    k7360
                                                                                    x7789))))
                                                                         g7788))))
                                                             g7787))
                                                         xj7355
                                                         xk7356
                                                         (lambda (a b)
                                                           (letrec ((g7786
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7786)))))
                                                g7785)))
                                           (car
                                            (letrec ((xj7362 'server)
                                                     (xk7363 'client))
                                              (letrec ((g7792
                                                        ((lambda (j7365
                                                                  k7366
                                                                  f7367)
                                                           (letrec ((g7794
                                                                     (lambda (g7364)
                                                                       (letrec ((g7795
                                                                                 (letrec ((x7796
                                                                                           (letrec ((x7797
                                                                                                     (pair?/c
                                                                                                      j7365
                                                                                                      k7366
                                                                                                      g7364)))
                                                                                             (f7367
                                                                                              x7797))))
                                                                                   (any/c
                                                                                    j7365
                                                                                    k7366
                                                                                    x7796))))
                                                                         g7795))))
                                                             g7794))
                                                         xj7362
                                                         xk7363
                                                         (lambda (p)
                                                           (letrec ((g7793
                                                                     (orig-car
                                                                      p)))
                                                             g7793)))))
                                                g7792)))
                                           (cdr
                                            (letrec ((xj7368 'server)
                                                     (xk7369 'client))
                                              (letrec ((g7798
                                                        ((lambda (j7371
                                                                  k7372
                                                                  f7373)
                                                           (letrec ((g7800
                                                                     (lambda (g7370)
                                                                       (letrec ((g7801
                                                                                 (letrec ((x7802
                                                                                           (letrec ((x7803
                                                                                                     (pair?/c
                                                                                                      j7371
                                                                                                      k7372
                                                                                                      g7370)))
                                                                                             (f7373
                                                                                              x7803))))
                                                                                   (any/c
                                                                                    j7371
                                                                                    k7372
                                                                                    x7802))))
                                                                         g7801))))
                                                             g7800))
                                                         xj7368
                                                         xk7369
                                                         (lambda (p)
                                                           (letrec ((g7799
                                                                     (orig-cdr
                                                                      p)))
                                                             g7799)))))
                                                g7798)))
                                           (cons
                                            (letrec ((xj7374 'server)
                                                     (xk7375 'client))
                                              (letrec ((g7804
                                                        ((lambda (j7378
                                                                  k7379
                                                                  f7380)
                                                           (letrec ((g7806
                                                                     (lambda (g7376
                                                                              g7377)
                                                                       (letrec ((g7807
                                                                                 (letrec ((x7808
                                                                                           (letrec ((x7810
                                                                                                     (any/c
                                                                                                      j7378
                                                                                                      k7379
                                                                                                      g7376))
                                                                                                    (x7809
                                                                                                     (any/c
                                                                                                      j7378
                                                                                                      k7379
                                                                                                      g7377)))
                                                                                             (f7380
                                                                                              x7810
                                                                                              x7809))))
                                                                                   (pair?/c
                                                                                    j7378
                                                                                    k7379
                                                                                    x7808))))
                                                                         g7807))))
                                                             g7806))
                                                         xj7374
                                                         xk7375
                                                         (lambda (a b)
                                                           (letrec ((g7805
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7805)))))
                                                g7804)))
                                           (vector-ref
                                            (letrec ((xj7381 'server)
                                                     (xk7382 'client))
                                              (letrec ((g7811
                                                        ((lambda (j7384
                                                                  k7385
                                                                  f7386)
                                                           (letrec ((g7813
                                                                     (lambda (g7383)
                                                                       (letrec ((g7814
                                                                                 (letrec ((x7815
                                                                                           (letrec ((x7816
                                                                                                     (vector?/c
                                                                                                      j7384
                                                                                                      k7385
                                                                                                      g7383)))
                                                                                             (f7386
                                                                                              x7816))))
                                                                                   (integer?/c
                                                                                    j7384
                                                                                    k7385
                                                                                    x7815))))
                                                                         g7814))))
                                                             g7813))
                                                         xj7381
                                                         xk7382
                                                         (lambda (v i)
                                                           (letrec ((g7812
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7812)))))
                                                g7811)))
                                           (vector-set!
                                            (letrec ((xj7387 'server)
                                                     (xk7388 'client))
                                              (letrec ((g7817
                                                        ((lambda (j7391
                                                                  k7392
                                                                  f7393)
                                                           (letrec ((g7819
                                                                     (lambda (g7389
                                                                              g7390)
                                                                       (letrec ((g7820
                                                                                 (letrec ((x7821
                                                                                           (letrec ((x7823
                                                                                                     (vector?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7389))
                                                                                                    (x7822
                                                                                                     (integer?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7390)))
                                                                                             (f7393
                                                                                              x7823
                                                                                              x7822))))
                                                                                   (any/c
                                                                                    j7391
                                                                                    k7392
                                                                                    x7821))))
                                                                         g7820))))
                                                             g7819))
                                                         xj7387
                                                         xk7388
                                                         (lambda (vec i v)
                                                           (letrec ((g7818
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7818)))))
                                                g7817)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7824
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7824)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7825
                                                        (letrec ((x7826
                                                                  (letrec ((x7827
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7827))))
                                                          (cdr x7826))))
                                                g7825)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7828
                                                        (letrec ((x7831
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7831)))
                                                       (g7829
                                                        (letrec ((x7832
                                                                  (list? l)))
                                                          (assert x7832)))
                                                       (g7830
                                                        (letrec ((x-cnd7833
                                                                  (null? l)))
                                                          (if x-cnd7833
                                                            '()
                                                            (letrec ((x7836
                                                                      (letrec ((x7837
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7837)))
                                                                     (x7834
                                                                      (letrec ((x7835
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7835))))
                                                              (cons
                                                               x7836
                                                               x7834))))))
                                                g7830)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7838
                                                        (letrec ((x7839
                                                                  (car x)))
                                                          (cdr x7839))))
                                                g7838)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7840
                                                        (letrec ((x7841
                                                                  (letrec ((x7842
                                                                            (letrec ((x7843
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7843))))
                                                                    (cdr
                                                                     x7842))))
                                                          (car x7841))))
                                                g7840)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7844
                                                        (letrec ((x7845
                                                                  (letrec ((x7846
                                                                            (letrec ((x7847
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7847))))
                                                                    (car
                                                                     x7846))))
                                                          (cdr x7845))))
                                                g7844)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7848
                                                        (letrec ((x7851
                                                                  (string?
                                                                   filename)))
                                                          (assert x7851)))
                                                       (g7849
                                                        (letrec ((x7852
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7852)))
                                                       (g7850
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7853
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7854 res))
                                                            g7854))))
                                                g7850)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7855
                                                        (letrec ((x7856
                                                                  (letrec ((x7857
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7857))))
                                                          (car x7856))))
                                                g7855)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7858
                                                        (letrec ((x7859
                                                                  (letrec ((x7860
                                                                            (letrec ((x7861
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7861))))
                                                                    (car
                                                                     x7860))))
                                                          (cdr x7859))))
                                                g7858)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7862
                                                        (letrec ((x7864
                                                                  (list? l)))
                                                          (assert x7864)))
                                                       (g7863
                                                        (letrec ((x-cnd7865
                                                                  (null? l)))
                                                          (if x-cnd7865
                                                            #f
                                                            (letrec ((x-cnd7866
                                                                      (letrec ((x7867
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7867
                                                                         k))))
                                                              (if x-cnd7866
                                                                (car l)
                                                                (letrec ((x7868
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7868))))))))
                                                g7863)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7869
                                                        (letrec ((x7870
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7870))))
                                                g7869)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7871
                                                        (letrec ((x7873
                                                                  (list? l)))
                                                          (assert x7873)))
                                                       (g7872
                                                        (letrec ((x-cnd7874
                                                                  (null? l)))
                                                          (if x-cnd7874
                                                            ""
                                                            (letrec ((x7877
                                                                      (letrec ((x7878
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7878)))
                                                                     (x7875
                                                                      (letrec ((x7876
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7876))))
                                                              (string-append
                                                               x7877
                                                               x7875))))))
                                                g7872)))
                                           (char<=?
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
                                                        (letrec ((val7247
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7884
                                                                    (if val7247
                                                                      val7247
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7884))))
                                                g7881)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7885
                                                        (letrec ((x7886
                                                                  (letrec ((x7887
                                                                            (letrec ((x7888
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7888))))
                                                                    (cdr
                                                                     x7887))))
                                                          (cdr x7886))))
                                                g7885)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7889
                                                        (letrec ((x7892
                                                                  (list? l)))
                                                          (assert x7892)))
                                                       (g7890
                                                        (letrec ((x7893
                                                                  (number?)))
                                                          (assert x7893)))
                                                       (g7891
                                                        (letrec ((x-cnd7894
                                                                  (zero? k)))
                                                          (if x-cnd7894
                                                            x
                                                            (letrec ((x7896
                                                                      (cdr x))
                                                                     (x7895
                                                                      (- k 1)))
                                                              (list-tail
                                                               x7896
                                                               x7895))))))
                                                g7891)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g7897 '())) g7897)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g7898
                                                        (letrec ((x-cnd7899
                                                                  (letrec ((x7900
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x7900))))
                                                          (if x-cnd7899
                                                            (letrec ((x7901
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x7901))
                                                            #f))))
                                                g7898)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g7902
                                                        (letrec ((val7248
                                                                  (letrec ((x7903
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x7903
                                                                     9))))
                                                          (letrec ((g7904
                                                                    (if val7248
                                                                      val7248
                                                                      (letrec ((val7249
                                                                                (letrec ((x7905
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x7905
                                                                                   10))))
                                                                        (letrec ((g7906
                                                                                  (if val7249
                                                                                    val7249
                                                                                    (letrec ((x7907
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x7907
                                                                                       32)))))
                                                                          g7906)))))
                                                            g7904))))
                                                g7902)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g7908
                                                        (letrec ((x7909
                                                                  (letrec ((x7910
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7910))))
                                                          (cdr x7909))))
                                                g7908)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g7911
                                                        (letrec ((x7913
                                                                  (number? x)))
                                                          (assert x7913)))
                                                       (g7912 (> x 0)))
                                                g7912)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g7914 #f)) g7914)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g7915
                                                        (letrec ((x7916
                                                                  (cdr x)))
                                                          (cdr x7916))))
                                                g7915)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g7917
                                                        (letrec ((x7919
                                                                  (number? x)))
                                                          (assert x7919)))
                                                       (g7918
                                                        (letrec ((x-cnd7920
                                                                  (< x 0)))
                                                          (if x-cnd7920
                                                            (ceiling x)
                                                            (floor x)))))
                                                g7918)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g7921
                                                        (letrec ((val7250
                                                                  (eq? a b)))
                                                          (letrec ((g7922
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x-cnd7923
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd7923
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g7924
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((val7252
                                                                                              (letrec ((x-cnd7925
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd7925
                                                                                                  (letrec ((x-cnd7926
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd7926
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g7927
                                                                                                (if val7252
                                                                                                  val7252
                                                                                                  (letrec ((val7253
                                                                                                            (letrec ((x-cnd7928
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd7928
                                                                                                                (letrec ((x-cnd7929
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd7929
                                                                                                                    (letrec ((x-cnd7930
                                                                                                                              (letrec ((x7932
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x7931
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x7932
                                                                                                                                 x7931))))
                                                                                                                      (if x-cnd7930
                                                                                                                        (letrec ((x7934
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x7933
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x7934
                                                                                                                           x7933))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g7935
                                                                                                              (if val7253
                                                                                                                val7253
                                                                                                                (letrec ((x-cnd7936
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd7936
                                                                                                                    (letrec ((x-cnd7937
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd7937
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g7938
                                                                                                                                    (letrec ((x-cnd7939
                                                                                                                                              (letrec ((x7940
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x7940
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd7939
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g7941
                                                                                                                                                              (letrec ((val7254
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g7942
                                                                                                                                                                          (if val7254
                                                                                                                                                                            val7254
                                                                                                                                                                            (letrec ((x-cnd7943
                                                                                                                                                                                      (letrec ((x7945
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x7944
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x7945
                                                                                                                                                                                         x7944))))
                                                                                                                                                                              (if x-cnd7943
                                                                                                                                                                                (letrec ((x7946
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x7946))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g7942))))
                                                                                                                                                      g7941))))
                                                                                                                                          (letrec ((g7947
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g7947))
                                                                                                                                        #f))))
                                                                                                                            g7938))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g7935)))))
                                                                                        g7927)))))
                                                                          g7924)))))
                                                            g7922))))
                                                g7921)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g7948
                                                        (letrec ((x7949
                                                                  (letrec ((x7950
                                                                            (letrec ((x7951
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7951))))
                                                                    (car
                                                                     x7950))))
                                                          (cdr x7949))))
                                                g7948)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g7952
                                                        (letrec ((x7953
                                                                  (letrec ((x7954
                                                                            (letrec ((x7955
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7955))))
                                                                    (car
                                                                     x7954))))
                                                          (car x7953))))
                                                g7952)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g7956 (eq? x y)))
                                                g7956)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g7957
                                                        (letrec ((x7960
                                                                  (string?
                                                                   filename)))
                                                          (assert x7960)))
                                                       (g7958
                                                        (letrec ((x7961
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7961)))
                                                       (g7959
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g7962
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g7963 res))
                                                            g7963))))
                                                g7959)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g7964 (cons x '())))
                                                g7964)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g7965
                                                        (letrec ((x7968
                                                                  (char? c1)))
                                                          (assert x7968)))
                                                       (g7966
                                                        (letrec ((x7969
                                                                  (char? c2)))
                                                          (assert x7969)))
                                                       (g7967
                                                        (letrec ((val7255
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7970
                                                                    (if val7255
                                                                      val7255
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7970))))
                                                g7967)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g7971
                                                        (letrec ((x7972
                                                                  (letrec ((x7973
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x7973))))
                                                          (cdr x7972))))
                                                g7971)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g7974
                                                        (letrec ((x7975
                                                                  (letrec ((x7976
                                                                            (letrec ((x7977
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x7977))))
                                                                    (car
                                                                     x7976))))
                                                          (cdr x7975))))
                                                g7974)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g7978
                                                        (letrec ((x7979
                                                                  (letrec ((x7980
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x7980))))
                                                          (car x7979))))
                                                g7978)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g7981
                                                        (letrec ((x7982
                                                                  (letrec ((x7983
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x7983))))
                                                          (car x7982))))
                                                g7981)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g7984
                                                        (letrec ((x7987
                                                                  (char? c1)))
                                                          (assert x7987)))
                                                       (g7985
                                                        (letrec ((x7988
                                                                  (char? c2)))
                                                          (assert x7988)))
                                                       (g7986
                                                        (letrec ((x7989
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x7989))))
                                                g7986)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g7990
                                                        (letrec ((x7991
                                                                  (letrec ((x7992
                                                                            (letrec ((x7993
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x7993))))
                                                                    (car
                                                                     x7992))))
                                                          (car x7991))))
                                                g7990)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g7994
                                                        (letrec ((x7996
                                                                  (number? x)))
                                                          (assert x7996)))
                                                       (g7995 (< x 0)))
                                                g7995)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g7997 (memq e l)))
                                                g7997)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g7998
                                                        (letrec ((x7999
                                                                  (letrec ((x8000
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8000))))
                                                          (car x7999))))
                                                g7998)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8001 '())) g8001)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8002
                                                        (letrec ((x8004
                                                                  (list? l)))
                                                          (assert x8004)))
                                                       (g8003
                                                        (letrec ((x-cnd8005
                                                                  (null? l)))
                                                          (if x-cnd8005
                                                            '()
                                                            (letrec ((x8008
                                                                      (letrec ((x8009
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8009)))
                                                                     (x8006
                                                                      (letrec ((x8007
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8007))))
                                                              (append
                                                               x8008
                                                               x8006))))))
                                                g8003)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8010
                                                        (letrec ((x8011
                                                                  (letrec ((x8012
                                                                            (letrec ((x8013
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8013))))
                                                                    (car
                                                                     x8012))))
                                                          (car x8011))))
                                                g8010)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8014
                                                        (letrec ((x8015
                                                                  (letrec ((x8016
                                                                            (letrec ((x8017
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8017))))
                                                                    (cdr
                                                                     x8016))))
                                                          (cdr x8015))))
                                                g8014)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8018
                                                        (letrec ((x8020
                                                                  (number? x)))
                                                          (assert x8020)))
                                                       (g8019
                                                        (letrec ((x8021
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8021))))
                                                g8019)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8022
                                                        (letrec ((x8023
                                                                  (letrec ((x8024
                                                                            (letrec ((x8025
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8025))))
                                                                    (car
                                                                     x8024))))
                                                          (car x8023))))
                                                g8022)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8026
                                                        (letrec ((x8029
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8029)))
                                                       (g8027
                                                        (letrec ((x8030
                                                                  (list?
                                                                   args)))
                                                          (assert x8030)))
                                                       (g8028
                                                        (letrec ((x-cnd8031
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8031
                                                            (letrec ((g8032
                                                                      (proc)))
                                                              g8032)
                                                            (letrec ((x-cnd8033
                                                                      (letrec ((x8034
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8034))))
                                                              (if x-cnd8033
                                                                (letrec ((g8035
                                                                          (letrec ((x8036
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8036))))
                                                                  g8035)
                                                                (letrec ((x-cnd8037
                                                                          (letrec ((x8038
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8038))))
                                                                  (if x-cnd8037
                                                                    (letrec ((g8039
                                                                              (letrec ((x8041
                                                                                        (car
                                                                                         args))
                                                                                       (x8040
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8041
                                                                                 x8040))))
                                                                      g8039)
                                                                    (letrec ((x-cnd8042
                                                                              (letrec ((x8043
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8043))))
                                                                      (if x-cnd8042
                                                                        (letrec ((g8044
                                                                                  (letrec ((x8047
                                                                                            (car
                                                                                             args))
                                                                                           (x8046
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8045
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8047
                                                                                     x8046
                                                                                     x8045))))
                                                                          g8044)
                                                                        (letrec ((x-cnd8048
                                                                                  (letrec ((x8049
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8049))))
                                                                          (if x-cnd8048
                                                                            (letrec ((g8050
                                                                                      (letrec ((x8054
                                                                                                (car
                                                                                                 args))
                                                                                               (x8053
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8052
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8051
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8054
                                                                                         x8053
                                                                                         x8052
                                                                                         x8051))))
                                                                              g8050)
                                                                            (letrec ((x-cnd8055
                                                                                      (letrec ((x8056
                                                                                                (letrec ((x8057
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8057))))
                                                                                        (null?
                                                                                         x8056))))
                                                                              (if x-cnd8055
                                                                                (letrec ((g8058
                                                                                          (letrec ((x8064
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8063
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8062
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8061
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8059
                                                                                                    (letrec ((x8060
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8060))))
                                                                                            (proc
                                                                                             x8064
                                                                                             x8063
                                                                                             x8062
                                                                                             x8061
                                                                                             x8059))))
                                                                                  g8058)
                                                                                (letrec ((x-cnd8065
                                                                                          (letrec ((x8066
                                                                                                    (letrec ((x8067
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8067))))
                                                                                            (null?
                                                                                             x8066))))
                                                                                  (if x-cnd8065
                                                                                    (letrec ((g8068
                                                                                              (letrec ((x8076
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8075
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8074
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8073
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8071
                                                                                                        (letrec ((x8072
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8072)))
                                                                                                       (x8069
                                                                                                        (letrec ((x8070
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8070))))
                                                                                                (proc
                                                                                                 x8076
                                                                                                 x8075
                                                                                                 x8074
                                                                                                 x8073
                                                                                                 x8071
                                                                                                 x8069))))
                                                                                      g8068)
                                                                                    (letrec ((x-cnd8077
                                                                                              (letrec ((x8078
                                                                                                        (letrec ((x8079
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8079))))
                                                                                                (null?
                                                                                                 x8078))))
                                                                                      (if x-cnd8077
                                                                                        (letrec ((g8080
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
                                                                                                               x8086)))
                                                                                                           (x8083
                                                                                                            (letrec ((x8084
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8084)))
                                                                                                           (x8081
                                                                                                            (letrec ((x8082
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8082))))
                                                                                                    (proc
                                                                                                     x8090
                                                                                                     x8089
                                                                                                     x8088
                                                                                                     x8087
                                                                                                     x8085
                                                                                                     x8083
                                                                                                     x8081))))
                                                                                          g8080)
                                                                                        (letrec ((g8091
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8091)))))))))))))))))))
                                                g8028)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8092
                                                        (letrec ((x8094
                                                                  (list? l)))
                                                          (assert x8094)))
                                                       (g8093
                                                        (letrec ((x-cnd8095
                                                                  (null? l)))
                                                          (if x-cnd8095
                                                            #f
                                                            (letrec ((x-cnd8096
                                                                      (letrec ((x8097
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8097
                                                                         e))))
                                                              (if x-cnd8096
                                                                l
                                                                (letrec ((x8098
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8098))))))))
                                                g8093)))
                                           (cddddr
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
                                                          (cdr x8100))))
                                                g8099)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8103
                                                        (letrec ((x8104
                                                                  (letrec ((x8105
                                                                            (letrec ((x8106
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8106))))
                                                                    (cdr
                                                                     x8105))))
                                                          (car x8104))))
                                                g8103)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8107 (random 42)))
                                                g8107)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8108
                                                        (letrec ((x8110
                                                                  (number? x)))
                                                          (assert x8110)))
                                                       (g8109 (= x 0)))
                                                g8109)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8111
                                                        (letrec ((val7256
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8112
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8112))))
                                                g8111)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8113
                                                        (letrec ((x8114
                                                                  (cdr x)))
                                                          (car x8114))))
                                                g8113)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8115
                                                        (letrec ((val7257
                                                                  (letrec ((x-cnd8116
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8116
                                                                      (letrec ((x8117
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8117))
                                                                      #f))))
                                                          (letrec ((g8118
                                                                    (if val7257
                                                                      val7257
                                                                      (null?
                                                                       l))))
                                                            g8118))))
                                                g8115)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8119
                                                        (letrec ((x8120
                                                                  (letrec ((x8121
                                                                            (letrec ((x8122
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8122))))
                                                                    (cdr
                                                                     x8121))))
                                                          (cdr x8120))))
                                                g8119)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8123
                                                        (letrec ((x-cnd8124
                                                                  (letrec ((x8125
                                                                            #\0))
                                                                    (char<=?
                                                                     x8125
                                                                     c))))
                                                          (if x-cnd8124
                                                            (letrec ((x8126
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8126))
                                                            #f))))
                                                g8123)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8127
                                                        (letrec ((x8129
                                                                  (list? l)))
                                                          (assert x8129)))
                                                       (g8128
                                                        (letrec ((x-cnd8130
                                                                  (null? l)))
                                                          (if x-cnd8130
                                                            #f
                                                            (letrec ((x-cnd8131
                                                                      (letrec ((x8132
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8132
                                                                         k))))
                                                              (if x-cnd8131
                                                                (car l)
                                                                (letrec ((x8133
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8133))))))))
                                                g8128)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8134 (if x #f #t)))
                                                g8134)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8135 (append l1 l2)))
                                                g8135)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8136
                                                        (letrec ((x8138
                                                                  (list? l)))
                                                          (assert x8138)))
                                                       (g8137
                                                        (letrec ((x-cnd8139
                                                                  (null? l)))
                                                          (if x-cnd8139
                                                            #f
                                                            (letrec ((x-cnd8140
                                                                      (letrec ((x8141
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8141
                                                                         e))))
                                                              (if x-cnd8140
                                                                l
                                                                (letrec ((x8142
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8142))))))))
                                                g8137)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8143
                                                        (letrec ((x8144
                                                                  (letrec ((x8145
                                                                            (letrec ((x8146
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8146))))
                                                                    (cdr
                                                                     x8145))))
                                                          (car x8144))))
                                                g8143)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8147
                                                        (letrec ((x8149
                                                                  (list? l)))
                                                          (assert x8149)))
                                                       (g8148
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8150
                                                                              (letrec ((x-cnd8151
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8151
                                                                                  0
                                                                                  (letrec ((x8152
                                                                                            (letrec ((x8153
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8153))))
                                                                                    (+
                                                                                     1
                                                                                     x8152))))))
                                                                      g8150))))
                                                          (letrec ((g8154
                                                                    (rec l)))
                                                            g8154))))
                                                g8148)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8155
                                                        (letrec ((x8158
                                                                  (char? c1)))
                                                          (assert x8158)))
                                                       (g8156
                                                        (letrec ((x8159
                                                                  (char? c2)))
                                                          (assert x8159)))
                                                       (g8157
                                                        (letrec ((val7258
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8160
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8160))))
                                                g8157)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8161
                                                        (letrec ((x8162
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8162))))
                                                g8161)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8163
                                                        (letrec ((x8164
                                                                  (letrec ((x8165
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8165))))
                                                          (cdr x8164))))
                                                g8163)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8166
                                                        (letrec ((x8168
                                                                  (list? l)))
                                                          (assert x8168)))
                                                       (g8167
                                                        (letrec ((x-cnd8169
                                                                  (null? l)))
                                                          (if x-cnd8169
                                                            #f
                                                            (letrec ((x-cnd8170
                                                                      (letrec ((x8171
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8171
                                                                         k))))
                                                              (if x-cnd8170
                                                                (car l)
                                                                (letrec ((x8172
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8172))))))))
                                                g8167)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8173
                                                        (letrec ((x8174
                                                                  (car x)))
                                                          (car x8174))))
                                                g8173)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8175
                                                        (letrec ((x8178
                                                                  (char? c1)))
                                                          (assert x8178)))
                                                       (g8176
                                                        (letrec ((x8179
                                                                  (char? c2)))
                                                          (assert x8179)))
                                                       (g8177
                                                        (letrec ((x8180
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8180))))
                                                g8177)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8181
                                                        (letrec ((val7259
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8182
                                                                    (if val7259
                                                                      val7259
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8182))))
                                                g8181)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8183
                                                        (letrec ((x8186
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8186)))
                                                       (g8184
                                                        (letrec ((x8187
                                                                  (list? l)))
                                                          (assert x8187)))
                                                       (g8185
                                                        (letrec ((x-cnd8188
                                                                  (null? l)))
                                                          (if x-cnd8188
                                                            #t
                                                            (letrec ((x-cnd8189
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8189
                                                                (letrec ((g8190
                                                                          (letrec ((x8192
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8192)))
                                                                         (g8191
                                                                          (letrec ((x8193
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8193))))
                                                                  g8191)
                                                                '()))))))
                                                g8185)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8194
                                                        (letrec ((x8196
                                                                  (number? x)))
                                                          (assert x8196)))
                                                       (g8195
                                                        (letrec ((x-cnd8197
                                                                  (< x 0)))
                                                          (if x-cnd8197
                                                            (- 0 x)
                                                            x))))
                                                g8195)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8198
                                                        (letrec ((x8201
                                                                  (char? c1)))
                                                          (assert x8201)))
                                                       (g8199
                                                        (letrec ((x8202
                                                                  (char? c2)))
                                                          (assert x8202)))
                                                       (g8200
                                                        (letrec ((val7260
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8203
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8203))))
                                                g8200)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8204
                                                        (letrec ((x8205
                                                                  (letrec ((x8206
                                                                            (letrec ((x8207
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8207))))
                                                                    (cdr
                                                                     x8206))))
                                                          (car x8205))))
                                                g8204)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8208 #f)) g8208)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8209
                                                        (letrec ((x8211
                                                                  (letrec ((x8212
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8212)))
                                                                 (x8210
                                                                  (gcd m n)))
                                                          (/ x8211 x8210))))
                                                g8209)))
                                           (deref car)
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
                          g7673))))
              g7657)))
    g7656))
