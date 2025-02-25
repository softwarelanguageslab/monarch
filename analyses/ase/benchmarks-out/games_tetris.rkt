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
                                           (/
                                            (letrec ((xj7366 'server)
                                                     (xk7367 'client))
                                              (letrec ((g7933
                                                        ((lambda (j7370
                                                                  k7371
                                                                  f7372)
                                                           (letrec ((g7935
                                                                     (lambda (g7368
                                                                              g7369)
                                                                       (letrec ((g7936
                                                                                 (letrec ((x7937
                                                                                           (letrec ((x7939
                                                                                                     (number?/c
                                                                                                      j7370
                                                                                                      k7371
                                                                                                      g7368))
                                                                                                    (x7938
                                                                                                     (number?/c
                                                                                                      j7370
                                                                                                      k7371
                                                                                                      g7369)))
                                                                                             (f7372
                                                                                              x7939
                                                                                              x7938))))
                                                                                   (number?/c
                                                                                    j7370
                                                                                    k7371
                                                                                    x7937))))
                                                                         g7936))))
                                                             g7935))
                                                         xj7366
                                                         xk7367
                                                         (lambda (a b)
                                                           (letrec ((g7934
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7934)))))
                                                g7933)))
                                           (car
                                            (letrec ((xj7373 'server)
                                                     (xk7374 'client))
                                              (letrec ((g7940
                                                        ((lambda (j7376
                                                                  k7377
                                                                  f7378)
                                                           (letrec ((g7942
                                                                     (lambda (g7375)
                                                                       (letrec ((g7943
                                                                                 (letrec ((x7944
                                                                                           (letrec ((x7945
                                                                                                     (pair?/c
                                                                                                      j7376
                                                                                                      k7377
                                                                                                      g7375)))
                                                                                             (f7378
                                                                                              x7945))))
                                                                                   (any/c
                                                                                    j7376
                                                                                    k7377
                                                                                    x7944))))
                                                                         g7943))))
                                                             g7942))
                                                         xj7373
                                                         xk7374
                                                         (lambda (p)
                                                           (letrec ((g7941
                                                                     (orig-car
                                                                      p)))
                                                             g7941)))))
                                                g7940)))
                                           (cdr
                                            (letrec ((xj7379 'server)
                                                     (xk7380 'client))
                                              (letrec ((g7946
                                                        ((lambda (j7382
                                                                  k7383
                                                                  f7384)
                                                           (letrec ((g7948
                                                                     (lambda (g7381)
                                                                       (letrec ((g7949
                                                                                 (letrec ((x7950
                                                                                           (letrec ((x7951
                                                                                                     (pair?/c
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7381)))
                                                                                             (f7384
                                                                                              x7951))))
                                                                                   (any/c
                                                                                    j7382
                                                                                    k7383
                                                                                    x7950))))
                                                                         g7949))))
                                                             g7948))
                                                         xj7379
                                                         xk7380
                                                         (lambda (p)
                                                           (letrec ((g7947
                                                                     (orig-cdr
                                                                      p)))
                                                             g7947)))))
                                                g7946)))
                                           (cons
                                            (letrec ((xj7385 'server)
                                                     (xk7386 'client))
                                              (letrec ((g7952
                                                        ((lambda (j7389
                                                                  k7390
                                                                  f7391)
                                                           (letrec ((g7954
                                                                     (lambda (g7387
                                                                              g7388)
                                                                       (letrec ((g7955
                                                                                 (letrec ((x7956
                                                                                           (letrec ((x7958
                                                                                                     (any/c
                                                                                                      j7389
                                                                                                      k7390
                                                                                                      g7387))
                                                                                                    (x7957
                                                                                                     (any/c
                                                                                                      j7389
                                                                                                      k7390
                                                                                                      g7388)))
                                                                                             (f7391
                                                                                              x7958
                                                                                              x7957))))
                                                                                   (pair?/c
                                                                                    j7389
                                                                                    k7390
                                                                                    x7956))))
                                                                         g7955))))
                                                             g7954))
                                                         xj7385
                                                         xk7386
                                                         (lambda (a b)
                                                           (letrec ((g7953
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7953)))))
                                                g7952)))
                                           (vector-ref
                                            (letrec ((xj7392 'server)
                                                     (xk7393 'client))
                                              (letrec ((g7959
                                                        ((lambda (j7395
                                                                  k7396
                                                                  f7397)
                                                           (letrec ((g7961
                                                                     (lambda (g7394)
                                                                       (letrec ((g7962
                                                                                 (letrec ((x7963
                                                                                           (letrec ((x7964
                                                                                                     (vector?/c
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7394)))
                                                                                             (f7397
                                                                                              x7964))))
                                                                                   (integer?/c
                                                                                    j7395
                                                                                    k7396
                                                                                    x7963))))
                                                                         g7962))))
                                                             g7961))
                                                         xj7392
                                                         xk7393
                                                         (lambda (v i)
                                                           (letrec ((g7960
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7960)))))
                                                g7959)))
                                           (vector-set!
                                            (letrec ((xj7398 'server)
                                                     (xk7399 'client))
                                              (letrec ((g7965
                                                        ((lambda (j7402
                                                                  k7403
                                                                  f7404)
                                                           (letrec ((g7967
                                                                     (lambda (g7400
                                                                              g7401)
                                                                       (letrec ((g7968
                                                                                 (letrec ((x7969
                                                                                           (letrec ((x7971
                                                                                                     (vector?/c
                                                                                                      j7402
                                                                                                      k7403
                                                                                                      g7400))
                                                                                                    (x7970
                                                                                                     (integer?/c
                                                                                                      j7402
                                                                                                      k7403
                                                                                                      g7401)))
                                                                                             (f7404
                                                                                              x7971
                                                                                              x7970))))
                                                                                   (any/c
                                                                                    j7402
                                                                                    k7403
                                                                                    x7969))))
                                                                         g7968))))
                                                             g7967))
                                                         xj7398
                                                         xk7399
                                                         (lambda (vec i v)
                                                           (letrec ((g7966
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7966)))))
                                                g7965)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7972
                                                        (letrec ((x7973
                                                                  (letrec ((x7974
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7974))))
                                                          (cdr x7973))))
                                                g7972)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7975
                                                        (letrec ((x7978
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7978)))
                                                       (g7976
                                                        (letrec ((x7979
                                                                  (list? l)))
                                                          (assert x7979)))
                                                       (g7977
                                                        (letrec ((x-cnd7980
                                                                  (null? l)))
                                                          (if x-cnd7980
                                                            '()
                                                            (letrec ((x7983
                                                                      (letrec ((x7984
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7984)))
                                                                     (x7981
                                                                      (letrec ((x7982
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7982))))
                                                              (cons
                                                               x7983
                                                               x7981))))))
                                                g7977)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7985
                                                        (letrec ((x7986
                                                                  (car x)))
                                                          (cdr x7986))))
                                                g7985)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7987
                                                        (letrec ((x7988
                                                                  (letrec ((x7989
                                                                            (letrec ((x7990
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7990))))
                                                                    (cdr
                                                                     x7989))))
                                                          (car x7988))))
                                                g7987)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7991
                                                        (letrec ((x7992
                                                                  (letrec ((x7993
                                                                            (letrec ((x7994
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7994))))
                                                                    (car
                                                                     x7993))))
                                                          (cdr x7992))))
                                                g7991)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7995
                                                        (letrec ((x7998
                                                                  (string?
                                                                   filename)))
                                                          (assert x7998)))
                                                       (g7996
                                                        (letrec ((x7999
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7999)))
                                                       (g7997
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g8000
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g8001 res))
                                                            g8001))))
                                                g7997)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g8002
                                                        (letrec ((x8003
                                                                  (letrec ((x8004
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x8004))))
                                                          (car x8003))))
                                                g8002)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g8005
                                                        (letrec ((x8006
                                                                  (letrec ((x8007
                                                                            (letrec ((x8008
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8008))))
                                                                    (car
                                                                     x8007))))
                                                          (cdr x8006))))
                                                g8005)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g8009
                                                        (letrec ((x8011
                                                                  (list? l)))
                                                          (assert x8011)))
                                                       (g8010
                                                        (letrec ((x-cnd8012
                                                                  (null? l)))
                                                          (if x-cnd8012
                                                            #f
                                                            (letrec ((x-cnd8013
                                                                      (letrec ((x8014
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x8014
                                                                         k))))
                                                              (if x-cnd8013
                                                                (car l)
                                                                (letrec ((x8015
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8015))))))))
                                                g8010)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g8016
                                                        (letrec ((x8017
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x8017))))
                                                g8016)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g8018
                                                        (letrec ((x8020
                                                                  (list? l)))
                                                          (assert x8020)))
                                                       (g8019
                                                        (letrec ((x-cnd8021
                                                                  (null? l)))
                                                          (if x-cnd8021
                                                            ""
                                                            (letrec ((x8024
                                                                      (letrec ((x8025
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x8025)))
                                                                     (x8022
                                                                      (letrec ((x8023
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x8023))))
                                                              (string-append
                                                               x8024
                                                               x8022))))))
                                                g8019)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8026
                                                        (letrec ((x8029
                                                                  (char? c1)))
                                                          (assert x8029)))
                                                       (g8027
                                                        (letrec ((x8030
                                                                  (char? c2)))
                                                          (assert x8030)))
                                                       (g8028
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8031
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8031))))
                                                g8028)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g8032
                                                        (letrec ((x8033
                                                                  (letrec ((x8034
                                                                            (letrec ((x8035
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8035))))
                                                                    (cdr
                                                                     x8034))))
                                                          (cdr x8033))))
                                                g8032)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g8036
                                                        (letrec ((x8039
                                                                  (list? l)))
                                                          (assert x8039)))
                                                       (g8037
                                                        (letrec ((x8040
                                                                  (number?)))
                                                          (assert x8040)))
                                                       (g8038
                                                        (letrec ((x-cnd8041
                                                                  (zero? k)))
                                                          (if x-cnd8041
                                                            x
                                                            (letrec ((x8043
                                                                      (cdr x))
                                                                     (x8042
                                                                      (- k 1)))
                                                              (list-tail
                                                               x8043
                                                               x8042))))))
                                                g8038)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g8044 '())) g8044)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g8045
                                                        (letrec ((x-cnd8046
                                                                  (letrec ((x8047
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x8047))))
                                                          (if x-cnd8046
                                                            (letrec ((x8048
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x8048))
                                                            #f))))
                                                g8045)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g8049
                                                        (letrec ((val7250
                                                                  (letrec ((x8050
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x8050
                                                                     9))))
                                                          (letrec ((g8051
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x8052
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x8052
                                                                                   10))))
                                                                        (letrec ((g8053
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x8054
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x8054
                                                                                       32)))))
                                                                          g8053)))))
                                                            g8051))))
                                                g8049)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g8055
                                                        (letrec ((x8056
                                                                  (letrec ((x8057
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8057))))
                                                          (cdr x8056))))
                                                g8055)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g8058
                                                        (letrec ((x8060
                                                                  (number? x)))
                                                          (assert x8060)))
                                                       (g8059 (> x 0)))
                                                g8059)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g8061 (bool-top)))
                                                g8061)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g8062 #f)) g8062)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g8063
                                                        (letrec ((x8064
                                                                  (cdr x)))
                                                          (cdr x8064))))
                                                g8063)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g8065
                                                        (letrec ((x8067
                                                                  (number? x)))
                                                          (assert x8067)))
                                                       (g8066
                                                        (letrec ((x-cnd8068
                                                                  (< x 0)))
                                                          (if x-cnd8068
                                                            (ceiling x)
                                                            (floor x)))))
                                                g8066)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g8069
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g8070
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd8071
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd8071
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g8072
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd8073
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd8073
                                                                                                  (letrec ((x-cnd8074
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd8074
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g8075
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd8076
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd8076
                                                                                                                (letrec ((x-cnd8077
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd8077
                                                                                                                    (letrec ((x-cnd8078
                                                                                                                              (letrec ((x8080
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x8079
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x8080
                                                                                                                                 x8079))))
                                                                                                                      (if x-cnd8078
                                                                                                                        (letrec ((x8082
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x8081
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x8082
                                                                                                                           x8081))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g8083
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd8084
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd8084
                                                                                                                    (letrec ((x-cnd8085
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd8085
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g8086
                                                                                                                                    (letrec ((x-cnd8087
                                                                                                                                              (letrec ((x8088
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x8088
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd8087
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g8089
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g8090
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd8091
                                                                                                                                                                                      (letrec ((x8093
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x8092
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x8093
                                                                                                                                                                                         x8092))))
                                                                                                                                                                              (if x-cnd8091
                                                                                                                                                                                (letrec ((x8094
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x8094))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g8090))))
                                                                                                                                                      g8089))))
                                                                                                                                          (letrec ((g8095
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g8095))
                                                                                                                                        #f))))
                                                                                                                            g8086))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g8083)))))
                                                                                        g8075)))))
                                                                          g8072)))))
                                                            g8070))))
                                                g8069)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g8096
                                                        (letrec ((x8097
                                                                  (letrec ((x8098
                                                                            (letrec ((x8099
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8099))))
                                                                    (car
                                                                     x8098))))
                                                          (cdr x8097))))
                                                g8096)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g8100
                                                        (letrec ((x8101
                                                                  (letrec ((x8102
                                                                            (letrec ((x8103
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8103))))
                                                                    (car
                                                                     x8102))))
                                                          (car x8101))))
                                                g8100)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g8104 (eq? x y)))
                                                g8104)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g8105
                                                        (letrec ((x8108
                                                                  (string?
                                                                   filename)))
                                                          (assert x8108)))
                                                       (g8106
                                                        (letrec ((x8109
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8109)))
                                                       (g8107
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g8110
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g8111 res))
                                                            g8111))))
                                                g8107)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g8112 (cons x '())))
                                                g8112)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8113
                                                        (letrec ((x8116
                                                                  (char? c1)))
                                                          (assert x8116)))
                                                       (g8114
                                                        (letrec ((x8117
                                                                  (char? c2)))
                                                          (assert x8117)))
                                                       (g8115
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8118
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8118))))
                                                g8115)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g8119
                                                        (letrec ((x8120
                                                                  (letrec ((x8121
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8121))))
                                                          (cdr x8120))))
                                                g8119)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g8122
                                                        (letrec ((x8123
                                                                  (letrec ((x8124
                                                                            (letrec ((x8125
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8125))))
                                                                    (car
                                                                     x8124))))
                                                          (cdr x8123))))
                                                g8122)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g8126
                                                        (letrec ((x8127
                                                                  (letrec ((x8128
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8128))))
                                                          (car x8127))))
                                                g8126)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g8129
                                                        (letrec ((x8130
                                                                  (letrec ((x8131
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8131))))
                                                          (car x8130))))
                                                g8129)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g8132
                                                        (letrec ((x8135
                                                                  (char? c1)))
                                                          (assert x8135)))
                                                       (g8133
                                                        (letrec ((x8136
                                                                  (char? c2)))
                                                          (assert x8136)))
                                                       (g8134
                                                        (letrec ((x8137
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8137))))
                                                g8134)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g8138
                                                        (letrec ((x8139
                                                                  (letrec ((x8140
                                                                            (letrec ((x8141
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8141))))
                                                                    (car
                                                                     x8140))))
                                                          (car x8139))))
                                                g8138)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g8142
                                                        (letrec ((x8144
                                                                  (number? x)))
                                                          (assert x8144)))
                                                       (g8143 (< x 0)))
                                                g8143)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g8145 (memq e l)))
                                                g8145)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g8146
                                                        (letrec ((x8147
                                                                  (letrec ((x8148
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8148))))
                                                          (car x8147))))
                                                g8146)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8149 '())) g8149)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8150
                                                        (letrec ((x8152
                                                                  (list? l)))
                                                          (assert x8152)))
                                                       (g8151
                                                        (letrec ((x-cnd8153
                                                                  (null? l)))
                                                          (if x-cnd8153
                                                            '()
                                                            (letrec ((x8156
                                                                      (letrec ((x8157
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8157)))
                                                                     (x8154
                                                                      (letrec ((x8155
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8155))))
                                                              (append
                                                               x8156
                                                               x8154))))))
                                                g8151)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8158
                                                        (letrec ((x8159
                                                                  (letrec ((x8160
                                                                            (letrec ((x8161
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8161))))
                                                                    (car
                                                                     x8160))))
                                                          (car x8159))))
                                                g8158)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8162
                                                        (letrec ((x8163
                                                                  (letrec ((x8164
                                                                            (letrec ((x8165
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8165))))
                                                                    (cdr
                                                                     x8164))))
                                                          (cdr x8163))))
                                                g8162)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8166
                                                        (letrec ((x8168
                                                                  (number? x)))
                                                          (assert x8168)))
                                                       (g8167
                                                        (letrec ((x8169
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8169))))
                                                g8167)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8170
                                                        (letrec ((x8171
                                                                  (letrec ((x8172
                                                                            (letrec ((x8173
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8173))))
                                                                    (car
                                                                     x8172))))
                                                          (car x8171))))
                                                g8170)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8174
                                                        (letrec ((x8177
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8177)))
                                                       (g8175
                                                        (letrec ((x8178
                                                                  (list?
                                                                   args)))
                                                          (assert x8178)))
                                                       (g8176
                                                        (letrec ((x-cnd8179
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8179
                                                            (letrec ((g8180
                                                                      (proc)))
                                                              g8180)
                                                            (letrec ((x-cnd8181
                                                                      (letrec ((x8182
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8182))))
                                                              (if x-cnd8181
                                                                (letrec ((g8183
                                                                          (letrec ((x8184
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8184))))
                                                                  g8183)
                                                                (letrec ((x-cnd8185
                                                                          (letrec ((x8186
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8186))))
                                                                  (if x-cnd8185
                                                                    (letrec ((g8187
                                                                              (letrec ((x8189
                                                                                        (car
                                                                                         args))
                                                                                       (x8188
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8189
                                                                                 x8188))))
                                                                      g8187)
                                                                    (letrec ((x-cnd8190
                                                                              (letrec ((x8191
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8191))))
                                                                      (if x-cnd8190
                                                                        (letrec ((g8192
                                                                                  (letrec ((x8195
                                                                                            (car
                                                                                             args))
                                                                                           (x8194
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8193
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8195
                                                                                     x8194
                                                                                     x8193))))
                                                                          g8192)
                                                                        (letrec ((x-cnd8196
                                                                                  (letrec ((x8197
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8197))))
                                                                          (if x-cnd8196
                                                                            (letrec ((g8198
                                                                                      (letrec ((x8202
                                                                                                (car
                                                                                                 args))
                                                                                               (x8201
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8200
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8199
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8202
                                                                                         x8201
                                                                                         x8200
                                                                                         x8199))))
                                                                              g8198)
                                                                            (letrec ((x-cnd8203
                                                                                      (letrec ((x8204
                                                                                                (letrec ((x8205
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8205))))
                                                                                        (null?
                                                                                         x8204))))
                                                                              (if x-cnd8203
                                                                                (letrec ((g8206
                                                                                          (letrec ((x8212
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8211
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8210
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8209
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8207
                                                                                                    (letrec ((x8208
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8208))))
                                                                                            (proc
                                                                                             x8212
                                                                                             x8211
                                                                                             x8210
                                                                                             x8209
                                                                                             x8207))))
                                                                                  g8206)
                                                                                (letrec ((x-cnd8213
                                                                                          (letrec ((x8214
                                                                                                    (letrec ((x8215
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8215))))
                                                                                            (null?
                                                                                             x8214))))
                                                                                  (if x-cnd8213
                                                                                    (letrec ((g8216
                                                                                              (letrec ((x8224
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8223
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8222
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8221
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8219
                                                                                                        (letrec ((x8220
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8220)))
                                                                                                       (x8217
                                                                                                        (letrec ((x8218
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8218))))
                                                                                                (proc
                                                                                                 x8224
                                                                                                 x8223
                                                                                                 x8222
                                                                                                 x8221
                                                                                                 x8219
                                                                                                 x8217))))
                                                                                      g8216)
                                                                                    (letrec ((x-cnd8225
                                                                                              (letrec ((x8226
                                                                                                        (letrec ((x8227
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8227))))
                                                                                                (null?
                                                                                                 x8226))))
                                                                                      (if x-cnd8225
                                                                                        (letrec ((g8228
                                                                                                  (letrec ((x8238
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8237
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8236
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8235
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8233
                                                                                                            (letrec ((x8234
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8234)))
                                                                                                           (x8231
                                                                                                            (letrec ((x8232
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8232)))
                                                                                                           (x8229
                                                                                                            (letrec ((x8230
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8230))))
                                                                                                    (proc
                                                                                                     x8238
                                                                                                     x8237
                                                                                                     x8236
                                                                                                     x8235
                                                                                                     x8233
                                                                                                     x8231
                                                                                                     x8229))))
                                                                                          g8228)
                                                                                        (letrec ((g8239
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8239)))))))))))))))))))
                                                g8176)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8240
                                                        (letrec ((x8242
                                                                  (list? l)))
                                                          (assert x8242)))
                                                       (g8241
                                                        (letrec ((x-cnd8243
                                                                  (null? l)))
                                                          (if x-cnd8243
                                                            #f
                                                            (letrec ((x-cnd8244
                                                                      (letrec ((x8245
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8245
                                                                         e))))
                                                              (if x-cnd8244
                                                                l
                                                                (letrec ((x8246
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8246))))))))
                                                g8241)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8247
                                                        (letrec ((x8248
                                                                  (letrec ((x8249
                                                                            (letrec ((x8250
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8250))))
                                                                    (cdr
                                                                     x8249))))
                                                          (cdr x8248))))
                                                g8247)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8251
                                                        (letrec ((x8252
                                                                  (letrec ((x8253
                                                                            (letrec ((x8254
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8254))))
                                                                    (cdr
                                                                     x8253))))
                                                          (car x8252))))
                                                g8251)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8255 (random 42)))
                                                g8255)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8256
                                                        (letrec ((x8258
                                                                  (number? x)))
                                                          (assert x8258)))
                                                       (g8257 (= x 0)))
                                                g8257)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8259
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8260
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8260))))
                                                g8259)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8261
                                                        (letrec ((x8262
                                                                  (cdr x)))
                                                          (car x8262))))
                                                g8261)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8263
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd8264
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8264
                                                                      (letrec ((x8265
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8265))
                                                                      #f))))
                                                          (letrec ((g8266
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g8266))))
                                                g8263)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8267
                                                        (letrec ((x8268
                                                                  (letrec ((x8269
                                                                            (letrec ((x8270
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8270))))
                                                                    (cdr
                                                                     x8269))))
                                                          (cdr x8268))))
                                                g8267)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8271
                                                        (letrec ((x-cnd8272
                                                                  (letrec ((x8273
                                                                            #\0))
                                                                    (char<=?
                                                                     x8273
                                                                     c))))
                                                          (if x-cnd8272
                                                            (letrec ((x8274
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8274))
                                                            #f))))
                                                g8271)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8275
                                                        (letrec ((x8277
                                                                  (list? l)))
                                                          (assert x8277)))
                                                       (g8276
                                                        (letrec ((x-cnd8278
                                                                  (null? l)))
                                                          (if x-cnd8278
                                                            #f
                                                            (letrec ((x-cnd8279
                                                                      (letrec ((x8280
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8280
                                                                         k))))
                                                              (if x-cnd8279
                                                                (car l)
                                                                (letrec ((x8281
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8281))))))))
                                                g8276)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8282 (if x #f #t)))
                                                g8282)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8283 (append l1 l2)))
                                                g8283)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8284
                                                        (letrec ((x8286
                                                                  (list? l)))
                                                          (assert x8286)))
                                                       (g8285
                                                        (letrec ((x-cnd8287
                                                                  (null? l)))
                                                          (if x-cnd8287
                                                            #f
                                                            (letrec ((x-cnd8288
                                                                      (letrec ((x8289
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8289
                                                                         e))))
                                                              (if x-cnd8288
                                                                l
                                                                (letrec ((x8290
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8290))))))))
                                                g8285)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8291
                                                        (letrec ((x8292
                                                                  (letrec ((x8293
                                                                            (letrec ((x8294
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8294))))
                                                                    (cdr
                                                                     x8293))))
                                                          (car x8292))))
                                                g8291)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8295
                                                        (letrec ((x8297
                                                                  (list? l)))
                                                          (assert x8297)))
                                                       (g8296
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8298
                                                                              (letrec ((x-cnd8299
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8299
                                                                                  0
                                                                                  (letrec ((x8300
                                                                                            (letrec ((x8301
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8301))))
                                                                                    (+
                                                                                     1
                                                                                     x8300))))))
                                                                      g8298))))
                                                          (letrec ((g8302
                                                                    (rec l)))
                                                            g8302))))
                                                g8296)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8303
                                                        (letrec ((x8306
                                                                  (char? c1)))
                                                          (assert x8306)))
                                                       (g8304
                                                        (letrec ((x8307
                                                                  (char? c2)))
                                                          (assert x8307)))
                                                       (g8305
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8308
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8308))))
                                                g8305)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8309
                                                        (letrec ((x8310
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8310))))
                                                g8309)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8311
                                                        (letrec ((x8312
                                                                  (letrec ((x8313
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8313))))
                                                          (cdr x8312))))
                                                g8311)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8314
                                                        (letrec ((x8316
                                                                  (list? l)))
                                                          (assert x8316)))
                                                       (g8315
                                                        (letrec ((x-cnd8317
                                                                  (null? l)))
                                                          (if x-cnd8317
                                                            #f
                                                            (letrec ((x-cnd8318
                                                                      (letrec ((x8319
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8319
                                                                         k))))
                                                              (if x-cnd8318
                                                                (car l)
                                                                (letrec ((x8320
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8320))))))))
                                                g8315)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8321
                                                        (letrec ((x8322
                                                                  (car x)))
                                                          (car x8322))))
                                                g8321)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8323
                                                        (letrec ((x8326
                                                                  (char? c1)))
                                                          (assert x8326)))
                                                       (g8324
                                                        (letrec ((x8327
                                                                  (char? c2)))
                                                          (assert x8327)))
                                                       (g8325
                                                        (letrec ((x8328
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8328))))
                                                g8325)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8329
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8330
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8330))))
                                                g8329)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8331
                                                        (letrec ((x8334
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8334)))
                                                       (g8332
                                                        (letrec ((x8335
                                                                  (list? l)))
                                                          (assert x8335)))
                                                       (g8333
                                                        (letrec ((x-cnd8336
                                                                  (null? l)))
                                                          (if x-cnd8336
                                                            #t
                                                            (letrec ((x-cnd8337
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8337
                                                                (letrec ((g8338
                                                                          (letrec ((x8340
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8340)))
                                                                         (g8339
                                                                          (letrec ((x8341
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8341))))
                                                                  g8339)
                                                                '()))))))
                                                g8333)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8342
                                                        (letrec ((x8344
                                                                  (number? x)))
                                                          (assert x8344)))
                                                       (g8343
                                                        (letrec ((x-cnd8345
                                                                  (< x 0)))
                                                          (if x-cnd8345
                                                            (- 0 x)
                                                            x))))
                                                g8343)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8346
                                                        (letrec ((x8349
                                                                  (char? c1)))
                                                          (assert x8349)))
                                                       (g8347
                                                        (letrec ((x8350
                                                                  (char? c2)))
                                                          (assert x8350)))
                                                       (g8348
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8351
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8351))))
                                                g8348)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8352
                                                        (letrec ((x8353
                                                                  (letrec ((x8354
                                                                            (letrec ((x8355
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8355))))
                                                                    (cdr
                                                                     x8354))))
                                                          (car x8353))))
                                                g8352)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8356 #f)) g8356)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8357
                                                        (letrec ((x8359
                                                                  (letrec ((x8360
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8360)))
                                                                 (x8358
                                                                  (gcd m n)))
                                                          (/ x8359 x8358))))
                                                g8357)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8361
                                                        (letrec ((x8365
                                                                  (list? l)))
                                                          (assert x8365)))
                                                       (g8362
                                                        (letrec ((x8366
                                                                  (number?
                                                                   index)))
                                                          (assert x8366)))
                                                       (g8363
                                                        (letrec ((x8367
                                                                  (letrec ((x8368
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8368))))
                                                          (assert x8367)))
                                                       (g8364
                                                        (letrec ((x-cnd8369
                                                                  (= index 0)))
                                                          (if x-cnd8369
                                                            (car l)
                                                            (letrec ((x8371
                                                                      (cdr l))
                                                                     (x8370
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8371
                                                               x8370))))))
                                                g8364)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8372
                                                        (letrec ((x-cnd8373
                                                                  (= b 0)))
                                                          (if x-cnd8373
                                                            a
                                                            (letrec ((x8374
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8374))))))
                                                g8372)))
                                           (block
                                            (lambda (x7758 y7759 color7760)
                                              (letrec ((g8375
                                                        (letrec ((x8376
                                                                  (letrec ((x8377
                                                                            (letrec ((x8378
                                                                                      (orig-cons
                                                                                       color7760
                                                                                       '())))
                                                                              (orig-cons
                                                                               y7759
                                                                               x8378))))
                                                                    (orig-cons
                                                                     x7758
                                                                     x8377))))
                                                          (orig-cons
                                                           'block
                                                           x8376))))
                                                g8375)))
                                           (block?
                                            (lambda (block7757)
                                              (letrec ((g8379
                                                        (letrec ((x8380
                                                                  (car
                                                                   block7757)))
                                                          (eq? x8380 'block))))
                                                g8379)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g8381
                                                        (letrec ((x8382
                                                                  (orig-cdr
                                                                   block)))
                                                          (orig-car x8382))))
                                                g8381)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g8383
                                                        (letrec ((x8384
                                                                  (letrec ((x8385
                                                                            (orig-cdr
                                                                             block)))
                                                                    (orig-cdr
                                                                     x8385))))
                                                          (orig-car x8384))))
                                                g8383)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g8386
                                                        (letrec ((x8387
                                                                  (letrec ((x8388
                                                                            (letrec ((x8389
                                                                                      (orig-cdr
                                                                                       block)))
                                                                              (orig-cdr
                                                                               x8389))))
                                                                    (orig-cdr
                                                                     x8388))))
                                                          (orig-car x8387))))
                                                g8386)))
                                           (tetra
                                            (lambda (center7765 blocks7766)
                                              (letrec ((g8390
                                                        (letrec ((x8391
                                                                  (letrec ((x8392
                                                                            (orig-cons
                                                                             blocks7766
                                                                             '())))
                                                                    (orig-cons
                                                                     center7765
                                                                     x8392))))
                                                          (orig-cons
                                                           'tetra
                                                           x8391))))
                                                g8390)))
                                           (tetra?
                                            (lambda (tetra7764)
                                              (letrec ((g8393
                                                        (letrec ((x8394
                                                                  (car
                                                                   tetra7764)))
                                                          (eq? x8394 'tetra))))
                                                g8393)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g8395
                                                        (letrec ((x8396
                                                                  (orig-cdr
                                                                   tetra)))
                                                          (orig-car x8396))))
                                                g8395)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g8397
                                                        (letrec ((x8398
                                                                  (letrec ((x8399
                                                                            (orig-cdr
                                                                             tetra)))
                                                                    (orig-cdr
                                                                     x8399))))
                                                          (orig-car x8398))))
                                                g8397)))
                                           (world
                                            (lambda (tetra7770 blocks7771)
                                              (letrec ((g8400
                                                        (letrec ((x8401
                                                                  (letrec ((x8402
                                                                            (orig-cons
                                                                             blocks7771
                                                                             '())))
                                                                    (orig-cons
                                                                     tetra7770
                                                                     x8402))))
                                                          (orig-cons
                                                           'world
                                                           x8401))))
                                                g8400)))
                                           (world?
                                            (lambda (world7769)
                                              (letrec ((g8403
                                                        (letrec ((x8404
                                                                  (car
                                                                   world7769)))
                                                          (eq? x8404 'world))))
                                                g8403)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g8405
                                                        (letrec ((x8406
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8406))))
                                                g8405)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g8407
                                                        (letrec ((x8408
                                                                  (letrec ((x8409
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8409))))
                                                          (orig-car x8408))))
                                                g8407)))
                                           (posn
                                            (lambda (x7775 y7776)
                                              (letrec ((g8410
                                                        (letrec ((x8411
                                                                  (letrec ((x8412
                                                                            (orig-cons
                                                                             y7776
                                                                             '())))
                                                                    (orig-cons
                                                                     x7775
                                                                     x8412))))
                                                          (orig-cons
                                                           'posn
                                                           x8411))))
                                                g8410)))
                                           (posn?
                                            (lambda (posn7774)
                                              (letrec ((g8413
                                                        (letrec ((x8414
                                                                  (car
                                                                   posn7774)))
                                                          (eq? x8414 'posn))))
                                                g8413)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8415
                                                        (letrec ((x8416
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8416))))
                                                g8415)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8417
                                                        (letrec ((x8418
                                                                  (letrec ((x8419
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8419))))
                                                          (orig-car x8418))))
                                                g8417)))
                                           (COLOR/C symbol?/c)
                                           (POSN/C
                                            (lambda (j7406 k7407 v7405)
                                              (letrec ((g8420
                                                        (letrec ((checked7408
                                                                  (letrec ((x8421
                                                                            (letrec ((x8422
                                                                                      (orig-cdr
                                                                                       v7405)))
                                                                              (orig-car
                                                                               x8422))))
                                                                    (real?/c
                                                                     j7406
                                                                     k7407
                                                                     x8421))))
                                                          (letrec ((g8423
                                                                    (letrec ((checked7409
                                                                              (letrec ((x8424
                                                                                        (letrec ((x8425
                                                                                                  (letrec ((x8426
                                                                                                            (orig-cdr
                                                                                                             v7405)))
                                                                                                    (orig-cdr
                                                                                                     x8426))))
                                                                                          (orig-car
                                                                                           x8425))))
                                                                                (real?/c
                                                                                 j7406
                                                                                 k7407
                                                                                 x8424))))
                                                                      (letrec ((g8427
                                                                                (letrec ((x8428
                                                                                          (letrec ((x8429
                                                                                                    (cons
                                                                                                     checked7409
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7408
                                                                                             x8429))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8428))))
                                                                        g8427))))
                                                            g8423))))
                                                g8420)))
                                           (BLOCK/C
                                            (lambda (j7412 k7413 v7411)
                                              (letrec ((g8430
                                                        (letrec ((checked7414
                                                                  (letrec ((x8431
                                                                            (letrec ((x8432
                                                                                      (orig-cdr
                                                                                       v7411)))
                                                                              (orig-car
                                                                               x8432))))
                                                                    (real?/c
                                                                     j7412
                                                                     k7413
                                                                     x8431))))
                                                          (letrec ((g8433
                                                                    (letrec ((checked7415
                                                                              (letrec ((x8434
                                                                                        (letrec ((x8435
                                                                                                  (letrec ((x8436
                                                                                                            (orig-cdr
                                                                                                             v7411)))
                                                                                                    (orig-cdr
                                                                                                     x8436))))
                                                                                          (orig-car
                                                                                           x8435))))
                                                                                (real?/c
                                                                                 j7412
                                                                                 k7413
                                                                                 x8434))))
                                                                      (letrec ((g8437
                                                                                (letrec ((checked7416
                                                                                          (letrec ((x8438
                                                                                                    (letrec ((x8439
                                                                                                              (letrec ((x8440
                                                                                                                        (letrec ((x8441
                                                                                                                                  (orig-cdr
                                                                                                                                   v7411)))
                                                                                                                          (orig-cdr
                                                                                                                           x8441))))
                                                                                                                (orig-cdr
                                                                                                                 x8440))))
                                                                                                      (orig-car
                                                                                                       x8439))))
                                                                                            (COLOR/C
                                                                                             j7412
                                                                                             k7413
                                                                                             x8438))))
                                                                                  (letrec ((g8442
                                                                                            (letrec ((x8443
                                                                                                      (letrec ((x8444
                                                                                                                (letrec ((x8445
                                                                                                                          (cons
                                                                                                                           checked7416
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked7415
                                                                                                                   x8445))))
                                                                                                        (cons
                                                                                                         checked7414
                                                                                                         x8444))))
                                                                                              (cons
                                                                                               block
                                                                                               x8443))))
                                                                                    g8442))))
                                                                        g8437))))
                                                            g8433))))
                                                g8430)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j7419 k7420 v7418)
                                              (letrec ((g8446
                                                        (letrec ((checked7421
                                                                  (letrec ((x8447
                                                                            (letrec ((x8448
                                                                                      (orig-cdr
                                                                                       v7418)))
                                                                              (orig-car
                                                                               x8448))))
                                                                    (POSN/C
                                                                     j7419
                                                                     k7420
                                                                     x8447))))
                                                          (letrec ((g8449
                                                                    (letrec ((checked7422
                                                                              (letrec ((x8450
                                                                                        (letrec ((x8451
                                                                                                  (letrec ((x8452
                                                                                                            (orig-cdr
                                                                                                             v7418)))
                                                                                                    (orig-cdr
                                                                                                     x8452))))
                                                                                          (orig-car
                                                                                           x8451))))
                                                                                (BSET/C
                                                                                 j7419
                                                                                 k7420
                                                                                 x8450))))
                                                                      (letrec ((g8453
                                                                                (letrec ((x8454
                                                                                          (letrec ((x8455
                                                                                                    (cons
                                                                                                     checked7422
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7421
                                                                                             x8455))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x8454))))
                                                                        g8453))))
                                                            g8449))))
                                                g8446)))
                                           (WORLD/C
                                            (lambda (j7425 k7426 v7424)
                                              (letrec ((g8456
                                                        (letrec ((checked7427
                                                                  (letrec ((x8457
                                                                            (letrec ((x8458
                                                                                      (orig-cdr
                                                                                       v7424)))
                                                                              (orig-car
                                                                               x8458))))
                                                                    (TETRA/C
                                                                     j7425
                                                                     k7426
                                                                     x8457))))
                                                          (letrec ((g8459
                                                                    (letrec ((checked7428
                                                                              (letrec ((x8460
                                                                                        (letrec ((x8461
                                                                                                  (letrec ((x8462
                                                                                                            (orig-cdr
                                                                                                             v7424)))
                                                                                                    (orig-cdr
                                                                                                     x8462))))
                                                                                          (orig-car
                                                                                           x8461))))
                                                                                (BSET/C
                                                                                 j7425
                                                                                 k7426
                                                                                 x8460))))
                                                                      (letrec ((g8463
                                                                                (letrec ((x8464
                                                                                          (letrec ((x8465
                                                                                                    (cons
                                                                                                     checked7428
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7427
                                                                                             x8465))))
                                                                                  (cons
                                                                                   world
                                                                                   x8464))))
                                                                        g8463))))
                                                            g8459))))
                                                g8456)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8466
                                                        (letrec ((x-cnd8467
                                                                  (letrec ((x8469
                                                                            (posn-x
                                                                             p1))
                                                                           (x8468
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8469
                                                                     x8468))))
                                                          (if x-cnd8467
                                                            (letrec ((x8471
                                                                      (posn-y
                                                                       p1))
                                                                     (x8470
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8471 x8470))
                                                            #f))))
                                                g8466)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g8472
                                                        (letrec ((x-cnd8473
                                                                  (letrec ((x8475
                                                                            (block-x
                                                                             b1))
                                                                           (x8474
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x8475
                                                                     x8474))))
                                                          (if x-cnd8473
                                                            (letrec ((x8477
                                                                      (block-y
                                                                       b1))
                                                                     (x8476
                                                                      (block-y
                                                                       b2)))
                                                              (= x8477 x8476))
                                                            #f))))
                                                g8472)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g8478
                                                        (letrec ((x8482
                                                                  (letrec ((x8483
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x8483)))
                                                                 (x8480
                                                                  (letrec ((x8481
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x8481)))
                                                                 (x8479
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8482
                                                           x8480
                                                           x8479))))
                                                g8478)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g8484
                                                        (letrec ((x8491
                                                                  (letrec ((x8495
                                                                            (posn-x
                                                                             c))
                                                                           (x8492
                                                                            (letrec ((x8494
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x8493
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x8494
                                                                               x8493))))
                                                                    (+
                                                                     x8495
                                                                     x8492)))
                                                                 (x8486
                                                                  (letrec ((x8490
                                                                            (posn-y
                                                                             c))
                                                                           (x8487
                                                                            (letrec ((x8489
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8488
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x8489
                                                                               x8488))))
                                                                    (+
                                                                     x8490
                                                                     x8487)))
                                                                 (x8485
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8491
                                                           x8486
                                                           x8485))))
                                                g8484)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g8496
                                                        (letrec ((x8497
                                                                  (letrec ((x8498
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x8498))))
                                                          (block-rotate-ccw
                                                           c
                                                           x8497))))
                                                g8496)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g8499
                                                        (letrec ((x-cnd8500
                                                                  (null? xs)))
                                                          (if x-cnd8500
                                                            (letrec ((g8501
                                                                      #f))
                                                              g8501)
                                                            (letrec ((g8502
                                                                      (letrec ((x8505
                                                                                (letrec ((x8506
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8506)))
                                                                               (x8503
                                                                                (letrec ((x8504
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (ormap
                                                                                   p?
                                                                                   x8504))))
                                                                        (or x8505
                                                                            x8503))))
                                                              g8502)))))
                                                g8499)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g8507
                                                        (letrec ((x-cnd8508
                                                                  (null? xs)))
                                                          (if x-cnd8508
                                                            (letrec ((g8509
                                                                      #t))
                                                              g8509)
                                                            (letrec ((g8510
                                                                      (letrec ((x8513
                                                                                (letrec ((x8514
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8514)))
                                                                               (x8511
                                                                                (letrec ((x8512
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (andmap
                                                                                   p?
                                                                                   x8512))))
                                                                        (and x8513
                                                                             x8511))))
                                                              g8510)))))
                                                g8507)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g8515
                                                        (letrec ((x-cnd8516
                                                                  (null? xs)))
                                                          (if x-cnd8516
                                                            (letrec ((g8517
                                                                      null))
                                                              g8517)
                                                            (letrec ((x-cnd8518
                                                                      (letrec ((x8519
                                                                                (car
                                                                                 xs)))
                                                                        (p?
                                                                         x8519))))
                                                              (if x-cnd8518
                                                                (letrec ((g8520
                                                                          (letrec ((x8523
                                                                                    (car
                                                                                     xs))
                                                                                   (x8521
                                                                                    (letrec ((x8522
                                                                                              (cdr
                                                                                               xs)))
                                                                                      (filter
                                                                                       p?
                                                                                       x8522))))
                                                                            (cons
                                                                             x8523
                                                                             x8521))))
                                                                  g8520)
                                                                (letrec ((g8524
                                                                          (letrec ((x8525
                                                                                    (cdr
                                                                                     xs)))
                                                                            (filter
                                                                             p?
                                                                             x8525))))
                                                                  g8524)))))))
                                                g8515)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g8526
                                                        (letrec ((x-cnd8527
                                                                  (null? l)))
                                                          (if x-cnd8527
                                                            (letrec ((g8528 r))
                                                              g8528)
                                                            (letrec ((g8529
                                                                      (letrec ((x8532
                                                                                (car
                                                                                 l))
                                                                               (x8530
                                                                                (letrec ((x8531
                                                                                          (cdr
                                                                                           l)))
                                                                                  (append
                                                                                   x8531
                                                                                   r))))
                                                                        (cons
                                                                         x8532
                                                                         x8530))))
                                                              g8529)))))
                                                g8526)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g8533
                                                        (letrec ((x-cnd8534
                                                                  (null? xs)))
                                                          (if x-cnd8534
                                                            (letrec ((g8535 a))
                                                              g8535)
                                                            (letrec ((g8536
                                                                      (letrec ((x8539
                                                                                (car
                                                                                 xs))
                                                                               (x8537
                                                                                (letrec ((x8538
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (foldr
                                                                                   f
                                                                                   a
                                                                                   x8538))))
                                                                        (f
                                                                         x8539
                                                                         x8537))))
                                                              g8536)))))
                                                g8533)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g8540
                                                        (ormap
                                                         (lambda (c)
                                                           (letrec ((g8541
                                                                     (block=?
                                                                      b
                                                                      c)))
                                                             g8541))
                                                         bs)))
                                                g8540)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8542
                                                        (andmap
                                                         (lambda (b)
                                                           (letrec ((g8543
                                                                     (blocks-contains?
                                                                      bs2
                                                                      b)))
                                                             g8543))
                                                         bs1)))
                                                g8542)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8544
                                                        (letrec ((x-cnd8545
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd8545
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g8544)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g8546
                                                        (filter
                                                         (lambda (b)
                                                           (letrec ((g8547
                                                                     (blocks-contains?
                                                                      bs2
                                                                      b)))
                                                             g8547))
                                                         bs1)))
                                                g8546)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g8548 (length bs)))
                                                g8548)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g8549
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8550
                                                                     (block-move
                                                                      dx
                                                                      dy
                                                                      b)))
                                                             g8550))
                                                         bs)))
                                                g8549)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g8551
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8552
                                                                     (block-rotate-ccw
                                                                      c
                                                                      b)))
                                                             g8552))
                                                         bs)))
                                                g8551)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g8553
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8554
                                                                     (block-rotate-cw
                                                                      c
                                                                      b)))
                                                             g8554))
                                                         bs)))
                                                g8553)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g8555
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8556
                                                                     (letrec ((x8558
                                                                               (block-x
                                                                                b))
                                                                              (x8557
                                                                               (block-y
                                                                                b)))
                                                                       (block
                                                                        x8558
                                                                        x8557
                                                                        c))))
                                                             g8556))
                                                         bs)))
                                                g8555)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g8559
                                                        (filter
                                                         (lambda (b)
                                                           (letrec ((g8560
                                                                     (letrec ((x8561
                                                                               (block-y
                                                                                b)))
                                                                       (=
                                                                        i
                                                                        x8561))))
                                                             g8560))
                                                         bs)))
                                                g8559)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g8562
                                                        (letrec ((x8563
                                                                  (letrec ((x8564
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x8564))))
                                                          (=
                                                           board-width
                                                           x8563))))
                                                g8562)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g8565
                                                        (ormap
                                                         (lambda (b)
                                                           (letrec ((g8566
                                                                     (letrec ((x8567
                                                                               (block-y
                                                                                b)))
                                                                       (<=
                                                                        x8567
                                                                        0))))
                                                             g8566))
                                                         bs)))
                                                g8565)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g8568
                                                        (foldr
                                                         (lambda (b bs)
                                                           (letrec ((g8569
                                                                     (letrec ((x-cnd8570
                                                                               (blocks-contains?
                                                                                bs
                                                                                b)))
                                                                       (if x-cnd8570
                                                                         (letrec ((g8571
                                                                                   bs))
                                                                           g8571)
                                                                         (letrec ((g8572
                                                                                   (cons
                                                                                    b
                                                                                    bs)))
                                                                           g8572)))))
                                                             g8569))
                                                         bs2
                                                         bs1)))
                                                g8568)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g8573
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8574
                                                                     (letrec ((x8575
                                                                               (block-y
                                                                                b)))
                                                                       (max
                                                                        x8575
                                                                        n))))
                                                             g8574))
                                                         0
                                                         bs)))
                                                g8573)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g8576
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8577
                                                                     (letrec ((x8578
                                                                               (block-x
                                                                                b)))
                                                                       (min
                                                                        x8578
                                                                        n))))
                                                             g8577))
                                                         board-width
                                                         bs)))
                                                g8576)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g8579
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8580
                                                                     (letrec ((x8581
                                                                               (block-x
                                                                                b)))
                                                                       (max
                                                                        x8581
                                                                        n))))
                                                             g8580))
                                                         0
                                                         bs)))
                                                g8579)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g8582
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g8582)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g8583
                                                        (letrec ((x-cnd8584
                                                                  (< i 0)))
                                                          (if x-cnd8584
                                                            (letrec ((g8585
                                                                      empty))
                                                              g8585)
                                                            (letrec ((x-cnd8586
                                                                      (full-row?
                                                                       bs
                                                                       i)))
                                                              (if x-cnd8586
                                                                (letrec ((g8587
                                                                          (letrec ((x8589
                                                                                    (sub1
                                                                                     i))
                                                                                   (x8588
                                                                                    (add1
                                                                                     offset)))
                                                                            (elim-row
                                                                             bs
                                                                             x8589
                                                                             x8588))))
                                                                  g8587)
                                                                (letrec ((g8590
                                                                          (letrec ((x8593
                                                                                    (letrec ((x8594
                                                                                              (sub1
                                                                                               i)))
                                                                                      (elim-row
                                                                                       bs
                                                                                       x8594
                                                                                       offset)))
                                                                                   (x8591
                                                                                    (letrec ((x8592
                                                                                              (blocks-row
                                                                                               bs
                                                                                               i)))
                                                                                      (blocks-move
                                                                                       0
                                                                                       offset
                                                                                       x8592))))
                                                                            (blocks-union
                                                                             x8593
                                                                             x8591))))
                                                                  g8590)))))))
                                                g8583)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g8595
                                                        (letrec ((x8598
                                                                  (letrec ((x8602
                                                                            (letrec ((x8603
                                                                                      (letrec ((x8604
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x8604))))
                                                                              (+
                                                                               dx
                                                                               x8603)))
                                                                           (x8599
                                                                            (letrec ((x8600
                                                                                      (letrec ((x8601
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x8601))))
                                                                              (+
                                                                               dy
                                                                               x8600))))
                                                                    (posn
                                                                     x8602
                                                                     x8599)))
                                                                 (x8596
                                                                  (letrec ((x8597
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x8597))))
                                                          (tetra
                                                           x8598
                                                           x8596))))
                                                g8595)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g8605
                                                        (letrec ((x8609
                                                                  (tetra-center
                                                                   t))
                                                                 (x8606
                                                                  (letrec ((x8608
                                                                            (tetra-center
                                                                             t))
                                                                           (x8607
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8608
                                                                     x8607))))
                                                          (tetra
                                                           x8609
                                                           x8606))))
                                                g8605)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8610
                                                        (letrec ((x8614
                                                                  (tetra-center
                                                                   t))
                                                                 (x8611
                                                                  (letrec ((x8613
                                                                            (tetra-center
                                                                             t))
                                                                           (x8612
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8613
                                                                     x8612))))
                                                          (tetra
                                                           x8614
                                                           x8611))))
                                                g8610)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8615
                                                        (letrec ((x8616
                                                                  (letrec ((x8617
                                                                            (letrec ((x8618
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8618
                                                                               bs))))
                                                                    (false?
                                                                     x8617))))
                                                          (false? x8616))))
                                                g8615)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8619
                                                        (letrec ((x8622
                                                                  (tetra-center
                                                                   t))
                                                                 (x8620
                                                                  (letrec ((x8621
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8621
                                                                     c))))
                                                          (tetra
                                                           x8622
                                                           x8620))))
                                                g8619)))
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
                                              (letrec ((g8623
                                                        (letrec ((x8624
                                                                  (letrec ((x8630
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8625
                                                                            (letrec ((x8629
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8628
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8627
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8626
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8629
                                                                               x8628
                                                                               x8627
                                                                               x8626))))
                                                                    (tetra
                                                                     x8630
                                                                     x8625))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8624))))
                                                g8623)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8631
                                                        (letrec ((x8637
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8632
                                                                  (letrec ((x8633
                                                                            (letrec ((x8635
                                                                                      (letrec ((x8636
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8636)))
                                                                                     (x8634
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8635
                                                                               x8634))))
                                                                    (eliminate-full-rows
                                                                     x8633))))
                                                          (world
                                                           x8637
                                                           x8632))))
                                                g8631)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8638
                                                        (letrec ((x-cnd8639
                                                                  (landed? w)))
                                                          (if x-cnd8639
                                                            (letrec ((g8640 w))
                                                              g8640)
                                                            (letrec ((g8641
                                                                      (letrec ((x8642
                                                                                (letrec ((x8644
                                                                                          (letrec ((x8645
                                                                                                    (world-tetra
                                                                                                     w)))
                                                                                            (tetra-move
                                                                                             0
                                                                                             1
                                                                                             x8645)))
                                                                                         (x8643
                                                                                          (world-blocks
                                                                                           w)))
                                                                                  (world
                                                                                   x8644
                                                                                   x8643))))
                                                                        (world-jump-down
                                                                         x8642))))
                                                              g8641)))))
                                                g8638)))
                                           (landed-on-blocks?
                                            (lambda (w)
                                              (letrec ((g8646
                                                        (letrec ((x8648
                                                                  (letrec ((x8649
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     0
                                                                     1
                                                                     x8649)))
                                                                 (x8647
                                                                  (world-blocks
                                                                   w)))
                                                          (tetra-overlaps-blocks?
                                                           x8648
                                                           x8647))))
                                                g8646)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8650
                                                        (letrec ((x8652
                                                                  (letrec ((x8653
                                                                            (letrec ((x8654
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8654))))
                                                                    (blocks-max-y
                                                                     x8653)))
                                                                 (x8651
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8652 x8651))))
                                                g8650)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8655
                                                        (letrec ((val7263
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8656
                                                                    (if val7263
                                                                      val7263
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8656))))
                                                g8655)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8657
                                                        (letrec ((x-cnd8658
                                                                  (landed? w)))
                                                          (if x-cnd8658
                                                            (letrec ((g8659
                                                                      (touchdown
                                                                       w
                                                                       tetras)))
                                                              g8659)
                                                            (letrec ((g8660
                                                                      (letrec ((x8662
                                                                                (letrec ((x8663
                                                                                          (world-tetra
                                                                                           w)))
                                                                                  (tetra-move
                                                                                   0
                                                                                   1
                                                                                   x8663)))
                                                                               (x8661
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         x8662
                                                                         x8661))))
                                                              g8660)))))
                                                g8657)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8664
                                                        (letrec ((x-cnd8665
                                                                  (letrec ((val7264
                                                                            (letrec ((x8666
                                                                                      (letrec ((x8667
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-min-x
                                                                                         x8667))))
                                                                              (<
                                                                               x8666
                                                                               0))))
                                                                    (letrec ((g8668
                                                                              (if val7264
                                                                                val7264
                                                                                (letrec ((val7265
                                                                                          (letrec ((x8669
                                                                                                    (letrec ((x8670
                                                                                                              (tetra-blocks
                                                                                                               new-tetra)))
                                                                                                      (blocks-max-x
                                                                                                       x8670))))
                                                                                            (>=
                                                                                             x8669
                                                                                             board-width))))
                                                                                  (letrec ((g8671
                                                                                            (if val7265
                                                                                              val7265
                                                                                              (letrec ((x8672
                                                                                                        (world-blocks
                                                                                                         w)))
                                                                                                (tetra-overlaps-blocks?
                                                                                                 new-tetra
                                                                                                 x8672)))))
                                                                                    g8671)))))
                                                                      g8668))))
                                                          (if x-cnd8665
                                                            (letrec ((g8673 w))
                                                              g8673)
                                                            (letrec ((g8674
                                                                      (letrec ((x8675
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         new-tetra
                                                                         x8675))))
                                                              g8674)))))
                                                g8664)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8676
                                                        (letrec ((x8677
                                                                  (letrec ((x8678
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8678))))
                                                          (try-new-tetra
                                                           w
                                                           x8677))))
                                                g8676)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8679
                                                        (letrec ((x8680
                                                                  (letrec ((x8681
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8681))))
                                                          (try-new-tetra
                                                           w
                                                           x8680))))
                                                g8679)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8682
                                                        (letrec ((x8683
                                                                  (letrec ((x8684
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8684))))
                                                          (try-new-tetra
                                                           w
                                                           x8683))))
                                                g8682)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8685
                                                        (letrec ((x8686
                                                                  (letrec ((x8687
                                                                            (letrec ((x8688
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8688))))
                                                                    (tetra-change-color
                                                                     x8687
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8686))))
                                                g8685)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8689
                                                        (letrec ((x-cnd8690
                                                                  (equal?
                                                                   k
                                                                   "left")))
                                                          (if x-cnd8690
                                                            (letrec ((g8691
                                                                      (world-move
                                                                       neg-1
                                                                       0
                                                                       w)))
                                                              g8691)
                                                            (letrec ((x-cnd8692
                                                                      (equal?
                                                                       k
                                                                       "right")))
                                                              (if x-cnd8692
                                                                (letrec ((g8693
                                                                          (world-move
                                                                           1
                                                                           0
                                                                           w)))
                                                                  g8693)
                                                                (letrec ((x-cnd8694
                                                                          (equal?
                                                                           k
                                                                           "down")))
                                                                  (if x-cnd8694
                                                                    (letrec ((g8695
                                                                              (world-jump-down
                                                                               w)))
                                                                      g8695)
                                                                    (letrec ((x-cnd8696
                                                                              (equal?
                                                                               k
                                                                               "a")))
                                                                      (if x-cnd8696
                                                                        (letrec ((g8697
                                                                                  (world-rotate-ccw
                                                                                   w)))
                                                                          g8697)
                                                                        (letrec ((x-cnd8698
                                                                                  (equal?
                                                                                   k
                                                                                   "s")))
                                                                          (if x-cnd8698
                                                                            (letrec ((g8699
                                                                                      (world-rotate-cw
                                                                                       w)))
                                                                              g8699)
                                                                            (letrec ((g8700
                                                                                      w))
                                                                              g8700)))))))))))))
                                                g8689)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8701
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8701)))
                                           (image?
                                            (lambda (image7779)
                                              (letrec ((g8702
                                                        (letrec ((x8703
                                                                  (car
                                                                   image7779)))
                                                          (eq? x8703 'image))))
                                                g8702)))
                                           (image/c
                                            (lambda (j7431 k7432 v7430)
                                              (letrec ((g8704
                                                        (cons image '())))
                                                g8704)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8705 (image)))
                                                g8705)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8706 (image)))
                                                g8706)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8707 (image)))
                                                g8707)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8708 (image)))
                                                g8708)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8709 (image)))
                                                g8709)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8710
                                                        (letrec ((x-cnd8711
                                                                  (letrec ((x8712
                                                                            (cdr
                                                                             xs)))
                                                                    (null?
                                                                     x8712))))
                                                          (if x-cnd8711
                                                            (letrec ((g8713
                                                                      (car
                                                                       xs)))
                                                              g8713)
                                                            (letrec ((g8714
                                                                      (letrec ((x8715
                                                                                (cdr
                                                                                 xs)))
                                                                        (list-pick-random
                                                                         x8715))))
                                                              g8714)))))
                                                g8710)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8716
                                                        (letrec ((x8720
                                                                  (letrec ((x8721
                                                                            (letrec ((x8725
                                                                                      (letrec ((x8726
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8726)))
                                                                                     (x8722
                                                                                      (letrec ((x8724
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8723
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8724
                                                                                         x8723))))
                                                                              (append
                                                                               x8725
                                                                               x8722))))
                                                                    (blocks->image
                                                                     x8721)))
                                                                 (x8717
                                                                  (letrec ((x8719
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8718
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8719
                                                                     x8718))))
                                                          (place-image
                                                           x8720
                                                           0
                                                           0
                                                           x8717))))
                                                g8716)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8727
                                                        (letrec ((x8728
                                                                  (letrec ((x8731
                                                                            (letrec ((x8732
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8732)))
                                                                           (x8729
                                                                            (letrec ((x8730
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8730))))
                                                                    (empty-scene
                                                                     x8731
                                                                     x8729))))
                                                          (foldr
                                                           (lambda (b img)
                                                             (letrec ((g8733
                                                                       (letrec ((x-cnd8734
                                                                                 (letrec ((x8735
                                                                                           (block-y
                                                                                            b)))
                                                                                   (<=
                                                                                    0
                                                                                    x8735))))
                                                                         (if x-cnd8734
                                                                           (letrec ((g8736
                                                                                     (place-block
                                                                                      b
                                                                                      img)))
                                                                             g8736)
                                                                           (letrec ((g8737
                                                                                     img))
                                                                             g8737)))))
                                                               g8733))
                                                           x8728
                                                           bs))))
                                                g8727)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8738
                                                        (letrec ((x8742
                                                                  (letrec ((x8745
                                                                            (add1
                                                                             block-size))
                                                                           (x8744
                                                                            (add1
                                                                             block-size))
                                                                           (x8743
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8745
                                                                     x8744
                                                                     'solid
                                                                     x8743)))
                                                                 (x8739
                                                                  (letrec ((x8741
                                                                            (add1
                                                                             block-size))
                                                                           (x8740
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8741
                                                                     x8740
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8742
                                                           x8739))))
                                                g8738)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8746
                                                        (letrec ((x8755
                                                                  (block->image
                                                                   b))
                                                                 (x8751
                                                                  (letrec ((x8753
                                                                            (letrec ((x8754
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8754
                                                                               block-size)))
                                                                           (x8752
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8753
                                                                     x8752)))
                                                                 (x8747
                                                                  (letrec ((x8749
                                                                            (letrec ((x8750
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8750
                                                                               block-size)))
                                                                           (x8748
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8749
                                                                     x8748))))
                                                          (place-image
                                                           x8755
                                                           x8751
                                                           x8747
                                                           scene))))
                                                g8746)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8756
                                                        (letrec ((x8757
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8757 null))))
                                                g8756))))
                                    (letrec ((g8758
                                              (parallel
                                               (parallel
                                                (letrec ((x8769
                                                          (letrec ((xj7434
                                                                    (loc
                                                                     'module))
                                                                   (xk7435
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8770
                                                                      ((lambda (j7438
                                                                                k7439
                                                                                f7440)
                                                                         (letrec ((g8771
                                                                                   (lambda (g7436
                                                                                            g7437)
                                                                                     (letrec ((g8772
                                                                                               (letrec ((x8773
                                                                                                         (letrec ((x8775
                                                                                                                   (POSN/C
                                                                                                                    j7438
                                                                                                                    k7439
                                                                                                                    g7436))
                                                                                                                  (x8774
                                                                                                                   (POSN/C
                                                                                                                    j7438
                                                                                                                    k7439
                                                                                                                    g7437)))
                                                                                                           (f7440
                                                                                                            x8775
                                                                                                            x8774))))
                                                                                                 (boolean?/c
                                                                                                  j7438
                                                                                                  k7439
                                                                                                  x8773))))
                                                                                       g8772))))
                                                                           g8771))
                                                                       xj7434
                                                                       xk7435
                                                                       posn=?)))
                                                              g8770)))
                                                         (x8764
                                                          (letrec ((x8765
                                                                    (letrec ((x8768
                                                                              (input))
                                                                             (x8766
                                                                              (letrec ((x8767
                                                                                        (input)))
                                                                                (cons
                                                                                 x8767
                                                                                 '()))))
                                                                      (cons
                                                                       x8768
                                                                       x8766))))
                                                            (cons
                                                             'posn
                                                             x8765)))
                                                         (x8759
                                                          (letrec ((x8760
                                                                    (letrec ((x8763
                                                                              (input))
                                                                             (x8761
                                                                              (letrec ((x8762
                                                                                        (input)))
                                                                                (cons
                                                                                 x8762
                                                                                 '()))))
                                                                      (cons
                                                                       x8763
                                                                       x8761))))
                                                            (cons
                                                             'posn
                                                             x8760))))
                                                  (x8769 x8764 x8759))
                                                (letrec ((xj7441 (loc 'module))
                                                         (xk7442
                                                          (loc 'importer)))
                                                  (letrec ((g8776
                                                            (any/c
                                                             xj7441
                                                             xk7442
                                                             COLOR/C)))
                                                    g8776))
                                                (letrec ((xj7443 (loc 'module))
                                                         (xk7444
                                                          (loc 'importer)))
                                                  (letrec ((g8777
                                                            (any/c
                                                             xj7443
                                                             xk7444
                                                             POSN/C)))
                                                    g8777))
                                                (letrec ((xj7445 (loc 'module))
                                                         (xk7446
                                                          (loc 'importer)))
                                                  (letrec ((g8778
                                                            (any/c
                                                             xj7445
                                                             xk7446
                                                             BLOCK/C)))
                                                    g8778))
                                                (letrec ((xj7447 (loc 'module))
                                                         (xk7448
                                                          (loc 'importer)))
                                                  (letrec ((g8779
                                                            (any/c
                                                             xj7447
                                                             xk7448
                                                             TETRA/C)))
                                                    g8779))
                                                (letrec ((xj7449 (loc 'module))
                                                         (xk7450
                                                          (loc 'importer)))
                                                  (letrec ((g8780
                                                            (any/c
                                                             xj7449
                                                             xk7450
                                                             WORLD/C)))
                                                    g8780))
                                                (letrec ((xj7451 (loc 'module))
                                                         (xk7452
                                                          (loc 'importer)))
                                                  (letrec ((g8781
                                                            (any/c
                                                             xj7451
                                                             xk7452
                                                             BSET/C)))
                                                    g8781))
                                                (letrec ((xj7453 (loc 'module))
                                                         (xk7454
                                                          (loc 'importer)))
                                                  (letrec ((g8782
                                                            (integer?/c
                                                             xj7453
                                                             xk7454
                                                             block-size)))
                                                    g8782))
                                                (letrec ((xj7455 (loc 'module))
                                                         (xk7456
                                                          (loc 'importer)))
                                                  (letrec ((g8783
                                                            (integer?/c
                                                             xj7455
                                                             xk7456
                                                             board-width)))
                                                    g8783))
                                                (letrec ((xj7457 (loc 'module))
                                                         (xk7458
                                                          (loc 'importer)))
                                                  (letrec ((g8784
                                                            (integer?/c
                                                             xj7457
                                                             xk7458
                                                             board-height)))
                                                    g8784))
                                                (letrec ((x8797
                                                          (letrec ((xj7459
                                                                    (loc
                                                                     'module))
                                                                   (xk7460
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8798
                                                                      ((lambda (j7463
                                                                                k7464
                                                                                f7465)
                                                                         (letrec ((g8799
                                                                                   (lambda (g7461
                                                                                            g7462)
                                                                                     (letrec ((g8800
                                                                                               (letrec ((x8801
                                                                                                         (letrec ((x8803
                                                                                                                   (POSN/C
                                                                                                                    j7463
                                                                                                                    k7464
                                                                                                                    g7461))
                                                                                                                  (x8802
                                                                                                                   (BLOCK/C
                                                                                                                    j7463
                                                                                                                    k7464
                                                                                                                    g7462)))
                                                                                                           (f7465
                                                                                                            x8803
                                                                                                            x8802))))
                                                                                                 (BLOCK/C
                                                                                                  j7463
                                                                                                  k7464
                                                                                                  x8801))))
                                                                                       g8800))))
                                                                           g8799))
                                                                       xj7459
                                                                       xk7460
                                                                       block-rotate-ccw)))
                                                              g8798)))
                                                         (x8792
                                                          (letrec ((x8793
                                                                    (letrec ((x8796
                                                                              (input))
                                                                             (x8794
                                                                              (letrec ((x8795
                                                                                        (input)))
                                                                                (cons
                                                                                 x8795
                                                                                 '()))))
                                                                      (cons
                                                                       x8796
                                                                       x8794))))
                                                            (cons
                                                             'posn
                                                             x8793)))
                                                         (x8785
                                                          (letrec ((x8786
                                                                    (letrec ((x8791
                                                                              (input))
                                                                             (x8787
                                                                              (letrec ((x8790
                                                                                        (input))
                                                                                       (x8788
                                                                                        (letrec ((x8789
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8789
                                                                                           '()))))
                                                                                (cons
                                                                                 x8790
                                                                                 x8788))))
                                                                      (cons
                                                                       x8791
                                                                       x8787))))
                                                            (cons
                                                             'block
                                                             x8786))))
                                                  (x8797 x8792 x8785))
                                                (letrec ((x8816
                                                          (letrec ((xj7466
                                                                    (loc
                                                                     'module))
                                                                   (xk7467
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8817
                                                                      ((lambda (j7470
                                                                                k7471
                                                                                f7472)
                                                                         (letrec ((g8818
                                                                                   (lambda (g7468
                                                                                            g7469)
                                                                                     (letrec ((g8819
                                                                                               (letrec ((x8820
                                                                                                         (letrec ((x8822
                                                                                                                   (POSN/C
                                                                                                                    j7470
                                                                                                                    k7471
                                                                                                                    g7468))
                                                                                                                  (x8821
                                                                                                                   (BLOCK/C
                                                                                                                    j7470
                                                                                                                    k7471
                                                                                                                    g7469)))
                                                                                                           (f7472
                                                                                                            x8822
                                                                                                            x8821))))
                                                                                                 (BLOCK/C
                                                                                                  j7470
                                                                                                  k7471
                                                                                                  x8820))))
                                                                                       g8819))))
                                                                           g8818))
                                                                       xj7466
                                                                       xk7467
                                                                       block-rotate-cw)))
                                                              g8817)))
                                                         (x8811
                                                          (letrec ((x8812
                                                                    (letrec ((x8815
                                                                              (input))
                                                                             (x8813
                                                                              (letrec ((x8814
                                                                                        (input)))
                                                                                (cons
                                                                                 x8814
                                                                                 '()))))
                                                                      (cons
                                                                       x8815
                                                                       x8813))))
                                                            (cons
                                                             'posn
                                                             x8812)))
                                                         (x8804
                                                          (letrec ((x8805
                                                                    (letrec ((x8810
                                                                              (input))
                                                                             (x8806
                                                                              (letrec ((x8809
                                                                                        (input))
                                                                                       (x8807
                                                                                        (letrec ((x8808
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8808
                                                                                           '()))))
                                                                                (cons
                                                                                 x8809
                                                                                 x8807))))
                                                                      (cons
                                                                       x8810
                                                                       x8806))))
                                                            (cons
                                                             'block
                                                             x8805))))
                                                  (x8816 x8811 x8804))
                                                (letrec ((x8837
                                                          (letrec ((xj7473
                                                                    (loc
                                                                     'module))
                                                                   (xk7474
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8838
                                                                      ((lambda (j7477
                                                                                k7478
                                                                                f7479)
                                                                         (letrec ((g8839
                                                                                   (lambda (g7475
                                                                                            g7476)
                                                                                     (letrec ((g8840
                                                                                               (letrec ((x8841
                                                                                                         (letrec ((x8843
                                                                                                                   (BLOCK/C
                                                                                                                    j7477
                                                                                                                    k7478
                                                                                                                    g7475))
                                                                                                                  (x8842
                                                                                                                   (BLOCK/C
                                                                                                                    j7477
                                                                                                                    k7478
                                                                                                                    g7476)))
                                                                                                           (f7479
                                                                                                            x8843
                                                                                                            x8842))))
                                                                                                 (boolean?/c
                                                                                                  j7477
                                                                                                  k7478
                                                                                                  x8841))))
                                                                                       g8840))))
                                                                           g8839))
                                                                       xj7473
                                                                       xk7474
                                                                       block=?)))
                                                              g8838)))
                                                         (x8830
                                                          (letrec ((x8831
                                                                    (letrec ((x8836
                                                                              (input))
                                                                             (x8832
                                                                              (letrec ((x8835
                                                                                        (input))
                                                                                       (x8833
                                                                                        (letrec ((x8834
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8834
                                                                                           '()))))
                                                                                (cons
                                                                                 x8835
                                                                                 x8833))))
                                                                      (cons
                                                                       x8836
                                                                       x8832))))
                                                            (cons
                                                             'block
                                                             x8831)))
                                                         (x8823
                                                          (letrec ((x8824
                                                                    (letrec ((x8829
                                                                              (input))
                                                                             (x8825
                                                                              (letrec ((x8828
                                                                                        (input))
                                                                                       (x8826
                                                                                        (letrec ((x8827
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8827
                                                                                           '()))))
                                                                                (cons
                                                                                 x8828
                                                                                 x8826))))
                                                                      (cons
                                                                       x8829
                                                                       x8825))))
                                                            (cons
                                                             'block
                                                             x8824))))
                                                  (x8837 x8830 x8823))
                                                (letrec ((x8853
                                                          (letrec ((xj7480
                                                                    (loc
                                                                     'module))
                                                                   (xk7481
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8854
                                                                      ((lambda (j7485
                                                                                k7486
                                                                                f7487)
                                                                         (letrec ((g8855
                                                                                   (lambda (g7482
                                                                                            g7483
                                                                                            g7484)
                                                                                     (letrec ((g8856
                                                                                               (letrec ((x8857
                                                                                                         (letrec ((x8860
                                                                                                                   (real?/c
                                                                                                                    j7485
                                                                                                                    k7486
                                                                                                                    g7482))
                                                                                                                  (x8859
                                                                                                                   (real?/c
                                                                                                                    j7485
                                                                                                                    k7486
                                                                                                                    g7483))
                                                                                                                  (x8858
                                                                                                                   (BLOCK/C
                                                                                                                    j7485
                                                                                                                    k7486
                                                                                                                    g7484)))
                                                                                                           (f7487
                                                                                                            x8860
                                                                                                            x8859
                                                                                                            x8858))))
                                                                                                 (BLOCK/C
                                                                                                  j7485
                                                                                                  k7486
                                                                                                  x8857))))
                                                                                       g8856))))
                                                                           g8855))
                                                                       xj7480
                                                                       xk7481
                                                                       block-move)))
                                                              g8854)))
                                                         (x8852 (input))
                                                         (x8851 (input))
                                                         (x8844
                                                          (letrec ((x8845
                                                                    (letrec ((x8850
                                                                              (input))
                                                                             (x8846
                                                                              (letrec ((x8849
                                                                                        (input))
                                                                                       (x8847
                                                                                        (letrec ((x8848
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8848
                                                                                           '()))))
                                                                                (cons
                                                                                 x8849
                                                                                 x8847))))
                                                                      (cons
                                                                       x8850
                                                                       x8846))))
                                                            (cons
                                                             'block
                                                             x8845))))
                                                  (x8853 x8852 x8851 x8844))
                                                (letrec ((x8869
                                                          (letrec ((xj7488
                                                                    (loc
                                                                     'module))
                                                                   (xk7489
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8870
                                                                      ((lambda (j7492
                                                                                k7493
                                                                                f7494)
                                                                         (letrec ((g8871
                                                                                   (lambda (g7490
                                                                                            g7491)
                                                                                     (letrec ((g8872
                                                                                               (letrec ((x8873
                                                                                                         (letrec ((x8875
                                                                                                                   (BSET/C
                                                                                                                    j7492
                                                                                                                    k7493
                                                                                                                    g7490))
                                                                                                                  (x8874
                                                                                                                   (BLOCK/C
                                                                                                                    j7492
                                                                                                                    k7493
                                                                                                                    g7491)))
                                                                                                           (f7494
                                                                                                            x8875
                                                                                                            x8874))))
                                                                                                 (boolean?/c
                                                                                                  j7492
                                                                                                  k7493
                                                                                                  x8873))))
                                                                                       g8872))))
                                                                           g8871))
                                                                       xj7488
                                                                       xk7489
                                                                       blocks-contains?)))
                                                              g8870)))
                                                         (x8868 (input))
                                                         (x8861
                                                          (letrec ((x8862
                                                                    (letrec ((x8867
                                                                              (input))
                                                                             (x8863
                                                                              (letrec ((x8866
                                                                                        (input))
                                                                                       (x8864
                                                                                        (letrec ((x8865
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8865
                                                                                           '()))))
                                                                                (cons
                                                                                 x8866
                                                                                 x8864))))
                                                                      (cons
                                                                       x8867
                                                                       x8863))))
                                                            (cons
                                                             'block
                                                             x8862))))
                                                  (x8869 x8868 x8861))
                                                (letrec ((x8878
                                                          (letrec ((xj7495
                                                                    (loc
                                                                     'module))
                                                                   (xk7496
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8879
                                                                      ((lambda (j7499
                                                                                k7500
                                                                                f7501)
                                                                         (letrec ((g8880
                                                                                   (lambda (g7497
                                                                                            g7498)
                                                                                     (letrec ((g8881
                                                                                               (letrec ((x8882
                                                                                                         (letrec ((x8884
                                                                                                                   (BSET/C
                                                                                                                    j7499
                                                                                                                    k7500
                                                                                                                    g7497))
                                                                                                                  (x8883
                                                                                                                   (BSET/C
                                                                                                                    j7499
                                                                                                                    k7500
                                                                                                                    g7498)))
                                                                                                           (f7501
                                                                                                            x8884
                                                                                                            x8883))))
                                                                                                 (boolean?/c
                                                                                                  j7499
                                                                                                  k7500
                                                                                                  x8882))))
                                                                                       g8881))))
                                                                           g8880))
                                                                       xj7495
                                                                       xk7496
                                                                       blocks=?)))
                                                              g8879)))
                                                         (x8877 (input))
                                                         (x8876 (input)))
                                                  (x8878 x8877 x8876))
                                                (letrec ((x8887
                                                          (letrec ((xj7502
                                                                    (loc
                                                                     'module))
                                                                   (xk7503
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8888
                                                                      ((lambda (j7506
                                                                                k7507
                                                                                f7508)
                                                                         (letrec ((g8889
                                                                                   (lambda (g7504
                                                                                            g7505)
                                                                                     (letrec ((g8890
                                                                                               (letrec ((x8891
                                                                                                         (letrec ((x8893
                                                                                                                   (BSET/C
                                                                                                                    j7506
                                                                                                                    k7507
                                                                                                                    g7504))
                                                                                                                  (x8892
                                                                                                                   (BSET/C
                                                                                                                    j7506
                                                                                                                    k7507
                                                                                                                    g7505)))
                                                                                                           (f7508
                                                                                                            x8893
                                                                                                            x8892))))
                                                                                                 (boolean?/c
                                                                                                  j7506
                                                                                                  k7507
                                                                                                  x8891))))
                                                                                       g8890))))
                                                                           g8889))
                                                                       xj7502
                                                                       xk7503
                                                                       blocks-subset?)))
                                                              g8888)))
                                                         (x8886 (input))
                                                         (x8885 (input)))
                                                  (x8887 x8886 x8885))
                                                (letrec ((x8896
                                                          (letrec ((xj7509
                                                                    (loc
                                                                     'module))
                                                                   (xk7510
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8897
                                                                      ((lambda (j7513
                                                                                k7514
                                                                                f7515)
                                                                         (letrec ((g8898
                                                                                   (lambda (g7511
                                                                                            g7512)
                                                                                     (letrec ((g8899
                                                                                               (letrec ((x8900
                                                                                                         (letrec ((x8902
                                                                                                                   (BSET/C
                                                                                                                    j7513
                                                                                                                    k7514
                                                                                                                    g7511))
                                                                                                                  (x8901
                                                                                                                   (BSET/C
                                                                                                                    j7513
                                                                                                                    k7514
                                                                                                                    g7512)))
                                                                                                           (f7515
                                                                                                            x8902
                                                                                                            x8901))))
                                                                                                 (BSET/C
                                                                                                  j7513
                                                                                                  k7514
                                                                                                  x8900))))
                                                                                       g8899))))
                                                                           g8898))
                                                                       xj7509
                                                                       xk7510
                                                                       blocks-intersect)))
                                                              g8897)))
                                                         (x8895 (input))
                                                         (x8894 (input)))
                                                  (x8896 x8895 x8894))
                                                (letrec ((x8904
                                                          (letrec ((xj7516
                                                                    (loc
                                                                     'module))
                                                                   (xk7517
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8905
                                                                      ((lambda (j7519
                                                                                k7520
                                                                                f7521)
                                                                         (letrec ((g8906
                                                                                   (lambda (g7518)
                                                                                     (letrec ((g8907
                                                                                               (letrec ((x8908
                                                                                                         (letrec ((x8909
                                                                                                                   (BSET/C
                                                                                                                    j7519
                                                                                                                    k7520
                                                                                                                    g7518)))
                                                                                                           (f7521
                                                                                                            x8909))))
                                                                                                 (real?/c
                                                                                                  j7519
                                                                                                  k7520
                                                                                                  x8908))))
                                                                                       g8907))))
                                                                           g8906))
                                                                       xj7516
                                                                       xk7517
                                                                       blocks-count)))
                                                              g8905)))
                                                         (x8903 (input)))
                                                  (x8904 x8903))
                                                (letrec ((x8911
                                                          (letrec ((xj7522
                                                                    (loc
                                                                     'module))
                                                                   (xk7523
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8912
                                                                      ((lambda (j7525
                                                                                k7526
                                                                                f7527)
                                                                         (letrec ((g8913
                                                                                   (lambda (g7524)
                                                                                     (letrec ((g8914
                                                                                               (letrec ((x8915
                                                                                                         (letrec ((x8916
                                                                                                                   (BSET/C
                                                                                                                    j7525
                                                                                                                    k7526
                                                                                                                    g7524)))
                                                                                                           (f7527
                                                                                                            x8916))))
                                                                                                 (boolean?/c
                                                                                                  j7525
                                                                                                  k7526
                                                                                                  x8915))))
                                                                                       g8914))))
                                                                           g8913))
                                                                       xj7522
                                                                       xk7523
                                                                       blocks-overflow?)))
                                                              g8912)))
                                                         (x8910 (input)))
                                                  (x8911 x8910))
                                                (letrec ((x8920
                                                          (letrec ((xj7528
                                                                    (loc
                                                                     'module))
                                                                   (xk7529
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8921
                                                                      ((lambda (j7533
                                                                                k7534
                                                                                f7535)
                                                                         (letrec ((g8922
                                                                                   (lambda (g7530
                                                                                            g7531
                                                                                            g7532)
                                                                                     (letrec ((g8923
                                                                                               (letrec ((x8924
                                                                                                         (letrec ((x8927
                                                                                                                   (real?/c
                                                                                                                    j7533
                                                                                                                    k7534
                                                                                                                    g7530))
                                                                                                                  (x8926
                                                                                                                   (real?/c
                                                                                                                    j7533
                                                                                                                    k7534
                                                                                                                    g7531))
                                                                                                                  (x8925
                                                                                                                   (BSET/C
                                                                                                                    j7533
                                                                                                                    k7534
                                                                                                                    g7532)))
                                                                                                           (f7535
                                                                                                            x8927
                                                                                                            x8926
                                                                                                            x8925))))
                                                                                                 (BSET/C
                                                                                                  j7533
                                                                                                  k7534
                                                                                                  x8924))))
                                                                                       g8923))))
                                                                           g8922))
                                                                       xj7528
                                                                       xk7529
                                                                       blocks-move)))
                                                              g8921)))
                                                         (x8919 (input))
                                                         (x8918 (input))
                                                         (x8917 (input)))
                                                  (x8920 x8919 x8918 x8917))
                                                (letrec ((x8934
                                                          (letrec ((xj7536
                                                                    (loc
                                                                     'module))
                                                                   (xk7537
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8935
                                                                      ((lambda (j7540
                                                                                k7541
                                                                                f7542)
                                                                         (letrec ((g8936
                                                                                   (lambda (g7538
                                                                                            g7539)
                                                                                     (letrec ((g8937
                                                                                               (letrec ((x8938
                                                                                                         (letrec ((x8940
                                                                                                                   (POSN/C
                                                                                                                    j7540
                                                                                                                    k7541
                                                                                                                    g7538))
                                                                                                                  (x8939
                                                                                                                   (BSET/C
                                                                                                                    j7540
                                                                                                                    k7541
                                                                                                                    g7539)))
                                                                                                           (f7542
                                                                                                            x8940
                                                                                                            x8939))))
                                                                                                 (BSET/C
                                                                                                  j7540
                                                                                                  k7541
                                                                                                  x8938))))
                                                                                       g8937))))
                                                                           g8936))
                                                                       xj7536
                                                                       xk7537
                                                                       blocks-rotate-cw)))
                                                              g8935)))
                                                         (x8929
                                                          (letrec ((x8930
                                                                    (letrec ((x8933
                                                                              (input))
                                                                             (x8931
                                                                              (letrec ((x8932
                                                                                        (input)))
                                                                                (cons
                                                                                 x8932
                                                                                 '()))))
                                                                      (cons
                                                                       x8933
                                                                       x8931))))
                                                            (cons
                                                             'posn
                                                             x8930)))
                                                         (x8928 (input)))
                                                  (x8934 x8929 x8928))
                                                (letrec ((x8947
                                                          (letrec ((xj7543
                                                                    (loc
                                                                     'module))
                                                                   (xk7544
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8948
                                                                      ((lambda (j7547
                                                                                k7548
                                                                                f7549)
                                                                         (letrec ((g8949
                                                                                   (lambda (g7545
                                                                                            g7546)
                                                                                     (letrec ((g8950
                                                                                               (letrec ((x8951
                                                                                                         (letrec ((x8953
                                                                                                                   (POSN/C
                                                                                                                    j7547
                                                                                                                    k7548
                                                                                                                    g7545))
                                                                                                                  (x8952
                                                                                                                   (BSET/C
                                                                                                                    j7547
                                                                                                                    k7548
                                                                                                                    g7546)))
                                                                                                           (f7549
                                                                                                            x8953
                                                                                                            x8952))))
                                                                                                 (BSET/C
                                                                                                  j7547
                                                                                                  k7548
                                                                                                  x8951))))
                                                                                       g8950))))
                                                                           g8949))
                                                                       xj7543
                                                                       xk7544
                                                                       blocks-rotate-ccw)))
                                                              g8948)))
                                                         (x8942
                                                          (letrec ((x8943
                                                                    (letrec ((x8946
                                                                              (input))
                                                                             (x8944
                                                                              (letrec ((x8945
                                                                                        (input)))
                                                                                (cons
                                                                                 x8945
                                                                                 '()))))
                                                                      (cons
                                                                       x8946
                                                                       x8944))))
                                                            (cons
                                                             'posn
                                                             x8943)))
                                                         (x8941 (input)))
                                                  (x8947 x8942 x8941))
                                                (letrec ((x8956
                                                          (letrec ((xj7550
                                                                    (loc
                                                                     'module))
                                                                   (xk7551
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8957
                                                                      ((lambda (j7554
                                                                                k7555
                                                                                f7556)
                                                                         (letrec ((g8958
                                                                                   (lambda (g7552
                                                                                            g7553)
                                                                                     (letrec ((g8959
                                                                                               (letrec ((x8960
                                                                                                         (letrec ((x8962
                                                                                                                   (BSET/C
                                                                                                                    j7554
                                                                                                                    k7555
                                                                                                                    g7552))
                                                                                                                  (x8961
                                                                                                                   (COLOR/C
                                                                                                                    j7554
                                                                                                                    k7555
                                                                                                                    g7553)))
                                                                                                           (f7556
                                                                                                            x8962
                                                                                                            x8961))))
                                                                                                 (BSET/C
                                                                                                  j7554
                                                                                                  k7555
                                                                                                  x8960))))
                                                                                       g8959))))
                                                                           g8958))
                                                                       xj7550
                                                                       xk7551
                                                                       blocks-change-color)))
                                                              g8957)))
                                                         (x8955 (input))
                                                         (x8954 (input)))
                                                  (x8956 x8955 x8954))
                                                (letrec ((x8965
                                                          (letrec ((xj7557
                                                                    (loc
                                                                     'module))
                                                                   (xk7558
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8966
                                                                      ((lambda (j7561
                                                                                k7562
                                                                                f7563)
                                                                         (letrec ((g8967
                                                                                   (lambda (g7559
                                                                                            g7560)
                                                                                     (letrec ((g8968
                                                                                               (letrec ((x8969
                                                                                                         (letrec ((x8971
                                                                                                                   (BSET/C
                                                                                                                    j7561
                                                                                                                    k7562
                                                                                                                    g7559))
                                                                                                                  (x8970
                                                                                                                   (real?/c
                                                                                                                    j7561
                                                                                                                    k7562
                                                                                                                    g7560)))
                                                                                                           (f7563
                                                                                                            x8971
                                                                                                            x8970))))
                                                                                                 (BSET/C
                                                                                                  j7561
                                                                                                  k7562
                                                                                                  x8969))))
                                                                                       g8968))))
                                                                           g8967))
                                                                       xj7557
                                                                       xk7558
                                                                       blocks-row)))
                                                              g8966)))
                                                         (x8964 (input))
                                                         (x8963 (input)))
                                                  (x8965 x8964 x8963))
                                                (letrec ((x8974
                                                          (letrec ((xj7564
                                                                    (loc
                                                                     'module))
                                                                   (xk7565
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8975
                                                                      ((lambda (j7568
                                                                                k7569
                                                                                f7570)
                                                                         (letrec ((g8976
                                                                                   (lambda (g7566
                                                                                            g7567)
                                                                                     (letrec ((g8977
                                                                                               (letrec ((x8978
                                                                                                         (letrec ((x8980
                                                                                                                   (BSET/C
                                                                                                                    j7568
                                                                                                                    k7569
                                                                                                                    g7566))
                                                                                                                  (x8979
                                                                                                                   (real?/c
                                                                                                                    j7568
                                                                                                                    k7569
                                                                                                                    g7567)))
                                                                                                           (f7570
                                                                                                            x8980
                                                                                                            x8979))))
                                                                                                 (boolean?/c
                                                                                                  j7568
                                                                                                  k7569
                                                                                                  x8978))))
                                                                                       g8977))))
                                                                           g8976))
                                                                       xj7564
                                                                       xk7565
                                                                       full-row?)))
                                                              g8975)))
                                                         (x8973 (input))
                                                         (x8972 (input)))
                                                  (x8974 x8973 x8972))
                                                (letrec ((x8983
                                                          (letrec ((xj7571
                                                                    (loc
                                                                     'module))
                                                                   (xk7572
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8984
                                                                      ((lambda (j7575
                                                                                k7576
                                                                                f7577)
                                                                         (letrec ((g8985
                                                                                   (lambda (g7573
                                                                                            g7574)
                                                                                     (letrec ((g8986
                                                                                               (letrec ((x8987
                                                                                                         (letrec ((x8989
                                                                                                                   (BSET/C
                                                                                                                    j7575
                                                                                                                    k7576
                                                                                                                    g7573))
                                                                                                                  (x8988
                                                                                                                   (BSET/C
                                                                                                                    j7575
                                                                                                                    k7576
                                                                                                                    g7574)))
                                                                                                           (f7577
                                                                                                            x8989
                                                                                                            x8988))))
                                                                                                 (BSET/C
                                                                                                  j7575
                                                                                                  k7576
                                                                                                  x8987))))
                                                                                       g8986))))
                                                                           g8985))
                                                                       xj7571
                                                                       xk7572
                                                                       blocks-union)))
                                                              g8984)))
                                                         (x8982 (input))
                                                         (x8981 (input)))
                                                  (x8983 x8982 x8981))
                                                (letrec ((x8991
                                                          (letrec ((xj7578
                                                                    (loc
                                                                     'module))
                                                                   (xk7579
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8992
                                                                      ((lambda (j7581
                                                                                k7582
                                                                                f7583)
                                                                         (letrec ((g8993
                                                                                   (lambda (g7580)
                                                                                     (letrec ((g8994
                                                                                               (letrec ((x8995
                                                                                                         (letrec ((x8996
                                                                                                                   (BSET/C
                                                                                                                    j7581
                                                                                                                    k7582
                                                                                                                    g7580)))
                                                                                                           (f7583
                                                                                                            x8996))))
                                                                                                 (real?/c
                                                                                                  j7581
                                                                                                  k7582
                                                                                                  x8995))))
                                                                                       g8994))))
                                                                           g8993))
                                                                       xj7578
                                                                       xk7579
                                                                       blocks-max-x)))
                                                              g8992)))
                                                         (x8990 (input)))
                                                  (x8991 x8990))
                                                (letrec ((x8998
                                                          (letrec ((xj7584
                                                                    (loc
                                                                     'module))
                                                                   (xk7585
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8999
                                                                      ((lambda (j7587
                                                                                k7588
                                                                                f7589)
                                                                         (letrec ((g9000
                                                                                   (lambda (g7586)
                                                                                     (letrec ((g9001
                                                                                               (letrec ((x9002
                                                                                                         (letrec ((x9003
                                                                                                                   (BSET/C
                                                                                                                    j7587
                                                                                                                    k7588
                                                                                                                    g7586)))
                                                                                                           (f7589
                                                                                                            x9003))))
                                                                                                 (real?/c
                                                                                                  j7587
                                                                                                  k7588
                                                                                                  x9002))))
                                                                                       g9001))))
                                                                           g9000))
                                                                       xj7584
                                                                       xk7585
                                                                       blocks-min-x)))
                                                              g8999)))
                                                         (x8997 (input)))
                                                  (x8998 x8997))
                                                (letrec ((x9005
                                                          (letrec ((xj7590
                                                                    (loc
                                                                     'module))
                                                                   (xk7591
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9006
                                                                      ((lambda (j7593
                                                                                k7594
                                                                                f7595)
                                                                         (letrec ((g9007
                                                                                   (lambda (g7592)
                                                                                     (letrec ((g9008
                                                                                               (letrec ((x9009
                                                                                                         (letrec ((x9010
                                                                                                                   (BSET/C
                                                                                                                    j7593
                                                                                                                    k7594
                                                                                                                    g7592)))
                                                                                                           (f7595
                                                                                                            x9010))))
                                                                                                 (real?/c
                                                                                                  j7593
                                                                                                  k7594
                                                                                                  x9009))))
                                                                                       g9008))))
                                                                           g9007))
                                                                       xj7590
                                                                       xk7591
                                                                       blocks-max-y)))
                                                              g9006)))
                                                         (x9004 (input)))
                                                  (x9005 x9004))
                                                (letrec ((x9012
                                                          (letrec ((xj7596
                                                                    (loc
                                                                     'module))
                                                                   (xk7597
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9013
                                                                      ((lambda (j7599
                                                                                k7600
                                                                                f7601)
                                                                         (letrec ((g9014
                                                                                   (lambda (g7598)
                                                                                     (letrec ((g9015
                                                                                               (letrec ((x9016
                                                                                                         (letrec ((x9017
                                                                                                                   (BSET/C
                                                                                                                    j7599
                                                                                                                    k7600
                                                                                                                    g7598)))
                                                                                                           (f7601
                                                                                                            x9017))))
                                                                                                 (BSET/C
                                                                                                  j7599
                                                                                                  k7600
                                                                                                  x9016))))
                                                                                       g9015))))
                                                                           g9014))
                                                                       xj7596
                                                                       xk7597
                                                                       eliminate-full-rows)))
                                                              g9013)))
                                                         (x9011 (input)))
                                                  (x9012 x9011))
                                                (letrec ((x9029
                                                          (letrec ((xj7602
                                                                    (loc
                                                                     'module))
                                                                   (xk7603
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9030
                                                                      ((lambda (j7607
                                                                                k7608
                                                                                f7609)
                                                                         (letrec ((g9031
                                                                                   (lambda (g7604
                                                                                            g7605
                                                                                            g7606)
                                                                                     (letrec ((g9032
                                                                                               (letrec ((x9033
                                                                                                         (letrec ((x9036
                                                                                                                   (integer?/c
                                                                                                                    j7607
                                                                                                                    k7608
                                                                                                                    g7604))
                                                                                                                  (x9035
                                                                                                                   (integer?/c
                                                                                                                    j7607
                                                                                                                    k7608
                                                                                                                    g7605))
                                                                                                                  (x9034
                                                                                                                   (TETRA/C
                                                                                                                    j7607
                                                                                                                    k7608
                                                                                                                    g7606)))
                                                                                                           (f7609
                                                                                                            x9036
                                                                                                            x9035
                                                                                                            x9034))))
                                                                                                 (TETRA/C
                                                                                                  j7607
                                                                                                  k7608
                                                                                                  x9033))))
                                                                                       g9032))))
                                                                           g9031))
                                                                       xj7602
                                                                       xk7603
                                                                       tetra-move)))
                                                              g9030)))
                                                         (x9028 (input))
                                                         (x9027 (input))
                                                         (x9018
                                                          (letrec ((x9019
                                                                    (letrec ((x9022
                                                                              (letrec ((x9023
                                                                                        (letrec ((x9026
                                                                                                  (input))
                                                                                                 (x9024
                                                                                                  (letrec ((x9025
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9025
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9026
                                                                                           x9024))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9023)))
                                                                             (x9020
                                                                              (letrec ((x9021
                                                                                        (input)))
                                                                                (cons
                                                                                 x9021
                                                                                 '()))))
                                                                      (cons
                                                                       x9022
                                                                       x9020))))
                                                            (cons
                                                             'tetra
                                                             x9019))))
                                                  (x9029 x9028 x9027 x9018))
                                                (letrec ((x9046
                                                          (letrec ((xj7610
                                                                    (loc
                                                                     'module))
                                                                   (xk7611
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9047
                                                                      ((lambda (j7613
                                                                                k7614
                                                                                f7615)
                                                                         (letrec ((g9048
                                                                                   (lambda (g7612)
                                                                                     (letrec ((g9049
                                                                                               (letrec ((x9050
                                                                                                         (letrec ((x9051
                                                                                                                   (TETRA/C
                                                                                                                    j7613
                                                                                                                    k7614
                                                                                                                    g7612)))
                                                                                                           (f7615
                                                                                                            x9051))))
                                                                                                 (TETRA/C
                                                                                                  j7613
                                                                                                  k7614
                                                                                                  x9050))))
                                                                                       g9049))))
                                                                           g9048))
                                                                       xj7610
                                                                       xk7611
                                                                       tetra-rotate-ccw)))
                                                              g9047)))
                                                         (x9037
                                                          (letrec ((x9038
                                                                    (letrec ((x9041
                                                                              (letrec ((x9042
                                                                                        (letrec ((x9045
                                                                                                  (input))
                                                                                                 (x9043
                                                                                                  (letrec ((x9044
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9044
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9045
                                                                                           x9043))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9042)))
                                                                             (x9039
                                                                              (letrec ((x9040
                                                                                        (input)))
                                                                                (cons
                                                                                 x9040
                                                                                 '()))))
                                                                      (cons
                                                                       x9041
                                                                       x9039))))
                                                            (cons
                                                             'tetra
                                                             x9038))))
                                                  (x9046 x9037))
                                                (letrec ((x9061
                                                          (letrec ((xj7616
                                                                    (loc
                                                                     'module))
                                                                   (xk7617
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9062
                                                                      ((lambda (j7619
                                                                                k7620
                                                                                f7621)
                                                                         (letrec ((g9063
                                                                                   (lambda (g7618)
                                                                                     (letrec ((g9064
                                                                                               (letrec ((x9065
                                                                                                         (letrec ((x9066
                                                                                                                   (TETRA/C
                                                                                                                    j7619
                                                                                                                    k7620
                                                                                                                    g7618)))
                                                                                                           (f7621
                                                                                                            x9066))))
                                                                                                 (TETRA/C
                                                                                                  j7619
                                                                                                  k7620
                                                                                                  x9065))))
                                                                                       g9064))))
                                                                           g9063))
                                                                       xj7616
                                                                       xk7617
                                                                       tetra-rotate-cw)))
                                                              g9062)))
                                                         (x9052
                                                          (letrec ((x9053
                                                                    (letrec ((x9056
                                                                              (letrec ((x9057
                                                                                        (letrec ((x9060
                                                                                                  (input))
                                                                                                 (x9058
                                                                                                  (letrec ((x9059
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9059
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9060
                                                                                           x9058))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9057)))
                                                                             (x9054
                                                                              (letrec ((x9055
                                                                                        (input)))
                                                                                (cons
                                                                                 x9055
                                                                                 '()))))
                                                                      (cons
                                                                       x9056
                                                                       x9054))))
                                                            (cons
                                                             'tetra
                                                             x9053))))
                                                  (x9061 x9052))
                                                (letrec ((x9077
                                                          (letrec ((xj7622
                                                                    (loc
                                                                     'module))
                                                                   (xk7623
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9078
                                                                      ((lambda (j7626
                                                                                k7627
                                                                                f7628)
                                                                         (letrec ((g9079
                                                                                   (lambda (g7624
                                                                                            g7625)
                                                                                     (letrec ((g9080
                                                                                               (letrec ((x9081
                                                                                                         (letrec ((x9083
                                                                                                                   (TETRA/C
                                                                                                                    j7626
                                                                                                                    k7627
                                                                                                                    g7624))
                                                                                                                  (x9082
                                                                                                                   (BSET/C
                                                                                                                    j7626
                                                                                                                    k7627
                                                                                                                    g7625)))
                                                                                                           (f7628
                                                                                                            x9083
                                                                                                            x9082))))
                                                                                                 (boolean?/c
                                                                                                  j7626
                                                                                                  k7627
                                                                                                  x9081))))
                                                                                       g9080))))
                                                                           g9079))
                                                                       xj7622
                                                                       xk7623
                                                                       tetra-overlaps-blocks?)))
                                                              g9078)))
                                                         (x9068
                                                          (letrec ((x9069
                                                                    (letrec ((x9072
                                                                              (letrec ((x9073
                                                                                        (letrec ((x9076
                                                                                                  (input))
                                                                                                 (x9074
                                                                                                  (letrec ((x9075
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9075
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9076
                                                                                           x9074))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9073)))
                                                                             (x9070
                                                                              (letrec ((x9071
                                                                                        (input)))
                                                                                (cons
                                                                                 x9071
                                                                                 '()))))
                                                                      (cons
                                                                       x9072
                                                                       x9070))))
                                                            (cons
                                                             'tetra
                                                             x9069)))
                                                         (x9067 (input)))
                                                  (x9077 x9068 x9067))
                                                (letrec ((x9095
                                                          (letrec ((xj7629
                                                                    (loc
                                                                     'module))
                                                                   (xk7630
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9096
                                                                      ((lambda (j7642
                                                                                k7643
                                                                                f7644)
                                                                         (letrec ((g9097
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
                                                                                     (letrec ((g9098
                                                                                               (letrec ((x9099
                                                                                                         (letrec ((x9110
                                                                                                                   (COLOR/C
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7631))
                                                                                                                  (x9109
                                                                                                                   (real?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7632))
                                                                                                                  (x9108
                                                                                                                   (real?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7633))
                                                                                                                  (x9107
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7634))
                                                                                                                  (x9106
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7635))
                                                                                                                  (x9105
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7636))
                                                                                                                  (x9104
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7637))
                                                                                                                  (x9103
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7638))
                                                                                                                  (x9102
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7639))
                                                                                                                  (x9101
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7640))
                                                                                                                  (x9100
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7641)))
                                                                                                           (f7644
                                                                                                            x9110
                                                                                                            x9109
                                                                                                            x9108
                                                                                                            x9107
                                                                                                            x9106
                                                                                                            x9105
                                                                                                            x9104
                                                                                                            x9103
                                                                                                            x9102
                                                                                                            x9101
                                                                                                            x9100))))
                                                                                                 (TETRA/C
                                                                                                  j7642
                                                                                                  k7643
                                                                                                  x9099))))
                                                                                       g9098))))
                                                                           g9097))
                                                                       xj7629
                                                                       xk7630
                                                                       build-tetra-blocks)))
                                                              g9096)))
                                                         (x9094 (input))
                                                         (x9093 (input))
                                                         (x9092 (input))
                                                         (x9091 (input))
                                                         (x9090 (input))
                                                         (x9089 (input))
                                                         (x9088 (input))
                                                         (x9087 (input))
                                                         (x9086 (input))
                                                         (x9085 (input))
                                                         (x9084 (input)))
                                                  (x9095
                                                   x9094
                                                   x9093
                                                   x9092
                                                   x9091
                                                   x9090
                                                   x9089
                                                   x9088
                                                   x9087
                                                   x9086
                                                   x9085
                                                   x9084))
                                                (letrec ((x9121
                                                          (letrec ((xj7645
                                                                    (loc
                                                                     'module))
                                                                   (xk7646
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9122
                                                                      ((lambda (j7649
                                                                                k7650
                                                                                f7651)
                                                                         (letrec ((g9123
                                                                                   (lambda (g7647
                                                                                            g7648)
                                                                                     (letrec ((g9124
                                                                                               (letrec ((x9125
                                                                                                         (letrec ((x9127
                                                                                                                   (TETRA/C
                                                                                                                    j7649
                                                                                                                    k7650
                                                                                                                    g7647))
                                                                                                                  (x9126
                                                                                                                   (COLOR/C
                                                                                                                    j7649
                                                                                                                    k7650
                                                                                                                    g7648)))
                                                                                                           (f7651
                                                                                                            x9127
                                                                                                            x9126))))
                                                                                                 (TETRA/C
                                                                                                  j7649
                                                                                                  k7650
                                                                                                  x9125))))
                                                                                       g9124))))
                                                                           g9123))
                                                                       xj7645
                                                                       xk7646
                                                                       tetra-change-color)))
                                                              g9122)))
                                                         (x9112
                                                          (letrec ((x9113
                                                                    (letrec ((x9116
                                                                              (letrec ((x9117
                                                                                        (letrec ((x9120
                                                                                                  (input))
                                                                                                 (x9118
                                                                                                  (letrec ((x9119
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9119
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9120
                                                                                           x9118))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9117)))
                                                                             (x9114
                                                                              (letrec ((x9115
                                                                                        (input)))
                                                                                (cons
                                                                                 x9115
                                                                                 '()))))
                                                                      (cons
                                                                       x9116
                                                                       x9114))))
                                                            (cons
                                                             'tetra
                                                             x9113)))
                                                         (x9111 (input)))
                                                  (x9121 x9112 x9111))
                                                (letrec ((x9142
                                                          (letrec ((xj7652
                                                                    (loc
                                                                     'module))
                                                                   (xk7653
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9143
                                                                      ((lambda (j7656
                                                                                k7657
                                                                                f7658)
                                                                         (letrec ((g9144
                                                                                   (lambda (g7654
                                                                                            g7655)
                                                                                     (letrec ((g9145
                                                                                               (letrec ((x9146
                                                                                                         (letrec ((x9148
                                                                                                                   (WORLD/C
                                                                                                                    j7656
                                                                                                                    k7657
                                                                                                                    g7654))
                                                                                                                  (x9147
                                                                                                                   (string?/c
                                                                                                                    j7656
                                                                                                                    k7657
                                                                                                                    g7655)))
                                                                                                           (f7658
                                                                                                            x9148
                                                                                                            x9147))))
                                                                                                 (WORLD/C
                                                                                                  j7656
                                                                                                  k7657
                                                                                                  x9146))))
                                                                                       g9145))))
                                                                           g9144))
                                                                       xj7652
                                                                       xk7653
                                                                       world-key-move)))
                                                              g9143)))
                                                         (x9129
                                                          (letrec ((x9130
                                                                    (letrec ((x9133
                                                                              (letrec ((x9134
                                                                                        (letrec ((x9137
                                                                                                  (letrec ((x9138
                                                                                                            (letrec ((x9141
                                                                                                                      (input))
                                                                                                                     (x9139
                                                                                                                      (letrec ((x9140
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9140
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9141
                                                                                                               x9139))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9138)))
                                                                                                 (x9135
                                                                                                  (letrec ((x9136
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9136
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9137
                                                                                           x9135))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9134)))
                                                                             (x9131
                                                                              (letrec ((x9132
                                                                                        (input)))
                                                                                (cons
                                                                                 x9132
                                                                                 '()))))
                                                                      (cons
                                                                       x9133
                                                                       x9131))))
                                                            (cons
                                                             'world
                                                             x9130)))
                                                         (x9128 (input)))
                                                  (x9142 x9129 x9128))
                                                (letrec ((x9163
                                                          (letrec ((xj7659
                                                                    (loc
                                                                     'module))
                                                                   (xk7660
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9164
                                                                      ((lambda (j7663
                                                                                k7664
                                                                                f7665)
                                                                         (letrec ((g9165
                                                                                   (lambda (g7661
                                                                                            g7662)
                                                                                     (letrec ((g9166
                                                                                               (letrec ((x9167
                                                                                                         (letrec ((x9171
                                                                                                                   (WORLD/C
                                                                                                                    j7663
                                                                                                                    k7664
                                                                                                                    g7661))
                                                                                                                  (x9168
                                                                                                                   (letrec ((x9169
                                                                                                                             (letrec ((x9170
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9170))))
                                                                                                                     (x9169
                                                                                                                      j7663
                                                                                                                      k7664
                                                                                                                      g7662))))
                                                                                                           (f7665
                                                                                                            x9171
                                                                                                            x9168))))
                                                                                                 (WORLD/C
                                                                                                  j7663
                                                                                                  k7664
                                                                                                  x9167))))
                                                                                       g9166))))
                                                                           g9165))
                                                                       xj7659
                                                                       xk7660
                                                                       next-world)))
                                                              g9164)))
                                                         (x9150
                                                          (letrec ((x9151
                                                                    (letrec ((x9154
                                                                              (letrec ((x9155
                                                                                        (letrec ((x9158
                                                                                                  (letrec ((x9159
                                                                                                            (letrec ((x9162
                                                                                                                      (input))
                                                                                                                     (x9160
                                                                                                                      (letrec ((x9161
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9161
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9162
                                                                                                               x9160))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9159)))
                                                                                                 (x9156
                                                                                                  (letrec ((x9157
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9157
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9158
                                                                                           x9156))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9155)))
                                                                             (x9152
                                                                              (letrec ((x9153
                                                                                        (input)))
                                                                                (cons
                                                                                 x9153
                                                                                 '()))))
                                                                      (cons
                                                                       x9154
                                                                       x9152))))
                                                            (cons
                                                             'world
                                                             x9151)))
                                                         (x9149 (input)))
                                                  (x9163 x9150 x9149))
                                                (letrec ((x9185
                                                          (letrec ((xj7666
                                                                    (loc
                                                                     'module))
                                                                   (xk7667
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9186
                                                                      ((lambda (j7669
                                                                                k7670
                                                                                f7671)
                                                                         (letrec ((g9187
                                                                                   (lambda (g7668)
                                                                                     (letrec ((g9188
                                                                                               (letrec ((x9189
                                                                                                         (letrec ((x9190
                                                                                                                   (WORLD/C
                                                                                                                    j7669
                                                                                                                    k7670
                                                                                                                    g7668)))
                                                                                                           (f7671
                                                                                                            x9190))))
                                                                                                 (BSET/C
                                                                                                  j7669
                                                                                                  k7670
                                                                                                  x9189))))
                                                                                       g9188))))
                                                                           g9187))
                                                                       xj7666
                                                                       xk7667
                                                                       ghost-blocks)))
                                                              g9186)))
                                                         (x9172
                                                          (letrec ((x9173
                                                                    (letrec ((x9176
                                                                              (letrec ((x9177
                                                                                        (letrec ((x9180
                                                                                                  (letrec ((x9181
                                                                                                            (letrec ((x9184
                                                                                                                      (input))
                                                                                                                     (x9182
                                                                                                                      (letrec ((x9183
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9183
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9184
                                                                                                               x9182))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9181)))
                                                                                                 (x9178
                                                                                                  (letrec ((x9179
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9179
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9180
                                                                                           x9178))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9177)))
                                                                             (x9174
                                                                              (letrec ((x9175
                                                                                        (input)))
                                                                                (cons
                                                                                 x9175
                                                                                 '()))))
                                                                      (cons
                                                                       x9176
                                                                       x9174))))
                                                            (cons
                                                             'world
                                                             x9173))))
                                                  (x9185 x9172))
                                                (letrec ((x9192
                                                          (letrec ((xj7672
                                                                    (loc
                                                                     'module))
                                                                   (xk7673
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9193
                                                                      ((lambda (j7675
                                                                                k7676
                                                                                f7677)
                                                                         (letrec ((g9194
                                                                                   (lambda (g7674)
                                                                                     (letrec ((g9195
                                                                                               (letrec ((x9196
                                                                                                         (letrec ((x9197
                                                                                                                   (any/c
                                                                                                                    j7675
                                                                                                                    k7676
                                                                                                                    g7674)))
                                                                                                           (f7677
                                                                                                            x9197))))
                                                                                                 (boolean?/c
                                                                                                  j7675
                                                                                                  k7676
                                                                                                  x9196))))
                                                                                       g9195))))
                                                                           g9194))
                                                                       xj7672
                                                                       xk7673
                                                                       image?)))
                                                              g9193)))
                                                         (x9191 (input)))
                                                  (x9192 x9191))
                                                (letrec ((x9200
                                                          (letrec ((xj7678
                                                                    (loc
                                                                     'module))
                                                                   (xk7679
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9201
                                                                      ((lambda (j7682
                                                                                k7683
                                                                                f7684)
                                                                         (letrec ((g9202
                                                                                   (lambda (g7680
                                                                                            g7681)
                                                                                     (letrec ((g9203
                                                                                               (letrec ((x9204
                                                                                                         (letrec ((x9206
                                                                                                                   (image?
                                                                                                                    j7682
                                                                                                                    k7683
                                                                                                                    g7680))
                                                                                                                  (x9205
                                                                                                                   (image?
                                                                                                                    j7682
                                                                                                                    k7683
                                                                                                                    g7681)))
                                                                                                           (f7684
                                                                                                            x9206
                                                                                                            x9205))))
                                                                                                 (image?
                                                                                                  j7682
                                                                                                  k7683
                                                                                                  x9204))))
                                                                                       g9203))))
                                                                           g9202))
                                                                       xj7678
                                                                       xk7679
                                                                       overlay)))
                                                              g9201)))
                                                         (x9199 (input))
                                                         (x9198 (input)))
                                                  (x9200 x9199 x9198))
                                                (letrec ((x9210
                                                          (letrec ((xj7685
                                                                    (loc
                                                                     'module))
                                                                   (xk7686
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9211
                                                                      ((lambda (j7690
                                                                                k7691
                                                                                f7692)
                                                                         (letrec ((g9212
                                                                                   (lambda (g7687
                                                                                            g7688
                                                                                            g7689)
                                                                                     (letrec ((g9213
                                                                                               (letrec ((x9214
                                                                                                         (letrec ((x9217
                                                                                                                   (real?/c
                                                                                                                    j7690
                                                                                                                    k7691
                                                                                                                    g7687))
                                                                                                                  (x9216
                                                                                                                   (real?/c
                                                                                                                    j7690
                                                                                                                    k7691
                                                                                                                    g7688))
                                                                                                                  (x9215
                                                                                                                   (string?/c
                                                                                                                    j7690
                                                                                                                    k7691
                                                                                                                    g7689)))
                                                                                                           (f7692
                                                                                                            x9217
                                                                                                            x9216
                                                                                                            x9215))))
                                                                                                 (image?
                                                                                                  j7690
                                                                                                  k7691
                                                                                                  x9214))))
                                                                                       g9213))))
                                                                           g9212))
                                                                       xj7685
                                                                       xk7686
                                                                       circle)))
                                                              g9211)))
                                                         (x9209 (input))
                                                         (x9208 (input))
                                                         (x9207 (input)))
                                                  (x9210 x9209 x9208 x9207))
                                                (letrec ((x9222
                                                          (letrec ((xj7693
                                                                    (loc
                                                                     'module))
                                                                   (xk7694
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9223
                                                                      ((lambda (j7699
                                                                                k7700
                                                                                f7701)
                                                                         (letrec ((g9224
                                                                                   (lambda (g7695
                                                                                            g7696
                                                                                            g7697
                                                                                            g7698)
                                                                                     (letrec ((g9225
                                                                                               (letrec ((x9226
                                                                                                         (letrec ((x9230
                                                                                                                   (real?/c
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7695))
                                                                                                                  (x9229
                                                                                                                   (real?/c
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7696))
                                                                                                                  (x9228
                                                                                                                   (COLOR/C
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7697))
                                                                                                                  (x9227
                                                                                                                   (COLOR/C
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7698)))
                                                                                                           (f7701
                                                                                                            x9230
                                                                                                            x9229
                                                                                                            x9228
                                                                                                            x9227))))
                                                                                                 (image?
                                                                                                  j7699
                                                                                                  k7700
                                                                                                  x9226))))
                                                                                       g9225))))
                                                                           g9224))
                                                                       xj7693
                                                                       xk7694
                                                                       rectangle)))
                                                              g9223)))
                                                         (x9221 (input))
                                                         (x9220 (input))
                                                         (x9219 (input))
                                                         (x9218 (input)))
                                                  (x9222
                                                   x9221
                                                   x9220
                                                   x9219
                                                   x9218))
                                                (letrec ((x9235
                                                          (letrec ((xj7702
                                                                    (loc
                                                                     'module))
                                                                   (xk7703
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9236
                                                                      ((lambda (j7708
                                                                                k7709
                                                                                f7710)
                                                                         (letrec ((g9237
                                                                                   (lambda (g7704
                                                                                            g7705
                                                                                            g7706
                                                                                            g7707)
                                                                                     (letrec ((g9238
                                                                                               (letrec ((x9239
                                                                                                         (letrec ((x9243
                                                                                                                   (image/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7704))
                                                                                                                  (x9242
                                                                                                                   (real?/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7705))
                                                                                                                  (x9241
                                                                                                                   (real?/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7706))
                                                                                                                  (x9240
                                                                                                                   (image/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7707)))
                                                                                                           (f7710
                                                                                                            x9243
                                                                                                            x9242
                                                                                                            x9241
                                                                                                            x9240))))
                                                                                                 (image/c
                                                                                                  j7708
                                                                                                  k7709
                                                                                                  x9239))))
                                                                                       g9238))))
                                                                           g9237))
                                                                       xj7702
                                                                       xk7703
                                                                       place-image)))
                                                              g9236)))
                                                         (x9234
                                                          (cons 'image '()))
                                                         (x9233 (input))
                                                         (x9232 (input))
                                                         (x9231
                                                          (cons 'image '())))
                                                  (x9235
                                                   x9234
                                                   x9233
                                                   x9232
                                                   x9231))
                                                (letrec ((x9246
                                                          (letrec ((xj7711
                                                                    (loc
                                                                     'module))
                                                                   (xk7712
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9247
                                                                      ((lambda (j7715
                                                                                k7716
                                                                                f7717)
                                                                         (letrec ((g9248
                                                                                   (lambda (g7713
                                                                                            g7714)
                                                                                     (letrec ((g9249
                                                                                               (letrec ((x9250
                                                                                                         (letrec ((x9252
                                                                                                                   (real?/c
                                                                                                                    j7715
                                                                                                                    k7716
                                                                                                                    g7713))
                                                                                                                  (x9251
                                                                                                                   (real?/c
                                                                                                                    j7715
                                                                                                                    k7716
                                                                                                                    g7714)))
                                                                                                           (f7717
                                                                                                            x9252
                                                                                                            x9251))))
                                                                                                 (image?
                                                                                                  j7715
                                                                                                  k7716
                                                                                                  x9250))))
                                                                                       g9249))))
                                                                           g9248))
                                                                       xj7711
                                                                       xk7712
                                                                       empty-scene)))
                                                              g9247)))
                                                         (x9245 (input))
                                                         (x9244 (input)))
                                                  (x9246 x9245 x9244))
                                                (letrec ((x9254
                                                          (letrec ((xj7718
                                                                    (loc
                                                                     'module))
                                                                   (xk7719
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9255
                                                                      ((lambda (j7721
                                                                                k7722
                                                                                f7723)
                                                                         (letrec ((g9256
                                                                                   (lambda (g7720)
                                                                                     (letrec ((g9257
                                                                                               (letrec ((x9258
                                                                                                         (letrec ((x9259
                                                                                                                   (letrec ((x9260
                                                                                                                             (letrec ((x9261
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9261))))
                                                                                                                     (x9260
                                                                                                                      j7721
                                                                                                                      k7722
                                                                                                                      g7720))))
                                                                                                           (f7723
                                                                                                            x9259))))
                                                                                                 (TETRA/C
                                                                                                  j7721
                                                                                                  k7722
                                                                                                  x9258))))
                                                                                       g9257))))
                                                                           g9256))
                                                                       xj7718
                                                                       xk7719
                                                                       list-pick-random)))
                                                              g9255)))
                                                         (x9253 (input)))
                                                  (x9254 x9253))
                                                (letrec ((xj7724 (loc 'module))
                                                         (xk7725
                                                          (loc 'importer)))
                                                  (letrec ((g9262
                                                            (integer?/c
                                                             xj7724
                                                             xk7725
                                                             neg-1)))
                                                    g9262))
                                                (letrec ((x9276
                                                          (letrec ((xj7726
                                                                    (loc
                                                                     'module))
                                                                   (xk7727
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9277
                                                                      ((lambda (j7729
                                                                                k7730
                                                                                f7731)
                                                                         (letrec ((g9278
                                                                                   (lambda (g7728)
                                                                                     (letrec ((g9279
                                                                                               (letrec ((x9280
                                                                                                         (letrec ((x9281
                                                                                                                   (WORLD/C
                                                                                                                    j7729
                                                                                                                    k7730
                                                                                                                    g7728)))
                                                                                                           (f7731
                                                                                                            x9281))))
                                                                                                 (image/c
                                                                                                  j7729
                                                                                                  k7730
                                                                                                  x9280))))
                                                                                       g9279))))
                                                                           g9278))
                                                                       xj7726
                                                                       xk7727
                                                                       world->image)))
                                                              g9277)))
                                                         (x9263
                                                          (letrec ((x9264
                                                                    (letrec ((x9267
                                                                              (letrec ((x9268
                                                                                        (letrec ((x9271
                                                                                                  (letrec ((x9272
                                                                                                            (letrec ((x9275
                                                                                                                      (input))
                                                                                                                     (x9273
                                                                                                                      (letrec ((x9274
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9274
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9275
                                                                                                               x9273))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9272)))
                                                                                                 (x9269
                                                                                                  (letrec ((x9270
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9270
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9271
                                                                                           x9269))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9268)))
                                                                             (x9265
                                                                              (letrec ((x9266
                                                                                        (input)))
                                                                                (cons
                                                                                 x9266
                                                                                 '()))))
                                                                      (cons
                                                                       x9267
                                                                       x9265))))
                                                            (cons
                                                             'world
                                                             x9264))))
                                                  (x9276 x9263))
                                                (letrec ((x9283
                                                          (letrec ((xj7732
                                                                    (loc
                                                                     'module))
                                                                   (xk7733
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9284
                                                                      ((lambda (j7735
                                                                                k7736
                                                                                f7737)
                                                                         (letrec ((g9285
                                                                                   (lambda (g7734)
                                                                                     (letrec ((g9286
                                                                                               (letrec ((x9287
                                                                                                         (letrec ((x9288
                                                                                                                   (BSET/C
                                                                                                                    j7735
                                                                                                                    k7736
                                                                                                                    g7734)))
                                                                                                           (f7737
                                                                                                            x9288))))
                                                                                                 (image/c
                                                                                                  j7735
                                                                                                  k7736
                                                                                                  x9287))))
                                                                                       g9286))))
                                                                           g9285))
                                                                       xj7732
                                                                       xk7733
                                                                       blocks->image)))
                                                              g9284)))
                                                         (x9282 (input)))
                                                  (x9283 x9282))
                                                (letrec ((x9296
                                                          (letrec ((xj7738
                                                                    (loc
                                                                     'module))
                                                                   (xk7739
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9297
                                                                      ((lambda (j7741
                                                                                k7742
                                                                                f7743)
                                                                         (letrec ((g9298
                                                                                   (lambda (g7740)
                                                                                     (letrec ((g9299
                                                                                               (letrec ((x9300
                                                                                                         (letrec ((x9301
                                                                                                                   (BLOCK/C
                                                                                                                    j7741
                                                                                                                    k7742
                                                                                                                    g7740)))
                                                                                                           (f7743
                                                                                                            x9301))))
                                                                                                 (image/c
                                                                                                  j7741
                                                                                                  k7742
                                                                                                  x9300))))
                                                                                       g9299))))
                                                                           g9298))
                                                                       xj7738
                                                                       xk7739
                                                                       block->image)))
                                                              g9297)))
                                                         (x9289
                                                          (letrec ((x9290
                                                                    (letrec ((x9295
                                                                              (input))
                                                                             (x9291
                                                                              (letrec ((x9294
                                                                                        (input))
                                                                                       (x9292
                                                                                        (letrec ((x9293
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9293
                                                                                           '()))))
                                                                                (cons
                                                                                 x9294
                                                                                 x9292))))
                                                                      (cons
                                                                       x9295
                                                                       x9291))))
                                                            (cons
                                                             'block
                                                             x9290))))
                                                  (x9296 x9289))
                                                (letrec ((x9310
                                                          (letrec ((xj7744
                                                                    (loc
                                                                     'module))
                                                                   (xk7745
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9311
                                                                      ((lambda (j7748
                                                                                k7749
                                                                                f7750)
                                                                         (letrec ((g9312
                                                                                   (lambda (g7746
                                                                                            g7747)
                                                                                     (letrec ((g9313
                                                                                               (letrec ((x9314
                                                                                                         (letrec ((x9316
                                                                                                                   (BLOCK/C
                                                                                                                    j7748
                                                                                                                    k7749
                                                                                                                    g7746))
                                                                                                                  (x9315
                                                                                                                   (image/c
                                                                                                                    j7748
                                                                                                                    k7749
                                                                                                                    g7747)))
                                                                                                           (f7750
                                                                                                            x9316
                                                                                                            x9315))))
                                                                                                 (image/c
                                                                                                  j7748
                                                                                                  k7749
                                                                                                  x9314))))
                                                                                       g9313))))
                                                                           g9312))
                                                                       xj7744
                                                                       xk7745
                                                                       place-block)))
                                                              g9311)))
                                                         (x9303
                                                          (letrec ((x9304
                                                                    (letrec ((x9309
                                                                              (input))
                                                                             (x9305
                                                                              (letrec ((x9308
                                                                                        (input))
                                                                                       (x9306
                                                                                        (letrec ((x9307
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9307
                                                                                           '()))))
                                                                                (cons
                                                                                 x9308
                                                                                 x9306))))
                                                                      (cons
                                                                       x9309
                                                                       x9305))))
                                                            (cons
                                                             'block
                                                             x9304)))
                                                         (x9302
                                                          (cons 'image '())))
                                                  (x9310 x9303 x9302))
                                                (letrec ((x9318
                                                          (letrec ((xj7751
                                                                    (loc
                                                                     'module))
                                                                   (xk7752
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9319
                                                                      ((lambda (j7754
                                                                                k7755
                                                                                f7756)
                                                                         (letrec ((g9320
                                                                                   (lambda (g7753)
                                                                                     (letrec ((g9321
                                                                                               (letrec ((x9322
                                                                                                         (letrec ((x9323
                                                                                                                   (letrec ((x9324
                                                                                                                             (letrec ((x9325
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9325))))
                                                                                                                     (x9324
                                                                                                                      j7754
                                                                                                                      k7755
                                                                                                                      g7753))))
                                                                                                           (f7756
                                                                                                            x9323))))
                                                                                                 (WORLD/C
                                                                                                  j7754
                                                                                                  k7755
                                                                                                  x9322))))
                                                                                       g9321))))
                                                                           g9320))
                                                                       xj7751
                                                                       xk7752
                                                                       world0)))
                                                              g9319)))
                                                         (x9317 (input)))
                                                  (x9318 x9317))))))
                                      g8758))))
                          g7808))))
              g7791)))
    g7790))
