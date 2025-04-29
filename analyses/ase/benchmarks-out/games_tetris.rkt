(letrec ((any? (lambda (v) (letrec ((g7780 #t)) g7780)))
         (meta (lambda (v) (letrec ((g7781 v)) g7781)))
         (member
          (lambda (v lst)
            (letrec ((g7782
                      (letrec ((g7783
                                (letrec ((x-e7784 lst))
                                  (match
                                   x-e7784
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7785 (eq? v v1)))
                                       (if x-cnd7785 #t (member v vs)))))))))
                        g7783)))
              g7782)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7786 (lambda (v) (letrec ((g7787 v)) g7787)))) g7786)))
         (nonzero?
          (lambda (v)
            (letrec ((g7788 (letrec ((x7789 (= v 0))) (not x7789)))) g7788))))
  (letrec ((g7790
            (letrec ((g7791
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7792
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7792)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7793
                                            (letrec ((x7795 (number? x)))
                                              (assert x7795)))
                                           (g7794
                                            (letrec ((val7244 (> x y)))
                                              (letrec ((g7796
                                                        (if val7244
                                                          val7244
                                                          (letrec ((val7245
                                                                    (= x y)))
                                                            (letrec ((g7797
                                                                      (if val7245
                                                                        val7245
                                                                        #f)))
                                                              g7797)))))
                                                g7796))))
                                    g7794)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7798
                                            (letrec ((x7800 (number? x)))
                                              (assert x7800)))
                                           (g7799
                                            (letrec ((val7246 (< x y)))
                                              (letrec ((g7801
                                                        (if val7246
                                                          val7246
                                                          (letrec ((val7247
                                                                    (= x y)))
                                                            (letrec ((g7802
                                                                      (if val7247
                                                                        val7247
                                                                        #f)))
                                                              g7802)))))
                                                g7801))))
                                    g7799)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7803
                                            (letrec ((x7805 (number? x)))
                                              (assert x7805)))
                                           (g7804
                                            (letrec ((x7806 (<= x y)))
                                              (not x7806))))
                                    g7804)))
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
                        (letrec ((g7807 '())
                                 (g7808
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7809
                                                        (lambda (k j lst)
                                                          (letrec ((g7810
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7811
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7811))
                                                                     lst)))
                                                            g7810))))
                                                g7809)))
                                           (real?/c
                                            (lambda (g7266 g7267 g7268)
                                              (letrec ((g7812
                                                        (letrec ((x-cnd7813
                                                                  (real?
                                                                   g7268)))
                                                          (if x-cnd7813
                                                            g7268
                                                            (blame
                                                             g7266
                                                             'real?)))))
                                                g7812)))
                                           (boolean?/c
                                            (lambda (g7269 g7270 g7271)
                                              (letrec ((g7814
                                                        (letrec ((x-cnd7815
                                                                  (boolean?
                                                                   g7271)))
                                                          (if x-cnd7815
                                                            g7271
                                                            (blame
                                                             g7269
                                                             'boolean?)))))
                                                g7814)))
                                           (number?/c
                                            (lambda (g7272 g7273 g7274)
                                              (letrec ((g7816
                                                        (letrec ((x-cnd7817
                                                                  (number?
                                                                   g7274)))
                                                          (if x-cnd7817
                                                            g7274
                                                            (blame
                                                             g7272
                                                             'number?)))))
                                                g7816)))
                                           (any/c
                                            (lambda (g7275 g7276 g7277)
                                              (letrec ((g7818
                                                        (letrec ((x-cnd7819
                                                                  ((lambda (v)
                                                                     (letrec ((g7820
                                                                               #t))
                                                                       g7820))
                                                                   g7277)))
                                                          (if x-cnd7819
                                                            g7277
                                                            (blame
                                                             g7275
                                                             '(lambda (v)
                                                                #t))))))
                                                g7818)))
                                           (any?/c
                                            (lambda (g7278 g7279 g7280)
                                              (letrec ((g7821
                                                        (letrec ((x-cnd7822
                                                                  ((lambda (v)
                                                                     (letrec ((g7823
                                                                               #t))
                                                                       g7823))
                                                                   g7280)))
                                                          (if x-cnd7822
                                                            g7280
                                                            (blame
                                                             g7278
                                                             '(lambda (v)
                                                                #t))))))
                                                g7821)))
                                           (cons?/c
                                            (lambda (g7281 g7282 g7283)
                                              (letrec ((g7824
                                                        (letrec ((x-cnd7825
                                                                  (pair?
                                                                   g7283)))
                                                          (if x-cnd7825
                                                            g7283
                                                            (blame
                                                             g7281
                                                             'pair?)))))
                                                g7824)))
                                           (cons/c
                                            (lambda (k1 k2)
                                              (letrec ((g7826
                                                        (lambda (k j v)
                                                          (letrec ((g7827
                                                                    (letrec ((x7830
                                                                              (letrec ((x7831
                                                                                        (car
                                                                                         v)))
                                                                                (k1
                                                                                 k
                                                                                 j
                                                                                 x7831)))
                                                                             (x7828
                                                                              (letrec ((x7829
                                                                                        (cdr
                                                                                         v)))
                                                                                (k2
                                                                                 k
                                                                                 j
                                                                                 x7829))))
                                                                      (cons
                                                                       x7830
                                                                       x7828))))
                                                            g7827))))
                                                g7826)))
                                           (pair?/c
                                            (lambda (g7284 g7285 g7286)
                                              (letrec ((g7832
                                                        (letrec ((x-cnd7833
                                                                  (pair?
                                                                   g7286)))
                                                          (if x-cnd7833
                                                            g7286
                                                            (blame
                                                             g7284
                                                             'pair?)))))
                                                g7832)))
                                           (integer?/c
                                            (lambda (g7287 g7288 g7289)
                                              (letrec ((g7834
                                                        (letrec ((x-cnd7835
                                                                  (integer?
                                                                   g7289)))
                                                          (if x-cnd7835
                                                            g7289
                                                            (blame
                                                             g7287
                                                             'integer?)))))
                                                g7834)))
                                           (symbol?/c
                                            (lambda (g7290 g7291 g7292)
                                              (letrec ((g7836
                                                        (letrec ((x-cnd7837
                                                                  (symbol?
                                                                   g7292)))
                                                          (if x-cnd7837
                                                            g7292
                                                            (blame
                                                             g7290
                                                             'symbol?)))))
                                                g7836)))
                                           (string?/c
                                            (lambda (g7293 g7294 g7295)
                                              (letrec ((g7838
                                                        (letrec ((x-cnd7839
                                                                  (string?
                                                                   g7295)))
                                                          (if x-cnd7839
                                                            g7295
                                                            (blame
                                                             g7293
                                                             'string?)))))
                                                g7838)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7840
                                                        (lambda (k j v)
                                                          (letrec ((g7841
                                                                    (letrec ((x-cnd7842
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7842
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7841))))
                                                g7840)))
                                           (or/c
                                            (lambda (c1 c2)
                                              (letrec ((g7843
                                                        (lambda (k j v)
                                                          (letrec ((g7844
                                                                    (letrec ((val7248
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (letrec ((g7845
                                                                                (if val7248
                                                                                  val7248
                                                                                  (c2
                                                                                   k
                                                                                   j
                                                                                   v))))
                                                                        g7845))))
                                                            g7844))))
                                                g7843)))
                                           (null?/c
                                            (lambda (g7296 g7297 g7298)
                                              (letrec ((g7846
                                                        (letrec ((x-cnd7847
                                                                  (null?
                                                                   g7298)))
                                                          (if x-cnd7847
                                                            g7298
                                                            (blame
                                                             g7296
                                                             'null?)))))
                                                g7846)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7848
                                                        (lambda (k j v)
                                                          (letrec ((g7849
                                                                    (letrec ((x-cnd7850
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7850
                                                                        '()
                                                                        (letrec ((x7854
                                                                                  (letrec ((x7855
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7855)))
                                                                                 (x7851
                                                                                  (letrec ((x7853
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7852
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7853
                                                                                     k
                                                                                     j
                                                                                     x7852))))
                                                                          (orig-cons
                                                                           x7854
                                                                           x7851))))))
                                                            g7849))))
                                                g7848)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7856 #t)) g7856)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7857
                                                        (letrec ((x7858
                                                                  (= v 0)))
                                                          (not x7858))))
                                                g7857)))
                                           (nonzero?/c
                                            (lambda (g7299 g7300 g7301)
                                              (letrec ((g7859
                                                        (letrec ((x-cnd7860
                                                                  ((lambda (v)
                                                                     (letrec ((g7861
                                                                               (letrec ((x7862
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7862))))
                                                                       g7861))
                                                                   g7301)))
                                                          (if x-cnd7860
                                                            g7301
                                                            (blame
                                                             g7299
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7859)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7863
                                                        (lambda (g7302
                                                                 g7303
                                                                 g7304)
                                                          (letrec ((g7864
                                                                    (letrec ((x-cnd7865
                                                                              ((lambda (v)
                                                                                 (letrec ((g7866
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7866))
                                                                               g7304)))
                                                                      (if x-cnd7865
                                                                        g7304
                                                                        (blame
                                                                         g7302
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7864))))
                                                g7863)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7867
                                                        (lambda (g7305
                                                                 g7306
                                                                 g7307)
                                                          (letrec ((g7868
                                                                    (letrec ((x-cnd7869
                                                                              ((lambda (v)
                                                                                 (letrec ((g7870
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7870))
                                                                               g7307)))
                                                                      (if x-cnd7869
                                                                        g7307
                                                                        (blame
                                                                         g7305
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7868))))
                                                g7867)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7871
                                                        (lambda (g7308
                                                                 g7309
                                                                 g7310)
                                                          (letrec ((g7872
                                                                    (letrec ((x-cnd7873
                                                                              ((lambda (v)
                                                                                 (letrec ((g7874
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7874))
                                                                               g7310)))
                                                                      (if x-cnd7873
                                                                        g7310
                                                                        (blame
                                                                         g7308
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7872))))
                                                g7871)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7875
                                                        (lambda (g7311
                                                                 g7312
                                                                 g7313)
                                                          (letrec ((g7876
                                                                    (letrec ((x-cnd7877
                                                                              ((lambda (v)
                                                                                 (letrec ((g7878
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7878))
                                                                               g7313)))
                                                                      (if x-cnd7877
                                                                        g7313
                                                                        (blame
                                                                         g7311
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7876))))
                                                g7875)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7879
                                                        (lambda (g7314
                                                                 g7315
                                                                 g7316)
                                                          (letrec ((g7880
                                                                    (letrec ((x-cnd7881
                                                                              ((lambda (v)
                                                                                 (letrec ((g7882
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7882))
                                                                               g7316)))
                                                                      (if x-cnd7881
                                                                        g7316
                                                                        (blame
                                                                         g7314
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7880))))
                                                g7879)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7883 v)) g7883)))
                                           (+
                                            (letrec ((xj7317 'server)
                                                     (xk7318 'client))
                                              (letrec ((g7884
                                                        ((lambda (j7321
                                                                  k7322
                                                                  f7323)
                                                           (letrec ((g7886
                                                                     (lambda (g7319
                                                                              g7320)
                                                                       (letrec ((g7887
                                                                                 (letrec ((x7888
                                                                                           (letrec ((x7890
                                                                                                     (number?/c
                                                                                                      j7321
                                                                                                      k7322
                                                                                                      g7319))
                                                                                                    (x7889
                                                                                                     (number?/c
                                                                                                      j7321
                                                                                                      k7322
                                                                                                      g7320)))
                                                                                             (f7323
                                                                                              x7890
                                                                                              x7889))))
                                                                                   (number?/c
                                                                                    j7321
                                                                                    k7322
                                                                                    x7888))))
                                                                         g7887))))
                                                             g7886))
                                                         xj7317
                                                         xk7318
                                                         (lambda (a b)
                                                           (letrec ((g7885
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7885)))))
                                                g7884)))
                                           (-
                                            (letrec ((xj7324 'server)
                                                     (xk7325 'client))
                                              (letrec ((g7891
                                                        ((lambda (j7328
                                                                  k7329
                                                                  f7330)
                                                           (letrec ((g7893
                                                                     (lambda (g7326
                                                                              g7327)
                                                                       (letrec ((g7894
                                                                                 (letrec ((x7895
                                                                                           (letrec ((x7897
                                                                                                     (number?/c
                                                                                                      j7328
                                                                                                      k7329
                                                                                                      g7326))
                                                                                                    (x7896
                                                                                                     (number?/c
                                                                                                      j7328
                                                                                                      k7329
                                                                                                      g7327)))
                                                                                             (f7330
                                                                                              x7897
                                                                                              x7896))))
                                                                                   (number?/c
                                                                                    j7328
                                                                                    k7329
                                                                                    x7895))))
                                                                         g7894))))
                                                             g7893))
                                                         xj7324
                                                         xk7325
                                                         (lambda (a b)
                                                           (letrec ((g7892
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7892)))))
                                                g7891)))
                                           (*
                                            (letrec ((xj7331 'server)
                                                     (xk7332 'client))
                                              (letrec ((g7898
                                                        ((lambda (j7335
                                                                  k7336
                                                                  f7337)
                                                           (letrec ((g7900
                                                                     (lambda (g7333
                                                                              g7334)
                                                                       (letrec ((g7901
                                                                                 (letrec ((x7902
                                                                                           (letrec ((x7904
                                                                                                     (number?/c
                                                                                                      j7335
                                                                                                      k7336
                                                                                                      g7333))
                                                                                                    (x7903
                                                                                                     (number?/c
                                                                                                      j7335
                                                                                                      k7336
                                                                                                      g7334)))
                                                                                             (f7337
                                                                                              x7904
                                                                                              x7903))))
                                                                                   (number?/c
                                                                                    j7335
                                                                                    k7336
                                                                                    x7902))))
                                                                         g7901))))
                                                             g7900))
                                                         xj7331
                                                         xk7332
                                                         (lambda (a b)
                                                           (letrec ((g7899
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7899)))))
                                                g7898)))
                                           (<
                                            (letrec ((xj7338 'server)
                                                     (xk7339 'client))
                                              (letrec ((g7905
                                                        ((lambda (j7342
                                                                  k7343
                                                                  f7344)
                                                           (letrec ((g7907
                                                                     (lambda (g7340
                                                                              g7341)
                                                                       (letrec ((g7908
                                                                                 (letrec ((x7909
                                                                                           (letrec ((x7911
                                                                                                     (number?/c
                                                                                                      j7342
                                                                                                      k7343
                                                                                                      g7340))
                                                                                                    (x7910
                                                                                                     (number?/c
                                                                                                      j7342
                                                                                                      k7343
                                                                                                      g7341)))
                                                                                             (f7344
                                                                                              x7911
                                                                                              x7910))))
                                                                                   (boolean?/c
                                                                                    j7342
                                                                                    k7343
                                                                                    x7909))))
                                                                         g7908))))
                                                             g7907))
                                                         xj7338
                                                         xk7339
                                                         (lambda (a b)
                                                           (letrec ((g7906
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7906)))))
                                                g7905)))
                                           (>
                                            (letrec ((xj7345 'server)
                                                     (xk7346 'client))
                                              (letrec ((g7912
                                                        ((lambda (j7349
                                                                  k7350
                                                                  f7351)
                                                           (letrec ((g7914
                                                                     (lambda (g7347
                                                                              g7348)
                                                                       (letrec ((g7915
                                                                                 (letrec ((x7916
                                                                                           (letrec ((x7918
                                                                                                     (number?/c
                                                                                                      j7349
                                                                                                      k7350
                                                                                                      g7347))
                                                                                                    (x7917
                                                                                                     (number?/c
                                                                                                      j7349
                                                                                                      k7350
                                                                                                      g7348)))
                                                                                             (f7351
                                                                                              x7918
                                                                                              x7917))))
                                                                                   (boolean?/c
                                                                                    j7349
                                                                                    k7350
                                                                                    x7916))))
                                                                         g7915))))
                                                             g7914))
                                                         xj7345
                                                         xk7346
                                                         (lambda (a b)
                                                           (letrec ((g7913
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7913)))))
                                                g7912)))
                                           (<=
                                            (letrec ((xj7352 'server)
                                                     (xk7353 'client))
                                              (letrec ((g7919
                                                        ((lambda (j7356
                                                                  k7357
                                                                  f7358)
                                                           (letrec ((g7921
                                                                     (lambda (g7354
                                                                              g7355)
                                                                       (letrec ((g7922
                                                                                 (letrec ((x7923
                                                                                           (letrec ((x7925
                                                                                                     (number?/c
                                                                                                      j7356
                                                                                                      k7357
                                                                                                      g7354))
                                                                                                    (x7924
                                                                                                     (number?/c
                                                                                                      j7356
                                                                                                      k7357
                                                                                                      g7355)))
                                                                                             (f7358
                                                                                              x7925
                                                                                              x7924))))
                                                                                   (boolean?/c
                                                                                    j7356
                                                                                    k7357
                                                                                    x7923))))
                                                                         g7922))))
                                                             g7921))
                                                         xj7352
                                                         xk7353
                                                         (lambda (a b)
                                                           (letrec ((g7920
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7920)))))
                                                g7919)))
                                           (>=
                                            (letrec ((xj7359 'server)
                                                     (xk7360 'client))
                                              (letrec ((g7926
                                                        ((lambda (j7363
                                                                  k7364
                                                                  f7365)
                                                           (letrec ((g7928
                                                                     (lambda (g7361
                                                                              g7362)
                                                                       (letrec ((g7929
                                                                                 (letrec ((x7930
                                                                                           (letrec ((x7932
                                                                                                     (number?/c
                                                                                                      j7363
                                                                                                      k7364
                                                                                                      g7361))
                                                                                                    (x7931
                                                                                                     (number?/c
                                                                                                      j7363
                                                                                                      k7364
                                                                                                      g7362)))
                                                                                             (f7365
                                                                                              x7932
                                                                                              x7931))))
                                                                                   (boolean?/c
                                                                                    j7363
                                                                                    k7364
                                                                                    x7930))))
                                                                         g7929))))
                                                             g7928))
                                                         xj7359
                                                         xk7360
                                                         (lambda (a b)
                                                           (letrec ((g7927
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7927)))))
                                                g7926)))
                                           (add1
                                            (lambda (x)
                                              (letrec ((g7933 (+ x 1)))
                                                g7933)))
                                           (sub1
                                            (lambda (x)
                                              (letrec ((g7934 (- x 1)))
                                                g7934)))
                                           (/
                                            (letrec ((xj7366 'server)
                                                     (xk7367 'client))
                                              (letrec ((g7935
                                                        ((lambda (j7370
                                                                  k7371
                                                                  f7372)
                                                           (letrec ((g7937
                                                                     (lambda (g7368
                                                                              g7369)
                                                                       (letrec ((g7938
                                                                                 (letrec ((x7939
                                                                                           (letrec ((x7941
                                                                                                     (number?/c
                                                                                                      j7370
                                                                                                      k7371
                                                                                                      g7368))
                                                                                                    (x7940
                                                                                                     (number?/c
                                                                                                      j7370
                                                                                                      k7371
                                                                                                      g7369)))
                                                                                             (f7372
                                                                                              x7941
                                                                                              x7940))))
                                                                                   (number?/c
                                                                                    j7370
                                                                                    k7371
                                                                                    x7939))))
                                                                         g7938))))
                                                             g7937))
                                                         xj7366
                                                         xk7367
                                                         (lambda (a b)
                                                           (letrec ((g7936
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7936)))))
                                                g7935)))
                                           (car
                                            (letrec ((xj7373 'server)
                                                     (xk7374 'client))
                                              (letrec ((g7942
                                                        ((lambda (j7376
                                                                  k7377
                                                                  f7378)
                                                           (letrec ((g7944
                                                                     (lambda (g7375)
                                                                       (letrec ((g7945
                                                                                 (letrec ((x7946
                                                                                           (letrec ((x7947
                                                                                                     (pair?/c
                                                                                                      j7376
                                                                                                      k7377
                                                                                                      g7375)))
                                                                                             (f7378
                                                                                              x7947))))
                                                                                   (any/c
                                                                                    j7376
                                                                                    k7377
                                                                                    x7946))))
                                                                         g7945))))
                                                             g7944))
                                                         xj7373
                                                         xk7374
                                                         (lambda (p)
                                                           (letrec ((g7943
                                                                     (orig-car
                                                                      p)))
                                                             g7943)))))
                                                g7942)))
                                           (cdr
                                            (letrec ((xj7379 'server)
                                                     (xk7380 'client))
                                              (letrec ((g7948
                                                        ((lambda (j7382
                                                                  k7383
                                                                  f7384)
                                                           (letrec ((g7950
                                                                     (lambda (g7381)
                                                                       (letrec ((g7951
                                                                                 (letrec ((x7952
                                                                                           (letrec ((x7953
                                                                                                     (pair?/c
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7381)))
                                                                                             (f7384
                                                                                              x7953))))
                                                                                   (any/c
                                                                                    j7382
                                                                                    k7383
                                                                                    x7952))))
                                                                         g7951))))
                                                             g7950))
                                                         xj7379
                                                         xk7380
                                                         (lambda (p)
                                                           (letrec ((g7949
                                                                     (orig-cdr
                                                                      p)))
                                                             g7949)))))
                                                g7948)))
                                           (cons
                                            (letrec ((xj7385 'server)
                                                     (xk7386 'client))
                                              (letrec ((g7954
                                                        ((lambda (j7389
                                                                  k7390
                                                                  f7391)
                                                           (letrec ((g7956
                                                                     (lambda (g7387
                                                                              g7388)
                                                                       (letrec ((g7957
                                                                                 (letrec ((x7958
                                                                                           (letrec ((x7960
                                                                                                     (any/c
                                                                                                      j7389
                                                                                                      k7390
                                                                                                      g7387))
                                                                                                    (x7959
                                                                                                     (any/c
                                                                                                      j7389
                                                                                                      k7390
                                                                                                      g7388)))
                                                                                             (f7391
                                                                                              x7960
                                                                                              x7959))))
                                                                                   (pair?/c
                                                                                    j7389
                                                                                    k7390
                                                                                    x7958))))
                                                                         g7957))))
                                                             g7956))
                                                         xj7385
                                                         xk7386
                                                         (lambda (a b)
                                                           (letrec ((g7955
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7955)))))
                                                g7954)))
                                           (vector-ref
                                            (letrec ((xj7392 'server)
                                                     (xk7393 'client))
                                              (letrec ((g7961
                                                        ((lambda (j7395
                                                                  k7396
                                                                  f7397)
                                                           (letrec ((g7963
                                                                     (lambda (g7394)
                                                                       (letrec ((g7964
                                                                                 (letrec ((x7965
                                                                                           (letrec ((x7966
                                                                                                     (vector?/c
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7394)))
                                                                                             (f7397
                                                                                              x7966))))
                                                                                   (integer?/c
                                                                                    j7395
                                                                                    k7396
                                                                                    x7965))))
                                                                         g7964))))
                                                             g7963))
                                                         xj7392
                                                         xk7393
                                                         (lambda (v i)
                                                           (letrec ((g7962
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7962)))))
                                                g7961)))
                                           (vector-set!
                                            (letrec ((xj7398 'server)
                                                     (xk7399 'client))
                                              (letrec ((g7967
                                                        ((lambda (j7402
                                                                  k7403
                                                                  f7404)
                                                           (letrec ((g7969
                                                                     (lambda (g7400
                                                                              g7401)
                                                                       (letrec ((g7970
                                                                                 (letrec ((x7971
                                                                                           (letrec ((x7973
                                                                                                     (vector?/c
                                                                                                      j7402
                                                                                                      k7403
                                                                                                      g7400))
                                                                                                    (x7972
                                                                                                     (integer?/c
                                                                                                      j7402
                                                                                                      k7403
                                                                                                      g7401)))
                                                                                             (f7404
                                                                                              x7973
                                                                                              x7972))))
                                                                                   (any/c
                                                                                    j7402
                                                                                    k7403
                                                                                    x7971))))
                                                                         g7970))))
                                                             g7969))
                                                         xj7398
                                                         xk7399
                                                         (lambda (vec i v)
                                                           (letrec ((g7968
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7968)))))
                                                g7967)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7974
                                                        (letrec ((x7975
                                                                  (letrec ((x7976
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7976))))
                                                          (cdr x7975))))
                                                g7974)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7977
                                                        (letrec ((x7980
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7980)))
                                                       (g7978
                                                        (letrec ((x7981
                                                                  (list? l)))
                                                          (assert x7981)))
                                                       (g7979
                                                        (letrec ((x-cnd7982
                                                                  (null? l)))
                                                          (if x-cnd7982
                                                            '()
                                                            (letrec ((x7985
                                                                      (letrec ((x7986
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7986)))
                                                                     (x7983
                                                                      (letrec ((x7984
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7984))))
                                                              (cons
                                                               x7985
                                                               x7983))))))
                                                g7979)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7987
                                                        (letrec ((x7988
                                                                  (car x)))
                                                          (cdr x7988))))
                                                g7987)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7989
                                                        (letrec ((x7990
                                                                  (letrec ((x7991
                                                                            (letrec ((x7992
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7992))))
                                                                    (cdr
                                                                     x7991))))
                                                          (car x7990))))
                                                g7989)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7993
                                                        (letrec ((x7994
                                                                  (letrec ((x7995
                                                                            (letrec ((x7996
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7996))))
                                                                    (car
                                                                     x7995))))
                                                          (cdr x7994))))
                                                g7993)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7997
                                                        (letrec ((x8000
                                                                  (string?
                                                                   filename)))
                                                          (assert x8000)))
                                                       (g7998
                                                        (letrec ((x8001
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8001)))
                                                       (g7999
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g8002
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g8003 res))
                                                            g8003))))
                                                g7999)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g8004
                                                        (letrec ((x8005
                                                                  (letrec ((x8006
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x8006))))
                                                          (car x8005))))
                                                g8004)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g8007
                                                        (letrec ((x8008
                                                                  (letrec ((x8009
                                                                            (letrec ((x8010
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8010))))
                                                                    (car
                                                                     x8009))))
                                                          (cdr x8008))))
                                                g8007)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g8011
                                                        (letrec ((x8013
                                                                  (list? l)))
                                                          (assert x8013)))
                                                       (g8012
                                                        (letrec ((x-cnd8014
                                                                  (null? l)))
                                                          (if x-cnd8014
                                                            #f
                                                            (letrec ((x-cnd8015
                                                                      (letrec ((x8016
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x8016
                                                                         k))))
                                                              (if x-cnd8015
                                                                (car l)
                                                                (letrec ((x8017
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8017))))))))
                                                g8012)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g8018
                                                        (letrec ((x8019
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x8019))))
                                                g8018)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g8020
                                                        (letrec ((x8022
                                                                  (list? l)))
                                                          (assert x8022)))
                                                       (g8021
                                                        (letrec ((x-cnd8023
                                                                  (null? l)))
                                                          (if x-cnd8023
                                                            ""
                                                            (letrec ((x8026
                                                                      (letrec ((x8027
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x8027)))
                                                                     (x8024
                                                                      (letrec ((x8025
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x8025))))
                                                              (string-append
                                                               x8026
                                                               x8024))))))
                                                g8021)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8028
                                                        (letrec ((x8031
                                                                  (char? c1)))
                                                          (assert x8031)))
                                                       (g8029
                                                        (letrec ((x8032
                                                                  (char? c2)))
                                                          (assert x8032)))
                                                       (g8030
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8033
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8033))))
                                                g8030)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g8034
                                                        (letrec ((x8035
                                                                  (letrec ((x8036
                                                                            (letrec ((x8037
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8037))))
                                                                    (cdr
                                                                     x8036))))
                                                          (cdr x8035))))
                                                g8034)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g8038
                                                        (letrec ((x8041
                                                                  (list? l)))
                                                          (assert x8041)))
                                                       (g8039
                                                        (letrec ((x8042
                                                                  (number?)))
                                                          (assert x8042)))
                                                       (g8040
                                                        (letrec ((x-cnd8043
                                                                  (zero? k)))
                                                          (if x-cnd8043
                                                            x
                                                            (letrec ((x8045
                                                                      (cdr x))
                                                                     (x8044
                                                                      (- k 1)))
                                                              (list-tail
                                                               x8045
                                                               x8044))))))
                                                g8040)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g8046 '())) g8046)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g8047
                                                        (letrec ((x-cnd8048
                                                                  (letrec ((x8049
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x8049))))
                                                          (if x-cnd8048
                                                            (letrec ((x8050
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x8050))
                                                            #f))))
                                                g8047)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g8051
                                                        (letrec ((val7250
                                                                  (letrec ((x8052
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x8052
                                                                     9))))
                                                          (letrec ((g8053
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x8054
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x8054
                                                                                   10))))
                                                                        (letrec ((g8055
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x8056
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x8056
                                                                                       32)))))
                                                                          g8055)))))
                                                            g8053))))
                                                g8051)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g8057
                                                        (letrec ((x8058
                                                                  (letrec ((x8059
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8059))))
                                                          (cdr x8058))))
                                                g8057)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g8060
                                                        (letrec ((x8062
                                                                  (number? x)))
                                                          (assert x8062)))
                                                       (g8061 (> x 0)))
                                                g8061)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g8063 (bool-top)))
                                                g8063)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g8064 #f)) g8064)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g8065
                                                        (letrec ((x8066
                                                                  (cdr x)))
                                                          (cdr x8066))))
                                                g8065)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g8067
                                                        (letrec ((x8069
                                                                  (number? x)))
                                                          (assert x8069)))
                                                       (g8068
                                                        (letrec ((x-cnd8070
                                                                  (< x 0)))
                                                          (if x-cnd8070
                                                            (ceiling x)
                                                            (floor x)))))
                                                g8068)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g8071
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g8072
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd8073
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd8073
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g8074
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd8075
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd8075
                                                                                                  (letrec ((x-cnd8076
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd8076
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g8077
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd8078
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd8078
                                                                                                                (letrec ((x-cnd8079
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd8079
                                                                                                                    (letrec ((x-cnd8080
                                                                                                                              (letrec ((x8082
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x8081
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x8082
                                                                                                                                 x8081))))
                                                                                                                      (if x-cnd8080
                                                                                                                        (letrec ((x8084
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x8083
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x8084
                                                                                                                           x8083))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g8085
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd8086
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd8086
                                                                                                                    (letrec ((x-cnd8087
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd8087
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g8088
                                                                                                                                    (letrec ((x-cnd8089
                                                                                                                                              (letrec ((x8090
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x8090
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd8089
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g8091
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g8092
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd8093
                                                                                                                                                                                      (letrec ((x8095
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x8094
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x8095
                                                                                                                                                                                         x8094))))
                                                                                                                                                                              (if x-cnd8093
                                                                                                                                                                                (letrec ((x8096
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x8096))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g8092))))
                                                                                                                                                      g8091))))
                                                                                                                                          (letrec ((g8097
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g8097))
                                                                                                                                        #f))))
                                                                                                                            g8088))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g8085)))))
                                                                                        g8077)))))
                                                                          g8074)))))
                                                            g8072))))
                                                g8071)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g8098
                                                        (letrec ((x8099
                                                                  (letrec ((x8100
                                                                            (letrec ((x8101
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8101))))
                                                                    (car
                                                                     x8100))))
                                                          (cdr x8099))))
                                                g8098)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g8102
                                                        (letrec ((x8103
                                                                  (letrec ((x8104
                                                                            (letrec ((x8105
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8105))))
                                                                    (car
                                                                     x8104))))
                                                          (car x8103))))
                                                g8102)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g8106 (eq? x y)))
                                                g8106)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g8107
                                                        (letrec ((x8110
                                                                  (string?
                                                                   filename)))
                                                          (assert x8110)))
                                                       (g8108
                                                        (letrec ((x8111
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8111)))
                                                       (g8109
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g8112
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g8113 res))
                                                            g8113))))
                                                g8109)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g8114 (cons x '())))
                                                g8114)))
                                           (char>=?
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
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8120
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8120))))
                                                g8117)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g8121
                                                        (letrec ((x8122
                                                                  (letrec ((x8123
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8123))))
                                                          (cdr x8122))))
                                                g8121)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g8124
                                                        (letrec ((x8125
                                                                  (letrec ((x8126
                                                                            (letrec ((x8127
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8127))))
                                                                    (car
                                                                     x8126))))
                                                          (cdr x8125))))
                                                g8124)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g8128
                                                        (letrec ((x8129
                                                                  (letrec ((x8130
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8130))))
                                                          (car x8129))))
                                                g8128)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g8131
                                                        (letrec ((x8132
                                                                  (letrec ((x8133
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8133))))
                                                          (car x8132))))
                                                g8131)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g8134
                                                        (letrec ((x8137
                                                                  (char? c1)))
                                                          (assert x8137)))
                                                       (g8135
                                                        (letrec ((x8138
                                                                  (char? c2)))
                                                          (assert x8138)))
                                                       (g8136
                                                        (letrec ((x8139
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8139))))
                                                g8136)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g8140
                                                        (letrec ((x8141
                                                                  (letrec ((x8142
                                                                            (letrec ((x8143
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8143))))
                                                                    (car
                                                                     x8142))))
                                                          (car x8141))))
                                                g8140)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g8144
                                                        (letrec ((x8146
                                                                  (number? x)))
                                                          (assert x8146)))
                                                       (g8145 (< x 0)))
                                                g8145)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g8147 (memq e l)))
                                                g8147)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g8148
                                                        (letrec ((x8149
                                                                  (letrec ((x8150
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8150))))
                                                          (car x8149))))
                                                g8148)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8151 '())) g8151)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8152
                                                        (letrec ((x8154
                                                                  (list? l)))
                                                          (assert x8154)))
                                                       (g8153
                                                        (letrec ((x-cnd8155
                                                                  (null? l)))
                                                          (if x-cnd8155
                                                            '()
                                                            (letrec ((x8158
                                                                      (letrec ((x8159
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8159)))
                                                                     (x8156
                                                                      (letrec ((x8157
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8157))))
                                                              (append
                                                               x8158
                                                               x8156))))))
                                                g8153)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8160
                                                        (letrec ((x8161
                                                                  (letrec ((x8162
                                                                            (letrec ((x8163
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8163))))
                                                                    (car
                                                                     x8162))))
                                                          (car x8161))))
                                                g8160)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8164
                                                        (letrec ((x8165
                                                                  (letrec ((x8166
                                                                            (letrec ((x8167
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8167))))
                                                                    (cdr
                                                                     x8166))))
                                                          (cdr x8165))))
                                                g8164)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8168
                                                        (letrec ((x8170
                                                                  (number? x)))
                                                          (assert x8170)))
                                                       (g8169
                                                        (letrec ((x8171
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8171))))
                                                g8169)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8172
                                                        (letrec ((x8173
                                                                  (letrec ((x8174
                                                                            (letrec ((x8175
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8175))))
                                                                    (car
                                                                     x8174))))
                                                          (car x8173))))
                                                g8172)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8176
                                                        (letrec ((x8179
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8179)))
                                                       (g8177
                                                        (letrec ((x8180
                                                                  (list?
                                                                   args)))
                                                          (assert x8180)))
                                                       (g8178
                                                        (letrec ((x-cnd8181
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8181
                                                            (letrec ((g8182
                                                                      (proc)))
                                                              g8182)
                                                            (letrec ((x-cnd8183
                                                                      (letrec ((x8184
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8184))))
                                                              (if x-cnd8183
                                                                (letrec ((g8185
                                                                          (letrec ((x8186
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8186))))
                                                                  g8185)
                                                                (letrec ((x-cnd8187
                                                                          (letrec ((x8188
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8188))))
                                                                  (if x-cnd8187
                                                                    (letrec ((g8189
                                                                              (letrec ((x8191
                                                                                        (car
                                                                                         args))
                                                                                       (x8190
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8191
                                                                                 x8190))))
                                                                      g8189)
                                                                    (letrec ((x-cnd8192
                                                                              (letrec ((x8193
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8193))))
                                                                      (if x-cnd8192
                                                                        (letrec ((g8194
                                                                                  (letrec ((x8197
                                                                                            (car
                                                                                             args))
                                                                                           (x8196
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8195
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8197
                                                                                     x8196
                                                                                     x8195))))
                                                                          g8194)
                                                                        (letrec ((x-cnd8198
                                                                                  (letrec ((x8199
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8199))))
                                                                          (if x-cnd8198
                                                                            (letrec ((g8200
                                                                                      (letrec ((x8204
                                                                                                (car
                                                                                                 args))
                                                                                               (x8203
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8202
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8201
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8204
                                                                                         x8203
                                                                                         x8202
                                                                                         x8201))))
                                                                              g8200)
                                                                            (letrec ((x-cnd8205
                                                                                      (letrec ((x8206
                                                                                                (letrec ((x8207
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8207))))
                                                                                        (null?
                                                                                         x8206))))
                                                                              (if x-cnd8205
                                                                                (letrec ((g8208
                                                                                          (letrec ((x8214
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8213
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8212
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8211
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8209
                                                                                                    (letrec ((x8210
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8210))))
                                                                                            (proc
                                                                                             x8214
                                                                                             x8213
                                                                                             x8212
                                                                                             x8211
                                                                                             x8209))))
                                                                                  g8208)
                                                                                (letrec ((x-cnd8215
                                                                                          (letrec ((x8216
                                                                                                    (letrec ((x8217
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8217))))
                                                                                            (null?
                                                                                             x8216))))
                                                                                  (if x-cnd8215
                                                                                    (letrec ((g8218
                                                                                              (letrec ((x8226
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8225
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8224
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8223
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8221
                                                                                                        (letrec ((x8222
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8222)))
                                                                                                       (x8219
                                                                                                        (letrec ((x8220
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8220))))
                                                                                                (proc
                                                                                                 x8226
                                                                                                 x8225
                                                                                                 x8224
                                                                                                 x8223
                                                                                                 x8221
                                                                                                 x8219))))
                                                                                      g8218)
                                                                                    (letrec ((x-cnd8227
                                                                                              (letrec ((x8228
                                                                                                        (letrec ((x8229
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8229))))
                                                                                                (null?
                                                                                                 x8228))))
                                                                                      (if x-cnd8227
                                                                                        (letrec ((g8230
                                                                                                  (letrec ((x8240
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8239
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8238
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8237
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8235
                                                                                                            (letrec ((x8236
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8236)))
                                                                                                           (x8233
                                                                                                            (letrec ((x8234
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8234)))
                                                                                                           (x8231
                                                                                                            (letrec ((x8232
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8232))))
                                                                                                    (proc
                                                                                                     x8240
                                                                                                     x8239
                                                                                                     x8238
                                                                                                     x8237
                                                                                                     x8235
                                                                                                     x8233
                                                                                                     x8231))))
                                                                                          g8230)
                                                                                        (letrec ((g8241
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8241)))))))))))))))))))
                                                g8178)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8242
                                                        (letrec ((x8244
                                                                  (list? l)))
                                                          (assert x8244)))
                                                       (g8243
                                                        (letrec ((x-cnd8245
                                                                  (null? l)))
                                                          (if x-cnd8245
                                                            #f
                                                            (letrec ((x-cnd8246
                                                                      (letrec ((x8247
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8247
                                                                         e))))
                                                              (if x-cnd8246
                                                                l
                                                                (letrec ((x8248
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8248))))))))
                                                g8243)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8249
                                                        (letrec ((x8250
                                                                  (letrec ((x8251
                                                                            (letrec ((x8252
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8252))))
                                                                    (cdr
                                                                     x8251))))
                                                          (cdr x8250))))
                                                g8249)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8253
                                                        (letrec ((x8254
                                                                  (letrec ((x8255
                                                                            (letrec ((x8256
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8256))))
                                                                    (cdr
                                                                     x8255))))
                                                          (car x8254))))
                                                g8253)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8257 (random 42)))
                                                g8257)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8258
                                                        (letrec ((x8260
                                                                  (number? x)))
                                                          (assert x8260)))
                                                       (g8259 (= x 0)))
                                                g8259)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8261
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8262
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8262))))
                                                g8261)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8263
                                                        (letrec ((x8264
                                                                  (cdr x)))
                                                          (car x8264))))
                                                g8263)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8265
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd8266
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8266
                                                                      (letrec ((x8267
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8267))
                                                                      #f))))
                                                          (letrec ((g8268
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g8268))))
                                                g8265)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8269
                                                        (letrec ((x8270
                                                                  (letrec ((x8271
                                                                            (letrec ((x8272
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8272))))
                                                                    (cdr
                                                                     x8271))))
                                                          (cdr x8270))))
                                                g8269)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8273
                                                        (letrec ((x-cnd8274
                                                                  (letrec ((x8275
                                                                            #\0))
                                                                    (char<=?
                                                                     x8275
                                                                     c))))
                                                          (if x-cnd8274
                                                            (letrec ((x8276
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8276))
                                                            #f))))
                                                g8273)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8277
                                                        (letrec ((x8279
                                                                  (list? l)))
                                                          (assert x8279)))
                                                       (g8278
                                                        (letrec ((x-cnd8280
                                                                  (null? l)))
                                                          (if x-cnd8280
                                                            #f
                                                            (letrec ((x-cnd8281
                                                                      (letrec ((x8282
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8282
                                                                         k))))
                                                              (if x-cnd8281
                                                                (car l)
                                                                (letrec ((x8283
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8283))))))))
                                                g8278)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8284 (if x #f #t)))
                                                g8284)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8285 (append l1 l2)))
                                                g8285)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8286
                                                        (letrec ((x8288
                                                                  (list? l)))
                                                          (assert x8288)))
                                                       (g8287
                                                        (letrec ((x-cnd8289
                                                                  (null? l)))
                                                          (if x-cnd8289
                                                            #f
                                                            (letrec ((x-cnd8290
                                                                      (letrec ((x8291
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8291
                                                                         e))))
                                                              (if x-cnd8290
                                                                l
                                                                (letrec ((x8292
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8292))))))))
                                                g8287)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8293
                                                        (letrec ((x8294
                                                                  (letrec ((x8295
                                                                            (letrec ((x8296
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8296))))
                                                                    (cdr
                                                                     x8295))))
                                                          (car x8294))))
                                                g8293)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8297
                                                        (letrec ((x8299
                                                                  (list? l)))
                                                          (assert x8299)))
                                                       (g8298
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8300
                                                                              (letrec ((x-cnd8301
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8301
                                                                                  0
                                                                                  (letrec ((x8302
                                                                                            (letrec ((x8303
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8303))))
                                                                                    (+
                                                                                     1
                                                                                     x8302))))))
                                                                      g8300))))
                                                          (letrec ((g8304
                                                                    (rec l)))
                                                            g8304))))
                                                g8298)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8305
                                                        (letrec ((x8308
                                                                  (char? c1)))
                                                          (assert x8308)))
                                                       (g8306
                                                        (letrec ((x8309
                                                                  (char? c2)))
                                                          (assert x8309)))
                                                       (g8307
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8310
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8310))))
                                                g8307)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8311
                                                        (letrec ((x8312
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8312))))
                                                g8311)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8313
                                                        (letrec ((x8314
                                                                  (letrec ((x8315
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8315))))
                                                          (cdr x8314))))
                                                g8313)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8316
                                                        (letrec ((x8318
                                                                  (list? l)))
                                                          (assert x8318)))
                                                       (g8317
                                                        (letrec ((x-cnd8319
                                                                  (null? l)))
                                                          (if x-cnd8319
                                                            #f
                                                            (letrec ((x-cnd8320
                                                                      (letrec ((x8321
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8321
                                                                         k))))
                                                              (if x-cnd8320
                                                                (car l)
                                                                (letrec ((x8322
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8322))))))))
                                                g8317)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8323
                                                        (letrec ((x8324
                                                                  (car x)))
                                                          (car x8324))))
                                                g8323)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8325
                                                        (letrec ((x8328
                                                                  (char? c1)))
                                                          (assert x8328)))
                                                       (g8326
                                                        (letrec ((x8329
                                                                  (char? c2)))
                                                          (assert x8329)))
                                                       (g8327
                                                        (letrec ((x8330
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8330))))
                                                g8327)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8331
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8332
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8332))))
                                                g8331)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8333
                                                        (letrec ((x8336
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8336)))
                                                       (g8334
                                                        (letrec ((x8337
                                                                  (list? l)))
                                                          (assert x8337)))
                                                       (g8335
                                                        (letrec ((x-cnd8338
                                                                  (null? l)))
                                                          (if x-cnd8338
                                                            #t
                                                            (letrec ((x-cnd8339
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8339
                                                                (letrec ((g8340
                                                                          (letrec ((x8342
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8342)))
                                                                         (g8341
                                                                          (letrec ((x8343
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8343))))
                                                                  g8341)
                                                                '()))))))
                                                g8335)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8344
                                                        (letrec ((x8346
                                                                  (number? x)))
                                                          (assert x8346)))
                                                       (g8345
                                                        (letrec ((x-cnd8347
                                                                  (< x 0)))
                                                          (if x-cnd8347
                                                            (- 0 x)
                                                            x))))
                                                g8345)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8348
                                                        (letrec ((x8351
                                                                  (char? c1)))
                                                          (assert x8351)))
                                                       (g8349
                                                        (letrec ((x8352
                                                                  (char? c2)))
                                                          (assert x8352)))
                                                       (g8350
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8353
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8353))))
                                                g8350)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8354
                                                        (letrec ((x8355
                                                                  (letrec ((x8356
                                                                            (letrec ((x8357
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8357))))
                                                                    (cdr
                                                                     x8356))))
                                                          (car x8355))))
                                                g8354)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8358 #f)) g8358)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8359
                                                        (letrec ((x8361
                                                                  (letrec ((x8362
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8362)))
                                                                 (x8360
                                                                  (gcd m n)))
                                                          (/ x8361 x8360))))
                                                g8359)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8363
                                                        (letrec ((x8367
                                                                  (list? l)))
                                                          (assert x8367)))
                                                       (g8364
                                                        (letrec ((x8368
                                                                  (number?
                                                                   index)))
                                                          (assert x8368)))
                                                       (g8365
                                                        (letrec ((x8369
                                                                  (letrec ((x8370
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8370))))
                                                          (assert x8369)))
                                                       (g8366
                                                        (letrec ((x-cnd8371
                                                                  (= index 0)))
                                                          (if x-cnd8371
                                                            (car l)
                                                            (letrec ((x8373
                                                                      (cdr l))
                                                                     (x8372
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8373
                                                               x8372))))))
                                                g8366)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8374
                                                        (letrec ((x-cnd8375
                                                                  (= b 0)))
                                                          (if x-cnd8375
                                                            a
                                                            (letrec ((x8376
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8376))))))
                                                g8374)))
                                           (block
                                            (lambda (x7758 y7759 color7760)
                                              (letrec ((g8377
                                                        (letrec ((x8378
                                                                  (letrec ((x8379
                                                                            (letrec ((x8380
                                                                                      (orig-cons
                                                                                       color7760
                                                                                       '())))
                                                                              (orig-cons
                                                                               y7759
                                                                               x8380))))
                                                                    (orig-cons
                                                                     x7758
                                                                     x8379))))
                                                          (orig-cons
                                                           'block
                                                           x8378))))
                                                g8377)))
                                           (block?
                                            (lambda (block7757)
                                              (letrec ((g8381
                                                        (letrec ((x8382
                                                                  (car
                                                                   block7757)))
                                                          (eq? x8382 'block))))
                                                g8381)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g8383
                                                        (letrec ((x8384
                                                                  (orig-cdr
                                                                   block)))
                                                          (orig-car x8384))))
                                                g8383)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g8385
                                                        (letrec ((x8386
                                                                  (letrec ((x8387
                                                                            (orig-cdr
                                                                             block)))
                                                                    (orig-cdr
                                                                     x8387))))
                                                          (orig-car x8386))))
                                                g8385)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g8388
                                                        (letrec ((x8389
                                                                  (letrec ((x8390
                                                                            (letrec ((x8391
                                                                                      (orig-cdr
                                                                                       block)))
                                                                              (orig-cdr
                                                                               x8391))))
                                                                    (orig-cdr
                                                                     x8390))))
                                                          (orig-car x8389))))
                                                g8388)))
                                           (tetra
                                            (lambda (center7765 blocks7766)
                                              (letrec ((g8392
                                                        (letrec ((x8393
                                                                  (letrec ((x8394
                                                                            (orig-cons
                                                                             blocks7766
                                                                             '())))
                                                                    (orig-cons
                                                                     center7765
                                                                     x8394))))
                                                          (orig-cons
                                                           'tetra
                                                           x8393))))
                                                g8392)))
                                           (tetra?
                                            (lambda (tetra7764)
                                              (letrec ((g8395
                                                        (letrec ((x8396
                                                                  (car
                                                                   tetra7764)))
                                                          (eq? x8396 'tetra))))
                                                g8395)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g8397
                                                        (letrec ((x8398
                                                                  (orig-cdr
                                                                   tetra)))
                                                          (orig-car x8398))))
                                                g8397)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g8399
                                                        (letrec ((x8400
                                                                  (letrec ((x8401
                                                                            (orig-cdr
                                                                             tetra)))
                                                                    (orig-cdr
                                                                     x8401))))
                                                          (orig-car x8400))))
                                                g8399)))
                                           (world
                                            (lambda (tetra7770 blocks7771)
                                              (letrec ((g8402
                                                        (letrec ((x8403
                                                                  (letrec ((x8404
                                                                            (orig-cons
                                                                             blocks7771
                                                                             '())))
                                                                    (orig-cons
                                                                     tetra7770
                                                                     x8404))))
                                                          (orig-cons
                                                           'world
                                                           x8403))))
                                                g8402)))
                                           (world?
                                            (lambda (world7769)
                                              (letrec ((g8405
                                                        (letrec ((x8406
                                                                  (car
                                                                   world7769)))
                                                          (eq? x8406 'world))))
                                                g8405)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g8407
                                                        (letrec ((x8408
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8408))))
                                                g8407)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g8409
                                                        (letrec ((x8410
                                                                  (letrec ((x8411
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8411))))
                                                          (orig-car x8410))))
                                                g8409)))
                                           (posn
                                            (lambda (x7775 y7776)
                                              (letrec ((g8412
                                                        (letrec ((x8413
                                                                  (letrec ((x8414
                                                                            (orig-cons
                                                                             y7776
                                                                             '())))
                                                                    (orig-cons
                                                                     x7775
                                                                     x8414))))
                                                          (orig-cons
                                                           'posn
                                                           x8413))))
                                                g8412)))
                                           (posn?
                                            (lambda (posn7774)
                                              (letrec ((g8415
                                                        (letrec ((x8416
                                                                  (car
                                                                   posn7774)))
                                                          (eq? x8416 'posn))))
                                                g8415)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8417
                                                        (letrec ((x8418
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8418))))
                                                g8417)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8419
                                                        (letrec ((x8420
                                                                  (letrec ((x8421
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8421))))
                                                          (orig-car x8420))))
                                                g8419)))
                                           (COLOR/C symbol?/c)
                                           (POSN/C
                                            (lambda (j7406 k7407 v7405)
                                              (letrec ((g8422
                                                        (letrec ((checked7408
                                                                  (letrec ((x8423
                                                                            (letrec ((x8424
                                                                                      (orig-cdr
                                                                                       v7405)))
                                                                              (orig-car
                                                                               x8424))))
                                                                    (real?/c
                                                                     j7406
                                                                     k7407
                                                                     x8423))))
                                                          (letrec ((g8425
                                                                    (letrec ((checked7409
                                                                              (letrec ((x8426
                                                                                        (letrec ((x8427
                                                                                                  (letrec ((x8428
                                                                                                            (orig-cdr
                                                                                                             v7405)))
                                                                                                    (orig-cdr
                                                                                                     x8428))))
                                                                                          (orig-car
                                                                                           x8427))))
                                                                                (real?/c
                                                                                 j7406
                                                                                 k7407
                                                                                 x8426))))
                                                                      (letrec ((g8429
                                                                                (letrec ((x8430
                                                                                          (letrec ((x8431
                                                                                                    (cons
                                                                                                     checked7409
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7408
                                                                                             x8431))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8430))))
                                                                        g8429))))
                                                            g8425))))
                                                g8422)))
                                           (BLOCK/C
                                            (lambda (j7412 k7413 v7411)
                                              (letrec ((g8432
                                                        (letrec ((checked7414
                                                                  (letrec ((x8433
                                                                            (letrec ((x8434
                                                                                      (orig-cdr
                                                                                       v7411)))
                                                                              (orig-car
                                                                               x8434))))
                                                                    (real?/c
                                                                     j7412
                                                                     k7413
                                                                     x8433))))
                                                          (letrec ((g8435
                                                                    (letrec ((checked7415
                                                                              (letrec ((x8436
                                                                                        (letrec ((x8437
                                                                                                  (letrec ((x8438
                                                                                                            (orig-cdr
                                                                                                             v7411)))
                                                                                                    (orig-cdr
                                                                                                     x8438))))
                                                                                          (orig-car
                                                                                           x8437))))
                                                                                (real?/c
                                                                                 j7412
                                                                                 k7413
                                                                                 x8436))))
                                                                      (letrec ((g8439
                                                                                (letrec ((checked7416
                                                                                          (letrec ((x8440
                                                                                                    (letrec ((x8441
                                                                                                              (letrec ((x8442
                                                                                                                        (letrec ((x8443
                                                                                                                                  (orig-cdr
                                                                                                                                   v7411)))
                                                                                                                          (orig-cdr
                                                                                                                           x8443))))
                                                                                                                (orig-cdr
                                                                                                                 x8442))))
                                                                                                      (orig-car
                                                                                                       x8441))))
                                                                                            (COLOR/C
                                                                                             j7412
                                                                                             k7413
                                                                                             x8440))))
                                                                                  (letrec ((g8444
                                                                                            (letrec ((x8445
                                                                                                      (letrec ((x8446
                                                                                                                (letrec ((x8447
                                                                                                                          (cons
                                                                                                                           checked7416
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked7415
                                                                                                                   x8447))))
                                                                                                        (cons
                                                                                                         checked7414
                                                                                                         x8446))))
                                                                                              (cons
                                                                                               block
                                                                                               x8445))))
                                                                                    g8444))))
                                                                        g8439))))
                                                            g8435))))
                                                g8432)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j7419 k7420 v7418)
                                              (letrec ((g8448
                                                        (letrec ((checked7421
                                                                  (letrec ((x8449
                                                                            (letrec ((x8450
                                                                                      (orig-cdr
                                                                                       v7418)))
                                                                              (orig-car
                                                                               x8450))))
                                                                    (POSN/C
                                                                     j7419
                                                                     k7420
                                                                     x8449))))
                                                          (letrec ((g8451
                                                                    (letrec ((checked7422
                                                                              (letrec ((x8452
                                                                                        (letrec ((x8453
                                                                                                  (letrec ((x8454
                                                                                                            (orig-cdr
                                                                                                             v7418)))
                                                                                                    (orig-cdr
                                                                                                     x8454))))
                                                                                          (orig-car
                                                                                           x8453))))
                                                                                (BSET/C
                                                                                 j7419
                                                                                 k7420
                                                                                 x8452))))
                                                                      (letrec ((g8455
                                                                                (letrec ((x8456
                                                                                          (letrec ((x8457
                                                                                                    (cons
                                                                                                     checked7422
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7421
                                                                                             x8457))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x8456))))
                                                                        g8455))))
                                                            g8451))))
                                                g8448)))
                                           (WORLD/C
                                            (lambda (j7425 k7426 v7424)
                                              (letrec ((g8458
                                                        (letrec ((checked7427
                                                                  (letrec ((x8459
                                                                            (letrec ((x8460
                                                                                      (orig-cdr
                                                                                       v7424)))
                                                                              (orig-car
                                                                               x8460))))
                                                                    (TETRA/C
                                                                     j7425
                                                                     k7426
                                                                     x8459))))
                                                          (letrec ((g8461
                                                                    (letrec ((checked7428
                                                                              (letrec ((x8462
                                                                                        (letrec ((x8463
                                                                                                  (letrec ((x8464
                                                                                                            (orig-cdr
                                                                                                             v7424)))
                                                                                                    (orig-cdr
                                                                                                     x8464))))
                                                                                          (orig-car
                                                                                           x8463))))
                                                                                (BSET/C
                                                                                 j7425
                                                                                 k7426
                                                                                 x8462))))
                                                                      (letrec ((g8465
                                                                                (letrec ((x8466
                                                                                          (letrec ((x8467
                                                                                                    (cons
                                                                                                     checked7428
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7427
                                                                                             x8467))))
                                                                                  (cons
                                                                                   world
                                                                                   x8466))))
                                                                        g8465))))
                                                            g8461))))
                                                g8458)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8468
                                                        (letrec ((x-cnd8469
                                                                  (letrec ((x8471
                                                                            (posn-x
                                                                             p1))
                                                                           (x8470
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8471
                                                                     x8470))))
                                                          (if x-cnd8469
                                                            (letrec ((x8473
                                                                      (posn-y
                                                                       p1))
                                                                     (x8472
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8473 x8472))
                                                            #f))))
                                                g8468)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g8474
                                                        (letrec ((x-cnd8475
                                                                  (letrec ((x8477
                                                                            (block-x
                                                                             b1))
                                                                           (x8476
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x8477
                                                                     x8476))))
                                                          (if x-cnd8475
                                                            (letrec ((x8479
                                                                      (block-y
                                                                       b1))
                                                                     (x8478
                                                                      (block-y
                                                                       b2)))
                                                              (= x8479 x8478))
                                                            #f))))
                                                g8474)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g8480
                                                        (letrec ((x8484
                                                                  (letrec ((x8485
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x8485)))
                                                                 (x8482
                                                                  (letrec ((x8483
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x8483)))
                                                                 (x8481
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8484
                                                           x8482
                                                           x8481))))
                                                g8480)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g8486
                                                        (letrec ((x8493
                                                                  (letrec ((x8497
                                                                            (posn-x
                                                                             c))
                                                                           (x8494
                                                                            (letrec ((x8496
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x8495
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x8496
                                                                               x8495))))
                                                                    (+
                                                                     x8497
                                                                     x8494)))
                                                                 (x8488
                                                                  (letrec ((x8492
                                                                            (posn-y
                                                                             c))
                                                                           (x8489
                                                                            (letrec ((x8491
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8490
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x8491
                                                                               x8490))))
                                                                    (+
                                                                     x8492
                                                                     x8489)))
                                                                 (x8487
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8493
                                                           x8488
                                                           x8487))))
                                                g8486)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g8498
                                                        (letrec ((x8499
                                                                  (letrec ((x8500
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x8500))))
                                                          (block-rotate-ccw
                                                           c
                                                           x8499))))
                                                g8498)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g8501
                                                        (letrec ((x-cnd8502
                                                                  (null? xs)))
                                                          (if x-cnd8502
                                                            (letrec ((g8503
                                                                      #f))
                                                              g8503)
                                                            (letrec ((g8504
                                                                      (letrec ((x8507
                                                                                (letrec ((x8508
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8508)))
                                                                               (x8505
                                                                                (letrec ((x8506
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (ormap
                                                                                   p?
                                                                                   x8506))))
                                                                        (or x8507
                                                                            x8505))))
                                                              g8504)))))
                                                g8501)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g8509
                                                        (letrec ((x-cnd8510
                                                                  (null? xs)))
                                                          (if x-cnd8510
                                                            (letrec ((g8511
                                                                      #t))
                                                              g8511)
                                                            (letrec ((g8512
                                                                      (letrec ((x8515
                                                                                (letrec ((x8516
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8516)))
                                                                               (x8513
                                                                                (letrec ((x8514
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (andmap
                                                                                   p?
                                                                                   x8514))))
                                                                        (and x8515
                                                                             x8513))))
                                                              g8512)))))
                                                g8509)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g8517
                                                        (letrec ((x-cnd8518
                                                                  (null? xs)))
                                                          (if x-cnd8518
                                                            (letrec ((g8519
                                                                      null))
                                                              g8519)
                                                            (letrec ((x-cnd8520
                                                                      (letrec ((x8521
                                                                                (car
                                                                                 xs)))
                                                                        (p?
                                                                         x8521))))
                                                              (if x-cnd8520
                                                                (letrec ((g8522
                                                                          (letrec ((x8525
                                                                                    (car
                                                                                     xs))
                                                                                   (x8523
                                                                                    (letrec ((x8524
                                                                                              (cdr
                                                                                               xs)))
                                                                                      (filter
                                                                                       p?
                                                                                       x8524))))
                                                                            (cons
                                                                             x8525
                                                                             x8523))))
                                                                  g8522)
                                                                (letrec ((g8526
                                                                          (letrec ((x8527
                                                                                    (cdr
                                                                                     xs)))
                                                                            (filter
                                                                             p?
                                                                             x8527))))
                                                                  g8526)))))))
                                                g8517)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g8528
                                                        (letrec ((x-cnd8529
                                                                  (null? l)))
                                                          (if x-cnd8529
                                                            (letrec ((g8530 r))
                                                              g8530)
                                                            (letrec ((g8531
                                                                      (letrec ((x8534
                                                                                (car
                                                                                 l))
                                                                               (x8532
                                                                                (letrec ((x8533
                                                                                          (cdr
                                                                                           l)))
                                                                                  (append
                                                                                   x8533
                                                                                   r))))
                                                                        (cons
                                                                         x8534
                                                                         x8532))))
                                                              g8531)))))
                                                g8528)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g8535
                                                        (letrec ((x-cnd8536
                                                                  (null? xs)))
                                                          (if x-cnd8536
                                                            (letrec ((g8537 a))
                                                              g8537)
                                                            (letrec ((g8538
                                                                      (letrec ((x8541
                                                                                (car
                                                                                 xs))
                                                                               (x8539
                                                                                (letrec ((x8540
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (foldr
                                                                                   f
                                                                                   a
                                                                                   x8540))))
                                                                        (f
                                                                         x8541
                                                                         x8539))))
                                                              g8538)))))
                                                g8535)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g8542
                                                        (ormap
                                                         (lambda (c)
                                                           (letrec ((g8543
                                                                     (block=?
                                                                      b
                                                                      c)))
                                                             g8543))
                                                         bs)))
                                                g8542)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8544
                                                        (andmap
                                                         (lambda (b)
                                                           (letrec ((g8545
                                                                     (blocks-contains?
                                                                      bs2
                                                                      b)))
                                                             g8545))
                                                         bs1)))
                                                g8544)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8546
                                                        (letrec ((x-cnd8547
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd8547
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g8546)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g8548
                                                        (filter
                                                         (lambda (b)
                                                           (letrec ((g8549
                                                                     (blocks-contains?
                                                                      bs2
                                                                      b)))
                                                             g8549))
                                                         bs1)))
                                                g8548)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g8550 (length bs)))
                                                g8550)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g8551
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8552
                                                                     (block-move
                                                                      dx
                                                                      dy
                                                                      b)))
                                                             g8552))
                                                         bs)))
                                                g8551)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g8553
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8554
                                                                     (block-rotate-ccw
                                                                      c
                                                                      b)))
                                                             g8554))
                                                         bs)))
                                                g8553)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g8555
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8556
                                                                     (block-rotate-cw
                                                                      c
                                                                      b)))
                                                             g8556))
                                                         bs)))
                                                g8555)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g8557
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8558
                                                                     (letrec ((x8560
                                                                               (block-x
                                                                                b))
                                                                              (x8559
                                                                               (block-y
                                                                                b)))
                                                                       (block
                                                                        x8560
                                                                        x8559
                                                                        c))))
                                                             g8558))
                                                         bs)))
                                                g8557)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g8561
                                                        (filter
                                                         (lambda (b)
                                                           (letrec ((g8562
                                                                     (letrec ((x8563
                                                                               (block-y
                                                                                b)))
                                                                       (=
                                                                        i
                                                                        x8563))))
                                                             g8562))
                                                         bs)))
                                                g8561)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g8564
                                                        (letrec ((x8565
                                                                  (letrec ((x8566
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x8566))))
                                                          (=
                                                           board-width
                                                           x8565))))
                                                g8564)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g8567
                                                        (ormap
                                                         (lambda (b)
                                                           (letrec ((g8568
                                                                     (letrec ((x8569
                                                                               (block-y
                                                                                b)))
                                                                       (<=
                                                                        x8569
                                                                        0))))
                                                             g8568))
                                                         bs)))
                                                g8567)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g8570
                                                        (foldr
                                                         (lambda (b bs)
                                                           (letrec ((g8571
                                                                     (letrec ((x-cnd8572
                                                                               (blocks-contains?
                                                                                bs
                                                                                b)))
                                                                       (if x-cnd8572
                                                                         (letrec ((g8573
                                                                                   bs))
                                                                           g8573)
                                                                         (letrec ((g8574
                                                                                   (cons
                                                                                    b
                                                                                    bs)))
                                                                           g8574)))))
                                                             g8571))
                                                         bs2
                                                         bs1)))
                                                g8570)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g8575
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8576
                                                                     (letrec ((x8577
                                                                               (block-y
                                                                                b)))
                                                                       (max
                                                                        x8577
                                                                        n))))
                                                             g8576))
                                                         0
                                                         bs)))
                                                g8575)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g8578
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8579
                                                                     (letrec ((x8580
                                                                               (block-x
                                                                                b)))
                                                                       (min
                                                                        x8580
                                                                        n))))
                                                             g8579))
                                                         board-width
                                                         bs)))
                                                g8578)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g8581
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8582
                                                                     (letrec ((x8583
                                                                               (block-x
                                                                                b)))
                                                                       (max
                                                                        x8583
                                                                        n))))
                                                             g8582))
                                                         0
                                                         bs)))
                                                g8581)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g8584
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g8584)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g8585
                                                        (letrec ((x-cnd8586
                                                                  (< i 0)))
                                                          (if x-cnd8586
                                                            (letrec ((g8587
                                                                      empty))
                                                              g8587)
                                                            (letrec ((x-cnd8588
                                                                      (full-row?
                                                                       bs
                                                                       i)))
                                                              (if x-cnd8588
                                                                (letrec ((g8589
                                                                          (letrec ((x8591
                                                                                    (sub1
                                                                                     i))
                                                                                   (x8590
                                                                                    (add1
                                                                                     offset)))
                                                                            (elim-row
                                                                             bs
                                                                             x8591
                                                                             x8590))))
                                                                  g8589)
                                                                (letrec ((g8592
                                                                          (letrec ((x8595
                                                                                    (letrec ((x8596
                                                                                              (sub1
                                                                                               i)))
                                                                                      (elim-row
                                                                                       bs
                                                                                       x8596
                                                                                       offset)))
                                                                                   (x8593
                                                                                    (letrec ((x8594
                                                                                              (blocks-row
                                                                                               bs
                                                                                               i)))
                                                                                      (blocks-move
                                                                                       0
                                                                                       offset
                                                                                       x8594))))
                                                                            (blocks-union
                                                                             x8595
                                                                             x8593))))
                                                                  g8592)))))))
                                                g8585)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g8597
                                                        (letrec ((x8600
                                                                  (letrec ((x8604
                                                                            (letrec ((x8605
                                                                                      (letrec ((x8606
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x8606))))
                                                                              (+
                                                                               dx
                                                                               x8605)))
                                                                           (x8601
                                                                            (letrec ((x8602
                                                                                      (letrec ((x8603
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x8603))))
                                                                              (+
                                                                               dy
                                                                               x8602))))
                                                                    (posn
                                                                     x8604
                                                                     x8601)))
                                                                 (x8598
                                                                  (letrec ((x8599
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x8599))))
                                                          (tetra
                                                           x8600
                                                           x8598))))
                                                g8597)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g8607
                                                        (letrec ((x8611
                                                                  (tetra-center
                                                                   t))
                                                                 (x8608
                                                                  (letrec ((x8610
                                                                            (tetra-center
                                                                             t))
                                                                           (x8609
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8610
                                                                     x8609))))
                                                          (tetra
                                                           x8611
                                                           x8608))))
                                                g8607)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8612
                                                        (letrec ((x8616
                                                                  (tetra-center
                                                                   t))
                                                                 (x8613
                                                                  (letrec ((x8615
                                                                            (tetra-center
                                                                             t))
                                                                           (x8614
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8615
                                                                     x8614))))
                                                          (tetra
                                                           x8616
                                                           x8613))))
                                                g8612)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8617
                                                        (letrec ((x8618
                                                                  (letrec ((x8619
                                                                            (letrec ((x8620
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8620
                                                                               bs))))
                                                                    (false?
                                                                     x8619))))
                                                          (false? x8618))))
                                                g8617)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8621
                                                        (letrec ((x8624
                                                                  (tetra-center
                                                                   t))
                                                                 (x8622
                                                                  (letrec ((x8623
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8623
                                                                     c))))
                                                          (tetra
                                                           x8624
                                                           x8622))))
                                                g8621)))
                                           (build-tetra-blocks
                                            (lambda (color
                                                     xc
                                                     yc
                                                     x1
                                                     y1
                                                     x2
                                                     y2
                                                     x3
                                                     y3
                                                     x4
                                                     y4)
                                              (letrec ((g8625
                                                        (letrec ((x8626
                                                                  (letrec ((x8632
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8627
                                                                            (letrec ((x8631
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8630
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8629
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8628
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8631
                                                                               x8630
                                                                               x8629
                                                                               x8628))))
                                                                    (tetra
                                                                     x8632
                                                                     x8627))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8626))))
                                                g8625)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8633
                                                        (letrec ((x8639
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8634
                                                                  (letrec ((x8635
                                                                            (letrec ((x8637
                                                                                      (letrec ((x8638
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8638)))
                                                                                     (x8636
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8637
                                                                               x8636))))
                                                                    (eliminate-full-rows
                                                                     x8635))))
                                                          (world
                                                           x8639
                                                           x8634))))
                                                g8633)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8640
                                                        (letrec ((x-cnd8641
                                                                  (landed? w)))
                                                          (if x-cnd8641
                                                            (letrec ((g8642 w))
                                                              g8642)
                                                            (letrec ((g8643
                                                                      (letrec ((x8644
                                                                                (letrec ((x8646
                                                                                          (letrec ((x8647
                                                                                                    (world-tetra
                                                                                                     w)))
                                                                                            (tetra-move
                                                                                             0
                                                                                             1
                                                                                             x8647)))
                                                                                         (x8645
                                                                                          (world-blocks
                                                                                           w)))
                                                                                  (world
                                                                                   x8646
                                                                                   x8645))))
                                                                        (world-jump-down
                                                                         x8644))))
                                                              g8643)))))
                                                g8640)))
                                           (landed-on-blocks?
                                            (lambda (w)
                                              (letrec ((g8648
                                                        (letrec ((x8650
                                                                  (letrec ((x8651
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     0
                                                                     1
                                                                     x8651)))
                                                                 (x8649
                                                                  (world-blocks
                                                                   w)))
                                                          (tetra-overlaps-blocks?
                                                           x8650
                                                           x8649))))
                                                g8648)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8652
                                                        (letrec ((x8654
                                                                  (letrec ((x8655
                                                                            (letrec ((x8656
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8656))))
                                                                    (blocks-max-y
                                                                     x8655)))
                                                                 (x8653
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8654 x8653))))
                                                g8652)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8657
                                                        (letrec ((val7263
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8658
                                                                    (if val7263
                                                                      val7263
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8658))))
                                                g8657)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8659
                                                        (letrec ((x-cnd8660
                                                                  (landed? w)))
                                                          (if x-cnd8660
                                                            (letrec ((g8661
                                                                      (touchdown
                                                                       w
                                                                       tetras)))
                                                              g8661)
                                                            (letrec ((g8662
                                                                      (letrec ((x8664
                                                                                (letrec ((x8665
                                                                                          (world-tetra
                                                                                           w)))
                                                                                  (tetra-move
                                                                                   0
                                                                                   1
                                                                                   x8665)))
                                                                               (x8663
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         x8664
                                                                         x8663))))
                                                              g8662)))))
                                                g8659)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8666
                                                        (letrec ((x-cnd8667
                                                                  (letrec ((val7264
                                                                            (letrec ((x8668
                                                                                      (letrec ((x8669
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-min-x
                                                                                         x8669))))
                                                                              (<
                                                                               x8668
                                                                               0))))
                                                                    (letrec ((g8670
                                                                              (if val7264
                                                                                val7264
                                                                                (letrec ((val7265
                                                                                          (letrec ((x8671
                                                                                                    (letrec ((x8672
                                                                                                              (tetra-blocks
                                                                                                               new-tetra)))
                                                                                                      (blocks-max-x
                                                                                                       x8672))))
                                                                                            (>=
                                                                                             x8671
                                                                                             board-width))))
                                                                                  (letrec ((g8673
                                                                                            (if val7265
                                                                                              val7265
                                                                                              (letrec ((x8674
                                                                                                        (world-blocks
                                                                                                         w)))
                                                                                                (tetra-overlaps-blocks?
                                                                                                 new-tetra
                                                                                                 x8674)))))
                                                                                    g8673)))))
                                                                      g8670))))
                                                          (if x-cnd8667
                                                            (letrec ((g8675 w))
                                                              g8675)
                                                            (letrec ((g8676
                                                                      (letrec ((x8677
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         new-tetra
                                                                         x8677))))
                                                              g8676)))))
                                                g8666)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8678
                                                        (letrec ((x8679
                                                                  (letrec ((x8680
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8680))))
                                                          (try-new-tetra
                                                           w
                                                           x8679))))
                                                g8678)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8681
                                                        (letrec ((x8682
                                                                  (letrec ((x8683
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8683))))
                                                          (try-new-tetra
                                                           w
                                                           x8682))))
                                                g8681)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8684
                                                        (letrec ((x8685
                                                                  (letrec ((x8686
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8686))))
                                                          (try-new-tetra
                                                           w
                                                           x8685))))
                                                g8684)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8687
                                                        (letrec ((x8688
                                                                  (letrec ((x8689
                                                                            (letrec ((x8690
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8690))))
                                                                    (tetra-change-color
                                                                     x8689
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8688))))
                                                g8687)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8691
                                                        (letrec ((x-cnd8692
                                                                  (equal?
                                                                   k
                                                                   "left")))
                                                          (if x-cnd8692
                                                            (letrec ((g8693
                                                                      (world-move
                                                                       neg-1
                                                                       0
                                                                       w)))
                                                              g8693)
                                                            (letrec ((x-cnd8694
                                                                      (equal?
                                                                       k
                                                                       "right")))
                                                              (if x-cnd8694
                                                                (letrec ((g8695
                                                                          (world-move
                                                                           1
                                                                           0
                                                                           w)))
                                                                  g8695)
                                                                (letrec ((x-cnd8696
                                                                          (equal?
                                                                           k
                                                                           "down")))
                                                                  (if x-cnd8696
                                                                    (letrec ((g8697
                                                                              (world-jump-down
                                                                               w)))
                                                                      g8697)
                                                                    (letrec ((x-cnd8698
                                                                              (equal?
                                                                               k
                                                                               "a")))
                                                                      (if x-cnd8698
                                                                        (letrec ((g8699
                                                                                  (world-rotate-ccw
                                                                                   w)))
                                                                          g8699)
                                                                        (letrec ((x-cnd8700
                                                                                  (equal?
                                                                                   k
                                                                                   "s")))
                                                                          (if x-cnd8700
                                                                            (letrec ((g8701
                                                                                      (world-rotate-cw
                                                                                       w)))
                                                                              g8701)
                                                                            (letrec ((g8702
                                                                                      w))
                                                                              g8702)))))))))))))
                                                g8691)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8703
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8703)))
                                           (image?
                                            (lambda (image7779)
                                              (letrec ((g8704
                                                        (letrec ((x8705
                                                                  (car
                                                                   image7779)))
                                                          (eq? x8705 'image))))
                                                g8704)))
                                           (image/c
                                            (lambda (j7431 k7432 v7430)
                                              (letrec ((g8706
                                                        (cons image '())))
                                                g8706)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8707 (image)))
                                                g8707)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8708 (image)))
                                                g8708)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8709 (image)))
                                                g8709)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8710 (image)))
                                                g8710)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8711 (image)))
                                                g8711)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8712
                                                        (letrec ((x-cnd8713
                                                                  (letrec ((x8714
                                                                            (cdr
                                                                             xs)))
                                                                    (null?
                                                                     x8714))))
                                                          (if x-cnd8713
                                                            (letrec ((g8715
                                                                      (car
                                                                       xs)))
                                                              g8715)
                                                            (letrec ((g8716
                                                                      (letrec ((x8717
                                                                                (cdr
                                                                                 xs)))
                                                                        (list-pick-random
                                                                         x8717))))
                                                              g8716)))))
                                                g8712)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8718
                                                        (letrec ((x8722
                                                                  (letrec ((x8723
                                                                            (letrec ((x8727
                                                                                      (letrec ((x8728
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8728)))
                                                                                     (x8724
                                                                                      (letrec ((x8726
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8725
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8726
                                                                                         x8725))))
                                                                              (append
                                                                               x8727
                                                                               x8724))))
                                                                    (blocks->image
                                                                     x8723)))
                                                                 (x8719
                                                                  (letrec ((x8721
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8720
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8721
                                                                     x8720))))
                                                          (place-image
                                                           x8722
                                                           0
                                                           0
                                                           x8719))))
                                                g8718)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8729
                                                        (letrec ((x8730
                                                                  (letrec ((x8733
                                                                            (letrec ((x8734
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8734)))
                                                                           (x8731
                                                                            (letrec ((x8732
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8732))))
                                                                    (empty-scene
                                                                     x8733
                                                                     x8731))))
                                                          (foldr
                                                           (lambda (b img)
                                                             (letrec ((g8735
                                                                       (letrec ((x-cnd8736
                                                                                 (letrec ((x8737
                                                                                           (block-y
                                                                                            b)))
                                                                                   (<=
                                                                                    0
                                                                                    x8737))))
                                                                         (if x-cnd8736
                                                                           (letrec ((g8738
                                                                                     (place-block
                                                                                      b
                                                                                      img)))
                                                                             g8738)
                                                                           (letrec ((g8739
                                                                                     img))
                                                                             g8739)))))
                                                               g8735))
                                                           x8730
                                                           bs))))
                                                g8729)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8740
                                                        (letrec ((x8744
                                                                  (letrec ((x8747
                                                                            (add1
                                                                             block-size))
                                                                           (x8746
                                                                            (add1
                                                                             block-size))
                                                                           (x8745
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8747
                                                                     x8746
                                                                     'solid
                                                                     x8745)))
                                                                 (x8741
                                                                  (letrec ((x8743
                                                                            (add1
                                                                             block-size))
                                                                           (x8742
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8743
                                                                     x8742
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8744
                                                           x8741))))
                                                g8740)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8748
                                                        (letrec ((x8757
                                                                  (block->image
                                                                   b))
                                                                 (x8753
                                                                  (letrec ((x8755
                                                                            (letrec ((x8756
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8756
                                                                               block-size)))
                                                                           (x8754
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8755
                                                                     x8754)))
                                                                 (x8749
                                                                  (letrec ((x8751
                                                                            (letrec ((x8752
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8752
                                                                               block-size)))
                                                                           (x8750
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8751
                                                                     x8750))))
                                                          (place-image
                                                           x8757
                                                           x8753
                                                           x8749
                                                           scene))))
                                                g8748)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8758
                                                        (letrec ((x8759
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8759 null))))
                                                g8758))))
                                    (letrec ((g8760
                                              (parallel
                                               (parallel
                                                (letrec ((x8771
                                                          (letrec ((xj7434
                                                                    (loc
                                                                     'module))
                                                                   (xk7435
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8772
                                                                      ((lambda (j7438
                                                                                k7439
                                                                                f7440)
                                                                         (letrec ((g8773
                                                                                   (lambda (g7436
                                                                                            g7437)
                                                                                     (letrec ((g8774
                                                                                               (letrec ((x8775
                                                                                                         (letrec ((x8777
                                                                                                                   (POSN/C
                                                                                                                    j7438
                                                                                                                    k7439
                                                                                                                    g7436))
                                                                                                                  (x8776
                                                                                                                   (POSN/C
                                                                                                                    j7438
                                                                                                                    k7439
                                                                                                                    g7437)))
                                                                                                           (f7440
                                                                                                            x8777
                                                                                                            x8776))))
                                                                                                 (boolean?/c
                                                                                                  j7438
                                                                                                  k7439
                                                                                                  x8775))))
                                                                                       g8774))))
                                                                           g8773))
                                                                       xj7434
                                                                       xk7435
                                                                       posn=?)))
                                                              g8772)))
                                                         (x8766
                                                          (letrec ((x8767
                                                                    (letrec ((x8770
                                                                              (input))
                                                                             (x8768
                                                                              (letrec ((x8769
                                                                                        (input)))
                                                                                (cons
                                                                                 x8769
                                                                                 '()))))
                                                                      (cons
                                                                       x8770
                                                                       x8768))))
                                                            (cons
                                                             'posn
                                                             x8767)))
                                                         (x8761
                                                          (letrec ((x8762
                                                                    (letrec ((x8765
                                                                              (input))
                                                                             (x8763
                                                                              (letrec ((x8764
                                                                                        (input)))
                                                                                (cons
                                                                                 x8764
                                                                                 '()))))
                                                                      (cons
                                                                       x8765
                                                                       x8763))))
                                                            (cons
                                                             'posn
                                                             x8762))))
                                                  (x8771 x8766 x8761))
                                                (letrec ((xj7441 (loc 'module))
                                                         (xk7442
                                                          (loc 'importer)))
                                                  (letrec ((g8778
                                                            (any/c
                                                             xj7441
                                                             xk7442
                                                             COLOR/C)))
                                                    g8778))
                                                (letrec ((xj7443 (loc 'module))
                                                         (xk7444
                                                          (loc 'importer)))
                                                  (letrec ((g8779
                                                            (any/c
                                                             xj7443
                                                             xk7444
                                                             POSN/C)))
                                                    g8779))
                                                (letrec ((xj7445 (loc 'module))
                                                         (xk7446
                                                          (loc 'importer)))
                                                  (letrec ((g8780
                                                            (any/c
                                                             xj7445
                                                             xk7446
                                                             BLOCK/C)))
                                                    g8780))
                                                (letrec ((xj7447 (loc 'module))
                                                         (xk7448
                                                          (loc 'importer)))
                                                  (letrec ((g8781
                                                            (any/c
                                                             xj7447
                                                             xk7448
                                                             TETRA/C)))
                                                    g8781))
                                                (letrec ((xj7449 (loc 'module))
                                                         (xk7450
                                                          (loc 'importer)))
                                                  (letrec ((g8782
                                                            (any/c
                                                             xj7449
                                                             xk7450
                                                             WORLD/C)))
                                                    g8782))
                                                (letrec ((xj7451 (loc 'module))
                                                         (xk7452
                                                          (loc 'importer)))
                                                  (letrec ((g8783
                                                            (any/c
                                                             xj7451
                                                             xk7452
                                                             BSET/C)))
                                                    g8783))
                                                (letrec ((xj7453 (loc 'module))
                                                         (xk7454
                                                          (loc 'importer)))
                                                  (letrec ((g8784
                                                            (integer?/c
                                                             xj7453
                                                             xk7454
                                                             block-size)))
                                                    g8784))
                                                (letrec ((xj7455 (loc 'module))
                                                         (xk7456
                                                          (loc 'importer)))
                                                  (letrec ((g8785
                                                            (integer?/c
                                                             xj7455
                                                             xk7456
                                                             board-width)))
                                                    g8785))
                                                (letrec ((xj7457 (loc 'module))
                                                         (xk7458
                                                          (loc 'importer)))
                                                  (letrec ((g8786
                                                            (integer?/c
                                                             xj7457
                                                             xk7458
                                                             board-height)))
                                                    g8786))
                                                (letrec ((x8799
                                                          (letrec ((xj7459
                                                                    (loc
                                                                     'module))
                                                                   (xk7460
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8800
                                                                      ((lambda (j7463
                                                                                k7464
                                                                                f7465)
                                                                         (letrec ((g8801
                                                                                   (lambda (g7461
                                                                                            g7462)
                                                                                     (letrec ((g8802
                                                                                               (letrec ((x8803
                                                                                                         (letrec ((x8805
                                                                                                                   (POSN/C
                                                                                                                    j7463
                                                                                                                    k7464
                                                                                                                    g7461))
                                                                                                                  (x8804
                                                                                                                   (BLOCK/C
                                                                                                                    j7463
                                                                                                                    k7464
                                                                                                                    g7462)))
                                                                                                           (f7465
                                                                                                            x8805
                                                                                                            x8804))))
                                                                                                 (BLOCK/C
                                                                                                  j7463
                                                                                                  k7464
                                                                                                  x8803))))
                                                                                       g8802))))
                                                                           g8801))
                                                                       xj7459
                                                                       xk7460
                                                                       block-rotate-ccw)))
                                                              g8800)))
                                                         (x8794
                                                          (letrec ((x8795
                                                                    (letrec ((x8798
                                                                              (input))
                                                                             (x8796
                                                                              (letrec ((x8797
                                                                                        (input)))
                                                                                (cons
                                                                                 x8797
                                                                                 '()))))
                                                                      (cons
                                                                       x8798
                                                                       x8796))))
                                                            (cons
                                                             'posn
                                                             x8795)))
                                                         (x8787
                                                          (letrec ((x8788
                                                                    (letrec ((x8793
                                                                              (input))
                                                                             (x8789
                                                                              (letrec ((x8792
                                                                                        (input))
                                                                                       (x8790
                                                                                        (letrec ((x8791
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8791
                                                                                           '()))))
                                                                                (cons
                                                                                 x8792
                                                                                 x8790))))
                                                                      (cons
                                                                       x8793
                                                                       x8789))))
                                                            (cons
                                                             'block
                                                             x8788))))
                                                  (x8799 x8794 x8787))
                                                (letrec ((x8818
                                                          (letrec ((xj7466
                                                                    (loc
                                                                     'module))
                                                                   (xk7467
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8819
                                                                      ((lambda (j7470
                                                                                k7471
                                                                                f7472)
                                                                         (letrec ((g8820
                                                                                   (lambda (g7468
                                                                                            g7469)
                                                                                     (letrec ((g8821
                                                                                               (letrec ((x8822
                                                                                                         (letrec ((x8824
                                                                                                                   (POSN/C
                                                                                                                    j7470
                                                                                                                    k7471
                                                                                                                    g7468))
                                                                                                                  (x8823
                                                                                                                   (BLOCK/C
                                                                                                                    j7470
                                                                                                                    k7471
                                                                                                                    g7469)))
                                                                                                           (f7472
                                                                                                            x8824
                                                                                                            x8823))))
                                                                                                 (BLOCK/C
                                                                                                  j7470
                                                                                                  k7471
                                                                                                  x8822))))
                                                                                       g8821))))
                                                                           g8820))
                                                                       xj7466
                                                                       xk7467
                                                                       block-rotate-cw)))
                                                              g8819)))
                                                         (x8813
                                                          (letrec ((x8814
                                                                    (letrec ((x8817
                                                                              (input))
                                                                             (x8815
                                                                              (letrec ((x8816
                                                                                        (input)))
                                                                                (cons
                                                                                 x8816
                                                                                 '()))))
                                                                      (cons
                                                                       x8817
                                                                       x8815))))
                                                            (cons
                                                             'posn
                                                             x8814)))
                                                         (x8806
                                                          (letrec ((x8807
                                                                    (letrec ((x8812
                                                                              (input))
                                                                             (x8808
                                                                              (letrec ((x8811
                                                                                        (input))
                                                                                       (x8809
                                                                                        (letrec ((x8810
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8810
                                                                                           '()))))
                                                                                (cons
                                                                                 x8811
                                                                                 x8809))))
                                                                      (cons
                                                                       x8812
                                                                       x8808))))
                                                            (cons
                                                             'block
                                                             x8807))))
                                                  (x8818 x8813 x8806))
                                                (letrec ((x8839
                                                          (letrec ((xj7473
                                                                    (loc
                                                                     'module))
                                                                   (xk7474
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8840
                                                                      ((lambda (j7477
                                                                                k7478
                                                                                f7479)
                                                                         (letrec ((g8841
                                                                                   (lambda (g7475
                                                                                            g7476)
                                                                                     (letrec ((g8842
                                                                                               (letrec ((x8843
                                                                                                         (letrec ((x8845
                                                                                                                   (BLOCK/C
                                                                                                                    j7477
                                                                                                                    k7478
                                                                                                                    g7475))
                                                                                                                  (x8844
                                                                                                                   (BLOCK/C
                                                                                                                    j7477
                                                                                                                    k7478
                                                                                                                    g7476)))
                                                                                                           (f7479
                                                                                                            x8845
                                                                                                            x8844))))
                                                                                                 (boolean?/c
                                                                                                  j7477
                                                                                                  k7478
                                                                                                  x8843))))
                                                                                       g8842))))
                                                                           g8841))
                                                                       xj7473
                                                                       xk7474
                                                                       block=?)))
                                                              g8840)))
                                                         (x8832
                                                          (letrec ((x8833
                                                                    (letrec ((x8838
                                                                              (input))
                                                                             (x8834
                                                                              (letrec ((x8837
                                                                                        (input))
                                                                                       (x8835
                                                                                        (letrec ((x8836
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8836
                                                                                           '()))))
                                                                                (cons
                                                                                 x8837
                                                                                 x8835))))
                                                                      (cons
                                                                       x8838
                                                                       x8834))))
                                                            (cons
                                                             'block
                                                             x8833)))
                                                         (x8825
                                                          (letrec ((x8826
                                                                    (letrec ((x8831
                                                                              (input))
                                                                             (x8827
                                                                              (letrec ((x8830
                                                                                        (input))
                                                                                       (x8828
                                                                                        (letrec ((x8829
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8829
                                                                                           '()))))
                                                                                (cons
                                                                                 x8830
                                                                                 x8828))))
                                                                      (cons
                                                                       x8831
                                                                       x8827))))
                                                            (cons
                                                             'block
                                                             x8826))))
                                                  (x8839 x8832 x8825))
                                                (letrec ((x8855
                                                          (letrec ((xj7480
                                                                    (loc
                                                                     'module))
                                                                   (xk7481
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8856
                                                                      ((lambda (j7485
                                                                                k7486
                                                                                f7487)
                                                                         (letrec ((g8857
                                                                                   (lambda (g7482
                                                                                            g7483
                                                                                            g7484)
                                                                                     (letrec ((g8858
                                                                                               (letrec ((x8859
                                                                                                         (letrec ((x8862
                                                                                                                   (real?/c
                                                                                                                    j7485
                                                                                                                    k7486
                                                                                                                    g7482))
                                                                                                                  (x8861
                                                                                                                   (real?/c
                                                                                                                    j7485
                                                                                                                    k7486
                                                                                                                    g7483))
                                                                                                                  (x8860
                                                                                                                   (BLOCK/C
                                                                                                                    j7485
                                                                                                                    k7486
                                                                                                                    g7484)))
                                                                                                           (f7487
                                                                                                            x8862
                                                                                                            x8861
                                                                                                            x8860))))
                                                                                                 (BLOCK/C
                                                                                                  j7485
                                                                                                  k7486
                                                                                                  x8859))))
                                                                                       g8858))))
                                                                           g8857))
                                                                       xj7480
                                                                       xk7481
                                                                       block-move)))
                                                              g8856)))
                                                         (x8854 (input))
                                                         (x8853 (input))
                                                         (x8846
                                                          (letrec ((x8847
                                                                    (letrec ((x8852
                                                                              (input))
                                                                             (x8848
                                                                              (letrec ((x8851
                                                                                        (input))
                                                                                       (x8849
                                                                                        (letrec ((x8850
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8850
                                                                                           '()))))
                                                                                (cons
                                                                                 x8851
                                                                                 x8849))))
                                                                      (cons
                                                                       x8852
                                                                       x8848))))
                                                            (cons
                                                             'block
                                                             x8847))))
                                                  (x8855 x8854 x8853 x8846))
                                                (letrec ((x8871
                                                          (letrec ((xj7488
                                                                    (loc
                                                                     'module))
                                                                   (xk7489
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8872
                                                                      ((lambda (j7492
                                                                                k7493
                                                                                f7494)
                                                                         (letrec ((g8873
                                                                                   (lambda (g7490
                                                                                            g7491)
                                                                                     (letrec ((g8874
                                                                                               (letrec ((x8875
                                                                                                         (letrec ((x8877
                                                                                                                   (BSET/C
                                                                                                                    j7492
                                                                                                                    k7493
                                                                                                                    g7490))
                                                                                                                  (x8876
                                                                                                                   (BLOCK/C
                                                                                                                    j7492
                                                                                                                    k7493
                                                                                                                    g7491)))
                                                                                                           (f7494
                                                                                                            x8877
                                                                                                            x8876))))
                                                                                                 (boolean?/c
                                                                                                  j7492
                                                                                                  k7493
                                                                                                  x8875))))
                                                                                       g8874))))
                                                                           g8873))
                                                                       xj7488
                                                                       xk7489
                                                                       blocks-contains?)))
                                                              g8872)))
                                                         (x8870 (input))
                                                         (x8863
                                                          (letrec ((x8864
                                                                    (letrec ((x8869
                                                                              (input))
                                                                             (x8865
                                                                              (letrec ((x8868
                                                                                        (input))
                                                                                       (x8866
                                                                                        (letrec ((x8867
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8867
                                                                                           '()))))
                                                                                (cons
                                                                                 x8868
                                                                                 x8866))))
                                                                      (cons
                                                                       x8869
                                                                       x8865))))
                                                            (cons
                                                             'block
                                                             x8864))))
                                                  (x8871 x8870 x8863))
                                                (letrec ((x8880
                                                          (letrec ((xj7495
                                                                    (loc
                                                                     'module))
                                                                   (xk7496
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8881
                                                                      ((lambda (j7499
                                                                                k7500
                                                                                f7501)
                                                                         (letrec ((g8882
                                                                                   (lambda (g7497
                                                                                            g7498)
                                                                                     (letrec ((g8883
                                                                                               (letrec ((x8884
                                                                                                         (letrec ((x8886
                                                                                                                   (BSET/C
                                                                                                                    j7499
                                                                                                                    k7500
                                                                                                                    g7497))
                                                                                                                  (x8885
                                                                                                                   (BSET/C
                                                                                                                    j7499
                                                                                                                    k7500
                                                                                                                    g7498)))
                                                                                                           (f7501
                                                                                                            x8886
                                                                                                            x8885))))
                                                                                                 (boolean?/c
                                                                                                  j7499
                                                                                                  k7500
                                                                                                  x8884))))
                                                                                       g8883))))
                                                                           g8882))
                                                                       xj7495
                                                                       xk7496
                                                                       blocks=?)))
                                                              g8881)))
                                                         (x8879 (input))
                                                         (x8878 (input)))
                                                  (x8880 x8879 x8878))
                                                (letrec ((x8889
                                                          (letrec ((xj7502
                                                                    (loc
                                                                     'module))
                                                                   (xk7503
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8890
                                                                      ((lambda (j7506
                                                                                k7507
                                                                                f7508)
                                                                         (letrec ((g8891
                                                                                   (lambda (g7504
                                                                                            g7505)
                                                                                     (letrec ((g8892
                                                                                               (letrec ((x8893
                                                                                                         (letrec ((x8895
                                                                                                                   (BSET/C
                                                                                                                    j7506
                                                                                                                    k7507
                                                                                                                    g7504))
                                                                                                                  (x8894
                                                                                                                   (BSET/C
                                                                                                                    j7506
                                                                                                                    k7507
                                                                                                                    g7505)))
                                                                                                           (f7508
                                                                                                            x8895
                                                                                                            x8894))))
                                                                                                 (boolean?/c
                                                                                                  j7506
                                                                                                  k7507
                                                                                                  x8893))))
                                                                                       g8892))))
                                                                           g8891))
                                                                       xj7502
                                                                       xk7503
                                                                       blocks-subset?)))
                                                              g8890)))
                                                         (x8888 (input))
                                                         (x8887 (input)))
                                                  (x8889 x8888 x8887))
                                                (letrec ((x8898
                                                          (letrec ((xj7509
                                                                    (loc
                                                                     'module))
                                                                   (xk7510
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8899
                                                                      ((lambda (j7513
                                                                                k7514
                                                                                f7515)
                                                                         (letrec ((g8900
                                                                                   (lambda (g7511
                                                                                            g7512)
                                                                                     (letrec ((g8901
                                                                                               (letrec ((x8902
                                                                                                         (letrec ((x8904
                                                                                                                   (BSET/C
                                                                                                                    j7513
                                                                                                                    k7514
                                                                                                                    g7511))
                                                                                                                  (x8903
                                                                                                                   (BSET/C
                                                                                                                    j7513
                                                                                                                    k7514
                                                                                                                    g7512)))
                                                                                                           (f7515
                                                                                                            x8904
                                                                                                            x8903))))
                                                                                                 (BSET/C
                                                                                                  j7513
                                                                                                  k7514
                                                                                                  x8902))))
                                                                                       g8901))))
                                                                           g8900))
                                                                       xj7509
                                                                       xk7510
                                                                       blocks-intersect)))
                                                              g8899)))
                                                         (x8897 (input))
                                                         (x8896 (input)))
                                                  (x8898 x8897 x8896))
                                                (letrec ((x8906
                                                          (letrec ((xj7516
                                                                    (loc
                                                                     'module))
                                                                   (xk7517
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8907
                                                                      ((lambda (j7519
                                                                                k7520
                                                                                f7521)
                                                                         (letrec ((g8908
                                                                                   (lambda (g7518)
                                                                                     (letrec ((g8909
                                                                                               (letrec ((x8910
                                                                                                         (letrec ((x8911
                                                                                                                   (BSET/C
                                                                                                                    j7519
                                                                                                                    k7520
                                                                                                                    g7518)))
                                                                                                           (f7521
                                                                                                            x8911))))
                                                                                                 (real?/c
                                                                                                  j7519
                                                                                                  k7520
                                                                                                  x8910))))
                                                                                       g8909))))
                                                                           g8908))
                                                                       xj7516
                                                                       xk7517
                                                                       blocks-count)))
                                                              g8907)))
                                                         (x8905 (input)))
                                                  (x8906 x8905))
                                                (letrec ((x8913
                                                          (letrec ((xj7522
                                                                    (loc
                                                                     'module))
                                                                   (xk7523
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8914
                                                                      ((lambda (j7525
                                                                                k7526
                                                                                f7527)
                                                                         (letrec ((g8915
                                                                                   (lambda (g7524)
                                                                                     (letrec ((g8916
                                                                                               (letrec ((x8917
                                                                                                         (letrec ((x8918
                                                                                                                   (BSET/C
                                                                                                                    j7525
                                                                                                                    k7526
                                                                                                                    g7524)))
                                                                                                           (f7527
                                                                                                            x8918))))
                                                                                                 (boolean?/c
                                                                                                  j7525
                                                                                                  k7526
                                                                                                  x8917))))
                                                                                       g8916))))
                                                                           g8915))
                                                                       xj7522
                                                                       xk7523
                                                                       blocks-overflow?)))
                                                              g8914)))
                                                         (x8912 (input)))
                                                  (x8913 x8912))
                                                (letrec ((x8922
                                                          (letrec ((xj7528
                                                                    (loc
                                                                     'module))
                                                                   (xk7529
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8923
                                                                      ((lambda (j7533
                                                                                k7534
                                                                                f7535)
                                                                         (letrec ((g8924
                                                                                   (lambda (g7530
                                                                                            g7531
                                                                                            g7532)
                                                                                     (letrec ((g8925
                                                                                               (letrec ((x8926
                                                                                                         (letrec ((x8929
                                                                                                                   (real?/c
                                                                                                                    j7533
                                                                                                                    k7534
                                                                                                                    g7530))
                                                                                                                  (x8928
                                                                                                                   (real?/c
                                                                                                                    j7533
                                                                                                                    k7534
                                                                                                                    g7531))
                                                                                                                  (x8927
                                                                                                                   (BSET/C
                                                                                                                    j7533
                                                                                                                    k7534
                                                                                                                    g7532)))
                                                                                                           (f7535
                                                                                                            x8929
                                                                                                            x8928
                                                                                                            x8927))))
                                                                                                 (BSET/C
                                                                                                  j7533
                                                                                                  k7534
                                                                                                  x8926))))
                                                                                       g8925))))
                                                                           g8924))
                                                                       xj7528
                                                                       xk7529
                                                                       blocks-move)))
                                                              g8923)))
                                                         (x8921 (input))
                                                         (x8920 (input))
                                                         (x8919 (input)))
                                                  (x8922 x8921 x8920 x8919))
                                                (letrec ((x8936
                                                          (letrec ((xj7536
                                                                    (loc
                                                                     'module))
                                                                   (xk7537
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8937
                                                                      ((lambda (j7540
                                                                                k7541
                                                                                f7542)
                                                                         (letrec ((g8938
                                                                                   (lambda (g7538
                                                                                            g7539)
                                                                                     (letrec ((g8939
                                                                                               (letrec ((x8940
                                                                                                         (letrec ((x8942
                                                                                                                   (POSN/C
                                                                                                                    j7540
                                                                                                                    k7541
                                                                                                                    g7538))
                                                                                                                  (x8941
                                                                                                                   (BSET/C
                                                                                                                    j7540
                                                                                                                    k7541
                                                                                                                    g7539)))
                                                                                                           (f7542
                                                                                                            x8942
                                                                                                            x8941))))
                                                                                                 (BSET/C
                                                                                                  j7540
                                                                                                  k7541
                                                                                                  x8940))))
                                                                                       g8939))))
                                                                           g8938))
                                                                       xj7536
                                                                       xk7537
                                                                       blocks-rotate-cw)))
                                                              g8937)))
                                                         (x8931
                                                          (letrec ((x8932
                                                                    (letrec ((x8935
                                                                              (input))
                                                                             (x8933
                                                                              (letrec ((x8934
                                                                                        (input)))
                                                                                (cons
                                                                                 x8934
                                                                                 '()))))
                                                                      (cons
                                                                       x8935
                                                                       x8933))))
                                                            (cons
                                                             'posn
                                                             x8932)))
                                                         (x8930 (input)))
                                                  (x8936 x8931 x8930))
                                                (letrec ((x8949
                                                          (letrec ((xj7543
                                                                    (loc
                                                                     'module))
                                                                   (xk7544
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8950
                                                                      ((lambda (j7547
                                                                                k7548
                                                                                f7549)
                                                                         (letrec ((g8951
                                                                                   (lambda (g7545
                                                                                            g7546)
                                                                                     (letrec ((g8952
                                                                                               (letrec ((x8953
                                                                                                         (letrec ((x8955
                                                                                                                   (POSN/C
                                                                                                                    j7547
                                                                                                                    k7548
                                                                                                                    g7545))
                                                                                                                  (x8954
                                                                                                                   (BSET/C
                                                                                                                    j7547
                                                                                                                    k7548
                                                                                                                    g7546)))
                                                                                                           (f7549
                                                                                                            x8955
                                                                                                            x8954))))
                                                                                                 (BSET/C
                                                                                                  j7547
                                                                                                  k7548
                                                                                                  x8953))))
                                                                                       g8952))))
                                                                           g8951))
                                                                       xj7543
                                                                       xk7544
                                                                       blocks-rotate-ccw)))
                                                              g8950)))
                                                         (x8944
                                                          (letrec ((x8945
                                                                    (letrec ((x8948
                                                                              (input))
                                                                             (x8946
                                                                              (letrec ((x8947
                                                                                        (input)))
                                                                                (cons
                                                                                 x8947
                                                                                 '()))))
                                                                      (cons
                                                                       x8948
                                                                       x8946))))
                                                            (cons
                                                             'posn
                                                             x8945)))
                                                         (x8943 (input)))
                                                  (x8949 x8944 x8943))
                                                (letrec ((x8958
                                                          (letrec ((xj7550
                                                                    (loc
                                                                     'module))
                                                                   (xk7551
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8959
                                                                      ((lambda (j7554
                                                                                k7555
                                                                                f7556)
                                                                         (letrec ((g8960
                                                                                   (lambda (g7552
                                                                                            g7553)
                                                                                     (letrec ((g8961
                                                                                               (letrec ((x8962
                                                                                                         (letrec ((x8964
                                                                                                                   (BSET/C
                                                                                                                    j7554
                                                                                                                    k7555
                                                                                                                    g7552))
                                                                                                                  (x8963
                                                                                                                   (COLOR/C
                                                                                                                    j7554
                                                                                                                    k7555
                                                                                                                    g7553)))
                                                                                                           (f7556
                                                                                                            x8964
                                                                                                            x8963))))
                                                                                                 (BSET/C
                                                                                                  j7554
                                                                                                  k7555
                                                                                                  x8962))))
                                                                                       g8961))))
                                                                           g8960))
                                                                       xj7550
                                                                       xk7551
                                                                       blocks-change-color)))
                                                              g8959)))
                                                         (x8957 (input))
                                                         (x8956 (input)))
                                                  (x8958 x8957 x8956))
                                                (letrec ((x8967
                                                          (letrec ((xj7557
                                                                    (loc
                                                                     'module))
                                                                   (xk7558
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8968
                                                                      ((lambda (j7561
                                                                                k7562
                                                                                f7563)
                                                                         (letrec ((g8969
                                                                                   (lambda (g7559
                                                                                            g7560)
                                                                                     (letrec ((g8970
                                                                                               (letrec ((x8971
                                                                                                         (letrec ((x8973
                                                                                                                   (BSET/C
                                                                                                                    j7561
                                                                                                                    k7562
                                                                                                                    g7559))
                                                                                                                  (x8972
                                                                                                                   (real?/c
                                                                                                                    j7561
                                                                                                                    k7562
                                                                                                                    g7560)))
                                                                                                           (f7563
                                                                                                            x8973
                                                                                                            x8972))))
                                                                                                 (BSET/C
                                                                                                  j7561
                                                                                                  k7562
                                                                                                  x8971))))
                                                                                       g8970))))
                                                                           g8969))
                                                                       xj7557
                                                                       xk7558
                                                                       blocks-row)))
                                                              g8968)))
                                                         (x8966 (input))
                                                         (x8965 (input)))
                                                  (x8967 x8966 x8965))
                                                (letrec ((x8976
                                                          (letrec ((xj7564
                                                                    (loc
                                                                     'module))
                                                                   (xk7565
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8977
                                                                      ((lambda (j7568
                                                                                k7569
                                                                                f7570)
                                                                         (letrec ((g8978
                                                                                   (lambda (g7566
                                                                                            g7567)
                                                                                     (letrec ((g8979
                                                                                               (letrec ((x8980
                                                                                                         (letrec ((x8982
                                                                                                                   (BSET/C
                                                                                                                    j7568
                                                                                                                    k7569
                                                                                                                    g7566))
                                                                                                                  (x8981
                                                                                                                   (real?/c
                                                                                                                    j7568
                                                                                                                    k7569
                                                                                                                    g7567)))
                                                                                                           (f7570
                                                                                                            x8982
                                                                                                            x8981))))
                                                                                                 (boolean?/c
                                                                                                  j7568
                                                                                                  k7569
                                                                                                  x8980))))
                                                                                       g8979))))
                                                                           g8978))
                                                                       xj7564
                                                                       xk7565
                                                                       full-row?)))
                                                              g8977)))
                                                         (x8975 (input))
                                                         (x8974 (input)))
                                                  (x8976 x8975 x8974))
                                                (letrec ((x8985
                                                          (letrec ((xj7571
                                                                    (loc
                                                                     'module))
                                                                   (xk7572
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8986
                                                                      ((lambda (j7575
                                                                                k7576
                                                                                f7577)
                                                                         (letrec ((g8987
                                                                                   (lambda (g7573
                                                                                            g7574)
                                                                                     (letrec ((g8988
                                                                                               (letrec ((x8989
                                                                                                         (letrec ((x8991
                                                                                                                   (BSET/C
                                                                                                                    j7575
                                                                                                                    k7576
                                                                                                                    g7573))
                                                                                                                  (x8990
                                                                                                                   (BSET/C
                                                                                                                    j7575
                                                                                                                    k7576
                                                                                                                    g7574)))
                                                                                                           (f7577
                                                                                                            x8991
                                                                                                            x8990))))
                                                                                                 (BSET/C
                                                                                                  j7575
                                                                                                  k7576
                                                                                                  x8989))))
                                                                                       g8988))))
                                                                           g8987))
                                                                       xj7571
                                                                       xk7572
                                                                       blocks-union)))
                                                              g8986)))
                                                         (x8984 (input))
                                                         (x8983 (input)))
                                                  (x8985 x8984 x8983))
                                                (letrec ((x8993
                                                          (letrec ((xj7578
                                                                    (loc
                                                                     'module))
                                                                   (xk7579
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8994
                                                                      ((lambda (j7581
                                                                                k7582
                                                                                f7583)
                                                                         (letrec ((g8995
                                                                                   (lambda (g7580)
                                                                                     (letrec ((g8996
                                                                                               (letrec ((x8997
                                                                                                         (letrec ((x8998
                                                                                                                   (BSET/C
                                                                                                                    j7581
                                                                                                                    k7582
                                                                                                                    g7580)))
                                                                                                           (f7583
                                                                                                            x8998))))
                                                                                                 (real?/c
                                                                                                  j7581
                                                                                                  k7582
                                                                                                  x8997))))
                                                                                       g8996))))
                                                                           g8995))
                                                                       xj7578
                                                                       xk7579
                                                                       blocks-max-x)))
                                                              g8994)))
                                                         (x8992 (input)))
                                                  (x8993 x8992))
                                                (letrec ((x9000
                                                          (letrec ((xj7584
                                                                    (loc
                                                                     'module))
                                                                   (xk7585
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9001
                                                                      ((lambda (j7587
                                                                                k7588
                                                                                f7589)
                                                                         (letrec ((g9002
                                                                                   (lambda (g7586)
                                                                                     (letrec ((g9003
                                                                                               (letrec ((x9004
                                                                                                         (letrec ((x9005
                                                                                                                   (BSET/C
                                                                                                                    j7587
                                                                                                                    k7588
                                                                                                                    g7586)))
                                                                                                           (f7589
                                                                                                            x9005))))
                                                                                                 (real?/c
                                                                                                  j7587
                                                                                                  k7588
                                                                                                  x9004))))
                                                                                       g9003))))
                                                                           g9002))
                                                                       xj7584
                                                                       xk7585
                                                                       blocks-min-x)))
                                                              g9001)))
                                                         (x8999 (input)))
                                                  (x9000 x8999))
                                                (letrec ((x9007
                                                          (letrec ((xj7590
                                                                    (loc
                                                                     'module))
                                                                   (xk7591
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9008
                                                                      ((lambda (j7593
                                                                                k7594
                                                                                f7595)
                                                                         (letrec ((g9009
                                                                                   (lambda (g7592)
                                                                                     (letrec ((g9010
                                                                                               (letrec ((x9011
                                                                                                         (letrec ((x9012
                                                                                                                   (BSET/C
                                                                                                                    j7593
                                                                                                                    k7594
                                                                                                                    g7592)))
                                                                                                           (f7595
                                                                                                            x9012))))
                                                                                                 (real?/c
                                                                                                  j7593
                                                                                                  k7594
                                                                                                  x9011))))
                                                                                       g9010))))
                                                                           g9009))
                                                                       xj7590
                                                                       xk7591
                                                                       blocks-max-y)))
                                                              g9008)))
                                                         (x9006 (input)))
                                                  (x9007 x9006))
                                                (letrec ((x9014
                                                          (letrec ((xj7596
                                                                    (loc
                                                                     'module))
                                                                   (xk7597
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9015
                                                                      ((lambda (j7599
                                                                                k7600
                                                                                f7601)
                                                                         (letrec ((g9016
                                                                                   (lambda (g7598)
                                                                                     (letrec ((g9017
                                                                                               (letrec ((x9018
                                                                                                         (letrec ((x9019
                                                                                                                   (BSET/C
                                                                                                                    j7599
                                                                                                                    k7600
                                                                                                                    g7598)))
                                                                                                           (f7601
                                                                                                            x9019))))
                                                                                                 (BSET/C
                                                                                                  j7599
                                                                                                  k7600
                                                                                                  x9018))))
                                                                                       g9017))))
                                                                           g9016))
                                                                       xj7596
                                                                       xk7597
                                                                       eliminate-full-rows)))
                                                              g9015)))
                                                         (x9013 (input)))
                                                  (x9014 x9013))
                                                (letrec ((x9031
                                                          (letrec ((xj7602
                                                                    (loc
                                                                     'module))
                                                                   (xk7603
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9032
                                                                      ((lambda (j7607
                                                                                k7608
                                                                                f7609)
                                                                         (letrec ((g9033
                                                                                   (lambda (g7604
                                                                                            g7605
                                                                                            g7606)
                                                                                     (letrec ((g9034
                                                                                               (letrec ((x9035
                                                                                                         (letrec ((x9038
                                                                                                                   (integer?/c
                                                                                                                    j7607
                                                                                                                    k7608
                                                                                                                    g7604))
                                                                                                                  (x9037
                                                                                                                   (integer?/c
                                                                                                                    j7607
                                                                                                                    k7608
                                                                                                                    g7605))
                                                                                                                  (x9036
                                                                                                                   (TETRA/C
                                                                                                                    j7607
                                                                                                                    k7608
                                                                                                                    g7606)))
                                                                                                           (f7609
                                                                                                            x9038
                                                                                                            x9037
                                                                                                            x9036))))
                                                                                                 (TETRA/C
                                                                                                  j7607
                                                                                                  k7608
                                                                                                  x9035))))
                                                                                       g9034))))
                                                                           g9033))
                                                                       xj7602
                                                                       xk7603
                                                                       tetra-move)))
                                                              g9032)))
                                                         (x9030 (input))
                                                         (x9029 (input))
                                                         (x9020
                                                          (letrec ((x9021
                                                                    (letrec ((x9024
                                                                              (letrec ((x9025
                                                                                        (letrec ((x9028
                                                                                                  (input))
                                                                                                 (x9026
                                                                                                  (letrec ((x9027
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9027
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9028
                                                                                           x9026))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9025)))
                                                                             (x9022
                                                                              (letrec ((x9023
                                                                                        (input)))
                                                                                (cons
                                                                                 x9023
                                                                                 '()))))
                                                                      (cons
                                                                       x9024
                                                                       x9022))))
                                                            (cons
                                                             'tetra
                                                             x9021))))
                                                  (x9031 x9030 x9029 x9020))
                                                (letrec ((x9048
                                                          (letrec ((xj7610
                                                                    (loc
                                                                     'module))
                                                                   (xk7611
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9049
                                                                      ((lambda (j7613
                                                                                k7614
                                                                                f7615)
                                                                         (letrec ((g9050
                                                                                   (lambda (g7612)
                                                                                     (letrec ((g9051
                                                                                               (letrec ((x9052
                                                                                                         (letrec ((x9053
                                                                                                                   (TETRA/C
                                                                                                                    j7613
                                                                                                                    k7614
                                                                                                                    g7612)))
                                                                                                           (f7615
                                                                                                            x9053))))
                                                                                                 (TETRA/C
                                                                                                  j7613
                                                                                                  k7614
                                                                                                  x9052))))
                                                                                       g9051))))
                                                                           g9050))
                                                                       xj7610
                                                                       xk7611
                                                                       tetra-rotate-ccw)))
                                                              g9049)))
                                                         (x9039
                                                          (letrec ((x9040
                                                                    (letrec ((x9043
                                                                              (letrec ((x9044
                                                                                        (letrec ((x9047
                                                                                                  (input))
                                                                                                 (x9045
                                                                                                  (letrec ((x9046
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9046
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9047
                                                                                           x9045))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9044)))
                                                                             (x9041
                                                                              (letrec ((x9042
                                                                                        (input)))
                                                                                (cons
                                                                                 x9042
                                                                                 '()))))
                                                                      (cons
                                                                       x9043
                                                                       x9041))))
                                                            (cons
                                                             'tetra
                                                             x9040))))
                                                  (x9048 x9039))
                                                (letrec ((x9063
                                                          (letrec ((xj7616
                                                                    (loc
                                                                     'module))
                                                                   (xk7617
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9064
                                                                      ((lambda (j7619
                                                                                k7620
                                                                                f7621)
                                                                         (letrec ((g9065
                                                                                   (lambda (g7618)
                                                                                     (letrec ((g9066
                                                                                               (letrec ((x9067
                                                                                                         (letrec ((x9068
                                                                                                                   (TETRA/C
                                                                                                                    j7619
                                                                                                                    k7620
                                                                                                                    g7618)))
                                                                                                           (f7621
                                                                                                            x9068))))
                                                                                                 (TETRA/C
                                                                                                  j7619
                                                                                                  k7620
                                                                                                  x9067))))
                                                                                       g9066))))
                                                                           g9065))
                                                                       xj7616
                                                                       xk7617
                                                                       tetra-rotate-cw)))
                                                              g9064)))
                                                         (x9054
                                                          (letrec ((x9055
                                                                    (letrec ((x9058
                                                                              (letrec ((x9059
                                                                                        (letrec ((x9062
                                                                                                  (input))
                                                                                                 (x9060
                                                                                                  (letrec ((x9061
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9061
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9062
                                                                                           x9060))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9059)))
                                                                             (x9056
                                                                              (letrec ((x9057
                                                                                        (input)))
                                                                                (cons
                                                                                 x9057
                                                                                 '()))))
                                                                      (cons
                                                                       x9058
                                                                       x9056))))
                                                            (cons
                                                             'tetra
                                                             x9055))))
                                                  (x9063 x9054))
                                                (letrec ((x9079
                                                          (letrec ((xj7622
                                                                    (loc
                                                                     'module))
                                                                   (xk7623
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9080
                                                                      ((lambda (j7626
                                                                                k7627
                                                                                f7628)
                                                                         (letrec ((g9081
                                                                                   (lambda (g7624
                                                                                            g7625)
                                                                                     (letrec ((g9082
                                                                                               (letrec ((x9083
                                                                                                         (letrec ((x9085
                                                                                                                   (TETRA/C
                                                                                                                    j7626
                                                                                                                    k7627
                                                                                                                    g7624))
                                                                                                                  (x9084
                                                                                                                   (BSET/C
                                                                                                                    j7626
                                                                                                                    k7627
                                                                                                                    g7625)))
                                                                                                           (f7628
                                                                                                            x9085
                                                                                                            x9084))))
                                                                                                 (boolean?/c
                                                                                                  j7626
                                                                                                  k7627
                                                                                                  x9083))))
                                                                                       g9082))))
                                                                           g9081))
                                                                       xj7622
                                                                       xk7623
                                                                       tetra-overlaps-blocks?)))
                                                              g9080)))
                                                         (x9070
                                                          (letrec ((x9071
                                                                    (letrec ((x9074
                                                                              (letrec ((x9075
                                                                                        (letrec ((x9078
                                                                                                  (input))
                                                                                                 (x9076
                                                                                                  (letrec ((x9077
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9077
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9078
                                                                                           x9076))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9075)))
                                                                             (x9072
                                                                              (letrec ((x9073
                                                                                        (input)))
                                                                                (cons
                                                                                 x9073
                                                                                 '()))))
                                                                      (cons
                                                                       x9074
                                                                       x9072))))
                                                            (cons
                                                             'tetra
                                                             x9071)))
                                                         (x9069 (input)))
                                                  (x9079 x9070 x9069))
                                                (letrec ((x9097
                                                          (letrec ((xj7629
                                                                    (loc
                                                                     'module))
                                                                   (xk7630
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9098
                                                                      ((lambda (j7642
                                                                                k7643
                                                                                f7644)
                                                                         (letrec ((g9099
                                                                                   (lambda (g7631
                                                                                            g7632
                                                                                            g7633
                                                                                            g7634
                                                                                            g7635
                                                                                            g7636
                                                                                            g7637
                                                                                            g7638
                                                                                            g7639
                                                                                            g7640
                                                                                            g7641)
                                                                                     (letrec ((g9100
                                                                                               (letrec ((x9101
                                                                                                         (letrec ((x9112
                                                                                                                   (COLOR/C
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7631))
                                                                                                                  (x9111
                                                                                                                   (real?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7632))
                                                                                                                  (x9110
                                                                                                                   (real?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7633))
                                                                                                                  (x9109
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7634))
                                                                                                                  (x9108
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7635))
                                                                                                                  (x9107
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7636))
                                                                                                                  (x9106
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7637))
                                                                                                                  (x9105
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7638))
                                                                                                                  (x9104
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7639))
                                                                                                                  (x9103
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7640))
                                                                                                                  (x9102
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7641)))
                                                                                                           (f7644
                                                                                                            x9112
                                                                                                            x9111
                                                                                                            x9110
                                                                                                            x9109
                                                                                                            x9108
                                                                                                            x9107
                                                                                                            x9106
                                                                                                            x9105
                                                                                                            x9104
                                                                                                            x9103
                                                                                                            x9102))))
                                                                                                 (TETRA/C
                                                                                                  j7642
                                                                                                  k7643
                                                                                                  x9101))))
                                                                                       g9100))))
                                                                           g9099))
                                                                       xj7629
                                                                       xk7630
                                                                       build-tetra-blocks)))
                                                              g9098)))
                                                         (x9096 (input))
                                                         (x9095 (input))
                                                         (x9094 (input))
                                                         (x9093 (input))
                                                         (x9092 (input))
                                                         (x9091 (input))
                                                         (x9090 (input))
                                                         (x9089 (input))
                                                         (x9088 (input))
                                                         (x9087 (input))
                                                         (x9086 (input)))
                                                  (x9097
                                                   x9096
                                                   x9095
                                                   x9094
                                                   x9093
                                                   x9092
                                                   x9091
                                                   x9090
                                                   x9089
                                                   x9088
                                                   x9087
                                                   x9086))
                                                (letrec ((x9123
                                                          (letrec ((xj7645
                                                                    (loc
                                                                     'module))
                                                                   (xk7646
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9124
                                                                      ((lambda (j7649
                                                                                k7650
                                                                                f7651)
                                                                         (letrec ((g9125
                                                                                   (lambda (g7647
                                                                                            g7648)
                                                                                     (letrec ((g9126
                                                                                               (letrec ((x9127
                                                                                                         (letrec ((x9129
                                                                                                                   (TETRA/C
                                                                                                                    j7649
                                                                                                                    k7650
                                                                                                                    g7647))
                                                                                                                  (x9128
                                                                                                                   (COLOR/C
                                                                                                                    j7649
                                                                                                                    k7650
                                                                                                                    g7648)))
                                                                                                           (f7651
                                                                                                            x9129
                                                                                                            x9128))))
                                                                                                 (TETRA/C
                                                                                                  j7649
                                                                                                  k7650
                                                                                                  x9127))))
                                                                                       g9126))))
                                                                           g9125))
                                                                       xj7645
                                                                       xk7646
                                                                       tetra-change-color)))
                                                              g9124)))
                                                         (x9114
                                                          (letrec ((x9115
                                                                    (letrec ((x9118
                                                                              (letrec ((x9119
                                                                                        (letrec ((x9122
                                                                                                  (input))
                                                                                                 (x9120
                                                                                                  (letrec ((x9121
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9121
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9122
                                                                                           x9120))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9119)))
                                                                             (x9116
                                                                              (letrec ((x9117
                                                                                        (input)))
                                                                                (cons
                                                                                 x9117
                                                                                 '()))))
                                                                      (cons
                                                                       x9118
                                                                       x9116))))
                                                            (cons
                                                             'tetra
                                                             x9115)))
                                                         (x9113 (input)))
                                                  (x9123 x9114 x9113))
                                                (letrec ((x9144
                                                          (letrec ((xj7652
                                                                    (loc
                                                                     'module))
                                                                   (xk7653
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9145
                                                                      ((lambda (j7656
                                                                                k7657
                                                                                f7658)
                                                                         (letrec ((g9146
                                                                                   (lambda (g7654
                                                                                            g7655)
                                                                                     (letrec ((g9147
                                                                                               (letrec ((x9148
                                                                                                         (letrec ((x9150
                                                                                                                   (WORLD/C
                                                                                                                    j7656
                                                                                                                    k7657
                                                                                                                    g7654))
                                                                                                                  (x9149
                                                                                                                   (string?/c
                                                                                                                    j7656
                                                                                                                    k7657
                                                                                                                    g7655)))
                                                                                                           (f7658
                                                                                                            x9150
                                                                                                            x9149))))
                                                                                                 (WORLD/C
                                                                                                  j7656
                                                                                                  k7657
                                                                                                  x9148))))
                                                                                       g9147))))
                                                                           g9146))
                                                                       xj7652
                                                                       xk7653
                                                                       world-key-move)))
                                                              g9145)))
                                                         (x9131
                                                          (letrec ((x9132
                                                                    (letrec ((x9135
                                                                              (letrec ((x9136
                                                                                        (letrec ((x9139
                                                                                                  (letrec ((x9140
                                                                                                            (letrec ((x9143
                                                                                                                      (input))
                                                                                                                     (x9141
                                                                                                                      (letrec ((x9142
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9142
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9143
                                                                                                               x9141))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9140)))
                                                                                                 (x9137
                                                                                                  (letrec ((x9138
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9138
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9139
                                                                                           x9137))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9136)))
                                                                             (x9133
                                                                              (letrec ((x9134
                                                                                        (input)))
                                                                                (cons
                                                                                 x9134
                                                                                 '()))))
                                                                      (cons
                                                                       x9135
                                                                       x9133))))
                                                            (cons
                                                             'world
                                                             x9132)))
                                                         (x9130 (input)))
                                                  (x9144 x9131 x9130))
                                                (letrec ((x9165
                                                          (letrec ((xj7659
                                                                    (loc
                                                                     'module))
                                                                   (xk7660
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9166
                                                                      ((lambda (j7663
                                                                                k7664
                                                                                f7665)
                                                                         (letrec ((g9167
                                                                                   (lambda (g7661
                                                                                            g7662)
                                                                                     (letrec ((g9168
                                                                                               (letrec ((x9169
                                                                                                         (letrec ((x9173
                                                                                                                   (WORLD/C
                                                                                                                    j7663
                                                                                                                    k7664
                                                                                                                    g7661))
                                                                                                                  (x9170
                                                                                                                   (letrec ((x9171
                                                                                                                             (letrec ((x9172
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9172))))
                                                                                                                     (x9171
                                                                                                                      j7663
                                                                                                                      k7664
                                                                                                                      g7662))))
                                                                                                           (f7665
                                                                                                            x9173
                                                                                                            x9170))))
                                                                                                 (WORLD/C
                                                                                                  j7663
                                                                                                  k7664
                                                                                                  x9169))))
                                                                                       g9168))))
                                                                           g9167))
                                                                       xj7659
                                                                       xk7660
                                                                       next-world)))
                                                              g9166)))
                                                         (x9152
                                                          (letrec ((x9153
                                                                    (letrec ((x9156
                                                                              (letrec ((x9157
                                                                                        (letrec ((x9160
                                                                                                  (letrec ((x9161
                                                                                                            (letrec ((x9164
                                                                                                                      (input))
                                                                                                                     (x9162
                                                                                                                      (letrec ((x9163
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9163
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9164
                                                                                                               x9162))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9161)))
                                                                                                 (x9158
                                                                                                  (letrec ((x9159
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9159
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9160
                                                                                           x9158))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9157)))
                                                                             (x9154
                                                                              (letrec ((x9155
                                                                                        (input)))
                                                                                (cons
                                                                                 x9155
                                                                                 '()))))
                                                                      (cons
                                                                       x9156
                                                                       x9154))))
                                                            (cons
                                                             'world
                                                             x9153)))
                                                         (x9151 (input)))
                                                  (x9165 x9152 x9151))
                                                (letrec ((x9187
                                                          (letrec ((xj7666
                                                                    (loc
                                                                     'module))
                                                                   (xk7667
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9188
                                                                      ((lambda (j7669
                                                                                k7670
                                                                                f7671)
                                                                         (letrec ((g9189
                                                                                   (lambda (g7668)
                                                                                     (letrec ((g9190
                                                                                               (letrec ((x9191
                                                                                                         (letrec ((x9192
                                                                                                                   (WORLD/C
                                                                                                                    j7669
                                                                                                                    k7670
                                                                                                                    g7668)))
                                                                                                           (f7671
                                                                                                            x9192))))
                                                                                                 (BSET/C
                                                                                                  j7669
                                                                                                  k7670
                                                                                                  x9191))))
                                                                                       g9190))))
                                                                           g9189))
                                                                       xj7666
                                                                       xk7667
                                                                       ghost-blocks)))
                                                              g9188)))
                                                         (x9174
                                                          (letrec ((x9175
                                                                    (letrec ((x9178
                                                                              (letrec ((x9179
                                                                                        (letrec ((x9182
                                                                                                  (letrec ((x9183
                                                                                                            (letrec ((x9186
                                                                                                                      (input))
                                                                                                                     (x9184
                                                                                                                      (letrec ((x9185
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9185
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9186
                                                                                                               x9184))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9183)))
                                                                                                 (x9180
                                                                                                  (letrec ((x9181
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9181
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9182
                                                                                           x9180))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9179)))
                                                                             (x9176
                                                                              (letrec ((x9177
                                                                                        (input)))
                                                                                (cons
                                                                                 x9177
                                                                                 '()))))
                                                                      (cons
                                                                       x9178
                                                                       x9176))))
                                                            (cons
                                                             'world
                                                             x9175))))
                                                  (x9187 x9174))
                                                (letrec ((x9194
                                                          (letrec ((xj7672
                                                                    (loc
                                                                     'module))
                                                                   (xk7673
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9195
                                                                      ((lambda (j7675
                                                                                k7676
                                                                                f7677)
                                                                         (letrec ((g9196
                                                                                   (lambda (g7674)
                                                                                     (letrec ((g9197
                                                                                               (letrec ((x9198
                                                                                                         (letrec ((x9199
                                                                                                                   (any/c
                                                                                                                    j7675
                                                                                                                    k7676
                                                                                                                    g7674)))
                                                                                                           (f7677
                                                                                                            x9199))))
                                                                                                 (boolean?/c
                                                                                                  j7675
                                                                                                  k7676
                                                                                                  x9198))))
                                                                                       g9197))))
                                                                           g9196))
                                                                       xj7672
                                                                       xk7673
                                                                       image?)))
                                                              g9195)))
                                                         (x9193 (input)))
                                                  (x9194 x9193))
                                                (letrec ((x9202
                                                          (letrec ((xj7678
                                                                    (loc
                                                                     'module))
                                                                   (xk7679
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9203
                                                                      ((lambda (j7682
                                                                                k7683
                                                                                f7684)
                                                                         (letrec ((g9204
                                                                                   (lambda (g7680
                                                                                            g7681)
                                                                                     (letrec ((g9205
                                                                                               (letrec ((x9206
                                                                                                         (letrec ((x9208
                                                                                                                   (image?
                                                                                                                    j7682
                                                                                                                    k7683
                                                                                                                    g7680))
                                                                                                                  (x9207
                                                                                                                   (image?
                                                                                                                    j7682
                                                                                                                    k7683
                                                                                                                    g7681)))
                                                                                                           (f7684
                                                                                                            x9208
                                                                                                            x9207))))
                                                                                                 (image?
                                                                                                  j7682
                                                                                                  k7683
                                                                                                  x9206))))
                                                                                       g9205))))
                                                                           g9204))
                                                                       xj7678
                                                                       xk7679
                                                                       overlay)))
                                                              g9203)))
                                                         (x9201 (input))
                                                         (x9200 (input)))
                                                  (x9202 x9201 x9200))
                                                (letrec ((x9212
                                                          (letrec ((xj7685
                                                                    (loc
                                                                     'module))
                                                                   (xk7686
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9213
                                                                      ((lambda (j7690
                                                                                k7691
                                                                                f7692)
                                                                         (letrec ((g9214
                                                                                   (lambda (g7687
                                                                                            g7688
                                                                                            g7689)
                                                                                     (letrec ((g9215
                                                                                               (letrec ((x9216
                                                                                                         (letrec ((x9219
                                                                                                                   (real?/c
                                                                                                                    j7690
                                                                                                                    k7691
                                                                                                                    g7687))
                                                                                                                  (x9218
                                                                                                                   (real?/c
                                                                                                                    j7690
                                                                                                                    k7691
                                                                                                                    g7688))
                                                                                                                  (x9217
                                                                                                                   (string?/c
                                                                                                                    j7690
                                                                                                                    k7691
                                                                                                                    g7689)))
                                                                                                           (f7692
                                                                                                            x9219
                                                                                                            x9218
                                                                                                            x9217))))
                                                                                                 (image?
                                                                                                  j7690
                                                                                                  k7691
                                                                                                  x9216))))
                                                                                       g9215))))
                                                                           g9214))
                                                                       xj7685
                                                                       xk7686
                                                                       circle)))
                                                              g9213)))
                                                         (x9211 (input))
                                                         (x9210 (input))
                                                         (x9209 (input)))
                                                  (x9212 x9211 x9210 x9209))
                                                (letrec ((x9224
                                                          (letrec ((xj7693
                                                                    (loc
                                                                     'module))
                                                                   (xk7694
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9225
                                                                      ((lambda (j7699
                                                                                k7700
                                                                                f7701)
                                                                         (letrec ((g9226
                                                                                   (lambda (g7695
                                                                                            g7696
                                                                                            g7697
                                                                                            g7698)
                                                                                     (letrec ((g9227
                                                                                               (letrec ((x9228
                                                                                                         (letrec ((x9232
                                                                                                                   (real?/c
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7695))
                                                                                                                  (x9231
                                                                                                                   (real?/c
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7696))
                                                                                                                  (x9230
                                                                                                                   (COLOR/C
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7697))
                                                                                                                  (x9229
                                                                                                                   (COLOR/C
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7698)))
                                                                                                           (f7701
                                                                                                            x9232
                                                                                                            x9231
                                                                                                            x9230
                                                                                                            x9229))))
                                                                                                 (image?
                                                                                                  j7699
                                                                                                  k7700
                                                                                                  x9228))))
                                                                                       g9227))))
                                                                           g9226))
                                                                       xj7693
                                                                       xk7694
                                                                       rectangle)))
                                                              g9225)))
                                                         (x9223 (input))
                                                         (x9222 (input))
                                                         (x9221 (input))
                                                         (x9220 (input)))
                                                  (x9224
                                                   x9223
                                                   x9222
                                                   x9221
                                                   x9220))
                                                (letrec ((x9237
                                                          (letrec ((xj7702
                                                                    (loc
                                                                     'module))
                                                                   (xk7703
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9238
                                                                      ((lambda (j7708
                                                                                k7709
                                                                                f7710)
                                                                         (letrec ((g9239
                                                                                   (lambda (g7704
                                                                                            g7705
                                                                                            g7706
                                                                                            g7707)
                                                                                     (letrec ((g9240
                                                                                               (letrec ((x9241
                                                                                                         (letrec ((x9245
                                                                                                                   (image/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7704))
                                                                                                                  (x9244
                                                                                                                   (real?/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7705))
                                                                                                                  (x9243
                                                                                                                   (real?/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7706))
                                                                                                                  (x9242
                                                                                                                   (image/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7707)))
                                                                                                           (f7710
                                                                                                            x9245
                                                                                                            x9244
                                                                                                            x9243
                                                                                                            x9242))))
                                                                                                 (image/c
                                                                                                  j7708
                                                                                                  k7709
                                                                                                  x9241))))
                                                                                       g9240))))
                                                                           g9239))
                                                                       xj7702
                                                                       xk7703
                                                                       place-image)))
                                                              g9238)))
                                                         (x9236
                                                          (cons 'image '()))
                                                         (x9235 (input))
                                                         (x9234 (input))
                                                         (x9233
                                                          (cons 'image '())))
                                                  (x9237
                                                   x9236
                                                   x9235
                                                   x9234
                                                   x9233))
                                                (letrec ((x9248
                                                          (letrec ((xj7711
                                                                    (loc
                                                                     'module))
                                                                   (xk7712
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9249
                                                                      ((lambda (j7715
                                                                                k7716
                                                                                f7717)
                                                                         (letrec ((g9250
                                                                                   (lambda (g7713
                                                                                            g7714)
                                                                                     (letrec ((g9251
                                                                                               (letrec ((x9252
                                                                                                         (letrec ((x9254
                                                                                                                   (real?/c
                                                                                                                    j7715
                                                                                                                    k7716
                                                                                                                    g7713))
                                                                                                                  (x9253
                                                                                                                   (real?/c
                                                                                                                    j7715
                                                                                                                    k7716
                                                                                                                    g7714)))
                                                                                                           (f7717
                                                                                                            x9254
                                                                                                            x9253))))
                                                                                                 (image?
                                                                                                  j7715
                                                                                                  k7716
                                                                                                  x9252))))
                                                                                       g9251))))
                                                                           g9250))
                                                                       xj7711
                                                                       xk7712
                                                                       empty-scene)))
                                                              g9249)))
                                                         (x9247 (input))
                                                         (x9246 (input)))
                                                  (x9248 x9247 x9246))
                                                (letrec ((x9256
                                                          (letrec ((xj7718
                                                                    (loc
                                                                     'module))
                                                                   (xk7719
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9257
                                                                      ((lambda (j7721
                                                                                k7722
                                                                                f7723)
                                                                         (letrec ((g9258
                                                                                   (lambda (g7720)
                                                                                     (letrec ((g9259
                                                                                               (letrec ((x9260
                                                                                                         (letrec ((x9261
                                                                                                                   (letrec ((x9262
                                                                                                                             (letrec ((x9263
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9263))))
                                                                                                                     (x9262
                                                                                                                      j7721
                                                                                                                      k7722
                                                                                                                      g7720))))
                                                                                                           (f7723
                                                                                                            x9261))))
                                                                                                 (TETRA/C
                                                                                                  j7721
                                                                                                  k7722
                                                                                                  x9260))))
                                                                                       g9259))))
                                                                           g9258))
                                                                       xj7718
                                                                       xk7719
                                                                       list-pick-random)))
                                                              g9257)))
                                                         (x9255 (input)))
                                                  (x9256 x9255))
                                                (letrec ((xj7724 (loc 'module))
                                                         (xk7725
                                                          (loc 'importer)))
                                                  (letrec ((g9264
                                                            (integer?/c
                                                             xj7724
                                                             xk7725
                                                             neg-1)))
                                                    g9264))
                                                (letrec ((x9278
                                                          (letrec ((xj7726
                                                                    (loc
                                                                     'module))
                                                                   (xk7727
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9279
                                                                      ((lambda (j7729
                                                                                k7730
                                                                                f7731)
                                                                         (letrec ((g9280
                                                                                   (lambda (g7728)
                                                                                     (letrec ((g9281
                                                                                               (letrec ((x9282
                                                                                                         (letrec ((x9283
                                                                                                                   (WORLD/C
                                                                                                                    j7729
                                                                                                                    k7730
                                                                                                                    g7728)))
                                                                                                           (f7731
                                                                                                            x9283))))
                                                                                                 (image/c
                                                                                                  j7729
                                                                                                  k7730
                                                                                                  x9282))))
                                                                                       g9281))))
                                                                           g9280))
                                                                       xj7726
                                                                       xk7727
                                                                       world->image)))
                                                              g9279)))
                                                         (x9265
                                                          (letrec ((x9266
                                                                    (letrec ((x9269
                                                                              (letrec ((x9270
                                                                                        (letrec ((x9273
                                                                                                  (letrec ((x9274
                                                                                                            (letrec ((x9277
                                                                                                                      (input))
                                                                                                                     (x9275
                                                                                                                      (letrec ((x9276
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9276
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9277
                                                                                                               x9275))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9274)))
                                                                                                 (x9271
                                                                                                  (letrec ((x9272
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9272
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9273
                                                                                           x9271))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9270)))
                                                                             (x9267
                                                                              (letrec ((x9268
                                                                                        (input)))
                                                                                (cons
                                                                                 x9268
                                                                                 '()))))
                                                                      (cons
                                                                       x9269
                                                                       x9267))))
                                                            (cons
                                                             'world
                                                             x9266))))
                                                  (x9278 x9265))
                                                (letrec ((x9285
                                                          (letrec ((xj7732
                                                                    (loc
                                                                     'module))
                                                                   (xk7733
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9286
                                                                      ((lambda (j7735
                                                                                k7736
                                                                                f7737)
                                                                         (letrec ((g9287
                                                                                   (lambda (g7734)
                                                                                     (letrec ((g9288
                                                                                               (letrec ((x9289
                                                                                                         (letrec ((x9290
                                                                                                                   (BSET/C
                                                                                                                    j7735
                                                                                                                    k7736
                                                                                                                    g7734)))
                                                                                                           (f7737
                                                                                                            x9290))))
                                                                                                 (image/c
                                                                                                  j7735
                                                                                                  k7736
                                                                                                  x9289))))
                                                                                       g9288))))
                                                                           g9287))
                                                                       xj7732
                                                                       xk7733
                                                                       blocks->image)))
                                                              g9286)))
                                                         (x9284 (input)))
                                                  (x9285 x9284))
                                                (letrec ((x9298
                                                          (letrec ((xj7738
                                                                    (loc
                                                                     'module))
                                                                   (xk7739
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9299
                                                                      ((lambda (j7741
                                                                                k7742
                                                                                f7743)
                                                                         (letrec ((g9300
                                                                                   (lambda (g7740)
                                                                                     (letrec ((g9301
                                                                                               (letrec ((x9302
                                                                                                         (letrec ((x9303
                                                                                                                   (BLOCK/C
                                                                                                                    j7741
                                                                                                                    k7742
                                                                                                                    g7740)))
                                                                                                           (f7743
                                                                                                            x9303))))
                                                                                                 (image/c
                                                                                                  j7741
                                                                                                  k7742
                                                                                                  x9302))))
                                                                                       g9301))))
                                                                           g9300))
                                                                       xj7738
                                                                       xk7739
                                                                       block->image)))
                                                              g9299)))
                                                         (x9291
                                                          (letrec ((x9292
                                                                    (letrec ((x9297
                                                                              (input))
                                                                             (x9293
                                                                              (letrec ((x9296
                                                                                        (input))
                                                                                       (x9294
                                                                                        (letrec ((x9295
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9295
                                                                                           '()))))
                                                                                (cons
                                                                                 x9296
                                                                                 x9294))))
                                                                      (cons
                                                                       x9297
                                                                       x9293))))
                                                            (cons
                                                             'block
                                                             x9292))))
                                                  (x9298 x9291))
                                                (letrec ((x9312
                                                          (letrec ((xj7744
                                                                    (loc
                                                                     'module))
                                                                   (xk7745
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9313
                                                                      ((lambda (j7748
                                                                                k7749
                                                                                f7750)
                                                                         (letrec ((g9314
                                                                                   (lambda (g7746
                                                                                            g7747)
                                                                                     (letrec ((g9315
                                                                                               (letrec ((x9316
                                                                                                         (letrec ((x9318
                                                                                                                   (BLOCK/C
                                                                                                                    j7748
                                                                                                                    k7749
                                                                                                                    g7746))
                                                                                                                  (x9317
                                                                                                                   (image/c
                                                                                                                    j7748
                                                                                                                    k7749
                                                                                                                    g7747)))
                                                                                                           (f7750
                                                                                                            x9318
                                                                                                            x9317))))
                                                                                                 (image/c
                                                                                                  j7748
                                                                                                  k7749
                                                                                                  x9316))))
                                                                                       g9315))))
                                                                           g9314))
                                                                       xj7744
                                                                       xk7745
                                                                       place-block)))
                                                              g9313)))
                                                         (x9305
                                                          (letrec ((x9306
                                                                    (letrec ((x9311
                                                                              (input))
                                                                             (x9307
                                                                              (letrec ((x9310
                                                                                        (input))
                                                                                       (x9308
                                                                                        (letrec ((x9309
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9309
                                                                                           '()))))
                                                                                (cons
                                                                                 x9310
                                                                                 x9308))))
                                                                      (cons
                                                                       x9311
                                                                       x9307))))
                                                            (cons
                                                             'block
                                                             x9306)))
                                                         (x9304
                                                          (cons 'image '())))
                                                  (x9312 x9305 x9304))
                                                (letrec ((x9320
                                                          (letrec ((xj7751
                                                                    (loc
                                                                     'module))
                                                                   (xk7752
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9321
                                                                      ((lambda (j7754
                                                                                k7755
                                                                                f7756)
                                                                         (letrec ((g9322
                                                                                   (lambda (g7753)
                                                                                     (letrec ((g9323
                                                                                               (letrec ((x9324
                                                                                                         (letrec ((x9325
                                                                                                                   (letrec ((x9326
                                                                                                                             (letrec ((x9327
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9327))))
                                                                                                                     (x9326
                                                                                                                      j7754
                                                                                                                      k7755
                                                                                                                      g7753))))
                                                                                                           (f7756
                                                                                                            x9325))))
                                                                                                 (WORLD/C
                                                                                                  j7754
                                                                                                  k7755
                                                                                                  x9324))))
                                                                                       g9323))))
                                                                           g9322))
                                                                       xj7751
                                                                       xk7752
                                                                       world0)))
                                                              g9321)))
                                                         (x9319 (input)))
                                                  (x9320 x9319))))))
                                      g8760))))
                          g7808))))
              g7791)))
    g7790))
