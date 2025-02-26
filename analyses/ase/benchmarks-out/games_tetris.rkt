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
                                           (/
                                            (letrec ((xj7366 'server)
                                                     (xk7367 'client))
                                              (letrec ((g7934
                                                        ((lambda (j7370
                                                                  k7371
                                                                  f7372)
                                                           (letrec ((g7936
                                                                     (lambda (g7368
                                                                              g7369)
                                                                       (letrec ((g7937
                                                                                 (letrec ((x7938
                                                                                           (letrec ((x7940
                                                                                                     (number?/c
                                                                                                      j7370
                                                                                                      k7371
                                                                                                      g7368))
                                                                                                    (x7939
                                                                                                     (number?/c
                                                                                                      j7370
                                                                                                      k7371
                                                                                                      g7369)))
                                                                                             (f7372
                                                                                              x7940
                                                                                              x7939))))
                                                                                   (number?/c
                                                                                    j7370
                                                                                    k7371
                                                                                    x7938))))
                                                                         g7937))))
                                                             g7936))
                                                         xj7366
                                                         xk7367
                                                         (lambda (a b)
                                                           (letrec ((g7935
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7935)))))
                                                g7934)))
                                           (car
                                            (letrec ((xj7373 'server)
                                                     (xk7374 'client))
                                              (letrec ((g7941
                                                        ((lambda (j7376
                                                                  k7377
                                                                  f7378)
                                                           (letrec ((g7943
                                                                     (lambda (g7375)
                                                                       (letrec ((g7944
                                                                                 (letrec ((x7945
                                                                                           (letrec ((x7946
                                                                                                     (pair?/c
                                                                                                      j7376
                                                                                                      k7377
                                                                                                      g7375)))
                                                                                             (f7378
                                                                                              x7946))))
                                                                                   (any/c
                                                                                    j7376
                                                                                    k7377
                                                                                    x7945))))
                                                                         g7944))))
                                                             g7943))
                                                         xj7373
                                                         xk7374
                                                         (lambda (p)
                                                           (letrec ((g7942
                                                                     (orig-car
                                                                      p)))
                                                             g7942)))))
                                                g7941)))
                                           (cdr
                                            (letrec ((xj7379 'server)
                                                     (xk7380 'client))
                                              (letrec ((g7947
                                                        ((lambda (j7382
                                                                  k7383
                                                                  f7384)
                                                           (letrec ((g7949
                                                                     (lambda (g7381)
                                                                       (letrec ((g7950
                                                                                 (letrec ((x7951
                                                                                           (letrec ((x7952
                                                                                                     (pair?/c
                                                                                                      j7382
                                                                                                      k7383
                                                                                                      g7381)))
                                                                                             (f7384
                                                                                              x7952))))
                                                                                   (any/c
                                                                                    j7382
                                                                                    k7383
                                                                                    x7951))))
                                                                         g7950))))
                                                             g7949))
                                                         xj7379
                                                         xk7380
                                                         (lambda (p)
                                                           (letrec ((g7948
                                                                     (orig-cdr
                                                                      p)))
                                                             g7948)))))
                                                g7947)))
                                           (cons
                                            (letrec ((xj7385 'server)
                                                     (xk7386 'client))
                                              (letrec ((g7953
                                                        ((lambda (j7389
                                                                  k7390
                                                                  f7391)
                                                           (letrec ((g7955
                                                                     (lambda (g7387
                                                                              g7388)
                                                                       (letrec ((g7956
                                                                                 (letrec ((x7957
                                                                                           (letrec ((x7959
                                                                                                     (any/c
                                                                                                      j7389
                                                                                                      k7390
                                                                                                      g7387))
                                                                                                    (x7958
                                                                                                     (any/c
                                                                                                      j7389
                                                                                                      k7390
                                                                                                      g7388)))
                                                                                             (f7391
                                                                                              x7959
                                                                                              x7958))))
                                                                                   (pair?/c
                                                                                    j7389
                                                                                    k7390
                                                                                    x7957))))
                                                                         g7956))))
                                                             g7955))
                                                         xj7385
                                                         xk7386
                                                         (lambda (a b)
                                                           (letrec ((g7954
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7954)))))
                                                g7953)))
                                           (vector-ref
                                            (letrec ((xj7392 'server)
                                                     (xk7393 'client))
                                              (letrec ((g7960
                                                        ((lambda (j7395
                                                                  k7396
                                                                  f7397)
                                                           (letrec ((g7962
                                                                     (lambda (g7394)
                                                                       (letrec ((g7963
                                                                                 (letrec ((x7964
                                                                                           (letrec ((x7965
                                                                                                     (vector?/c
                                                                                                      j7395
                                                                                                      k7396
                                                                                                      g7394)))
                                                                                             (f7397
                                                                                              x7965))))
                                                                                   (integer?/c
                                                                                    j7395
                                                                                    k7396
                                                                                    x7964))))
                                                                         g7963))))
                                                             g7962))
                                                         xj7392
                                                         xk7393
                                                         (lambda (v i)
                                                           (letrec ((g7961
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7961)))))
                                                g7960)))
                                           (vector-set!
                                            (letrec ((xj7398 'server)
                                                     (xk7399 'client))
                                              (letrec ((g7966
                                                        ((lambda (j7402
                                                                  k7403
                                                                  f7404)
                                                           (letrec ((g7968
                                                                     (lambda (g7400
                                                                              g7401)
                                                                       (letrec ((g7969
                                                                                 (letrec ((x7970
                                                                                           (letrec ((x7972
                                                                                                     (vector?/c
                                                                                                      j7402
                                                                                                      k7403
                                                                                                      g7400))
                                                                                                    (x7971
                                                                                                     (integer?/c
                                                                                                      j7402
                                                                                                      k7403
                                                                                                      g7401)))
                                                                                             (f7404
                                                                                              x7972
                                                                                              x7971))))
                                                                                   (any/c
                                                                                    j7402
                                                                                    k7403
                                                                                    x7970))))
                                                                         g7969))))
                                                             g7968))
                                                         xj7398
                                                         xk7399
                                                         (lambda (vec i v)
                                                           (letrec ((g7967
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7967)))))
                                                g7966)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7973
                                                        (letrec ((x7974
                                                                  (letrec ((x7975
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7975))))
                                                          (cdr x7974))))
                                                g7973)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7976
                                                        (letrec ((x7979
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7979)))
                                                       (g7977
                                                        (letrec ((x7980
                                                                  (list? l)))
                                                          (assert x7980)))
                                                       (g7978
                                                        (letrec ((x-cnd7981
                                                                  (null? l)))
                                                          (if x-cnd7981
                                                            '()
                                                            (letrec ((x7984
                                                                      (letrec ((x7985
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7985)))
                                                                     (x7982
                                                                      (letrec ((x7983
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7983))))
                                                              (cons
                                                               x7984
                                                               x7982))))))
                                                g7978)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7986
                                                        (letrec ((x7987
                                                                  (car x)))
                                                          (cdr x7987))))
                                                g7986)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7988
                                                        (letrec ((x7989
                                                                  (letrec ((x7990
                                                                            (letrec ((x7991
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7991))))
                                                                    (cdr
                                                                     x7990))))
                                                          (car x7989))))
                                                g7988)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7992
                                                        (letrec ((x7993
                                                                  (letrec ((x7994
                                                                            (letrec ((x7995
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7995))))
                                                                    (car
                                                                     x7994))))
                                                          (cdr x7993))))
                                                g7992)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7996
                                                        (letrec ((x7999
                                                                  (string?
                                                                   filename)))
                                                          (assert x7999)))
                                                       (g7997
                                                        (letrec ((x8000
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8000)))
                                                       (g7998
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g8001
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g8002 res))
                                                            g8002))))
                                                g7998)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g8003
                                                        (letrec ((x8004
                                                                  (letrec ((x8005
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x8005))))
                                                          (car x8004))))
                                                g8003)))
                                           (cdaadr
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
                                                          (cdr x8007))))
                                                g8006)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g8010
                                                        (letrec ((x8012
                                                                  (list? l)))
                                                          (assert x8012)))
                                                       (g8011
                                                        (letrec ((x-cnd8013
                                                                  (null? l)))
                                                          (if x-cnd8013
                                                            #f
                                                            (letrec ((x-cnd8014
                                                                      (letrec ((x8015
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x8015
                                                                         k))))
                                                              (if x-cnd8014
                                                                (car l)
                                                                (letrec ((x8016
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8016))))))))
                                                g8011)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g8017
                                                        (letrec ((x8018
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x8018))))
                                                g8017)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g8019
                                                        (letrec ((x8021
                                                                  (list? l)))
                                                          (assert x8021)))
                                                       (g8020
                                                        (letrec ((x-cnd8022
                                                                  (null? l)))
                                                          (if x-cnd8022
                                                            ""
                                                            (letrec ((x8025
                                                                      (letrec ((x8026
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x8026)))
                                                                     (x8023
                                                                      (letrec ((x8024
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x8024))))
                                                              (string-append
                                                               x8025
                                                               x8023))))))
                                                g8020)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8027
                                                        (letrec ((x8030
                                                                  (char? c1)))
                                                          (assert x8030)))
                                                       (g8028
                                                        (letrec ((x8031
                                                                  (char? c2)))
                                                          (assert x8031)))
                                                       (g8029
                                                        (letrec ((val7249
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8032
                                                                    (if val7249
                                                                      val7249
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8032))))
                                                g8029)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g8033
                                                        (letrec ((x8034
                                                                  (letrec ((x8035
                                                                            (letrec ((x8036
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8036))))
                                                                    (cdr
                                                                     x8035))))
                                                          (cdr x8034))))
                                                g8033)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g8037
                                                        (letrec ((x8040
                                                                  (list? l)))
                                                          (assert x8040)))
                                                       (g8038
                                                        (letrec ((x8041
                                                                  (number?)))
                                                          (assert x8041)))
                                                       (g8039
                                                        (letrec ((x-cnd8042
                                                                  (zero? k)))
                                                          (if x-cnd8042
                                                            x
                                                            (letrec ((x8044
                                                                      (cdr x))
                                                                     (x8043
                                                                      (- k 1)))
                                                              (list-tail
                                                               x8044
                                                               x8043))))))
                                                g8039)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g8045 '())) g8045)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g8046
                                                        (letrec ((x-cnd8047
                                                                  (letrec ((x8048
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x8048))))
                                                          (if x-cnd8047
                                                            (letrec ((x8049
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x8049))
                                                            #f))))
                                                g8046)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g8050
                                                        (letrec ((val7250
                                                                  (letrec ((x8051
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x8051
                                                                     9))))
                                                          (letrec ((g8052
                                                                    (if val7250
                                                                      val7250
                                                                      (letrec ((val7251
                                                                                (letrec ((x8053
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x8053
                                                                                   10))))
                                                                        (letrec ((g8054
                                                                                  (if val7251
                                                                                    val7251
                                                                                    (letrec ((x8055
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x8055
                                                                                       32)))))
                                                                          g8054)))))
                                                            g8052))))
                                                g8050)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g8056
                                                        (letrec ((x8057
                                                                  (letrec ((x8058
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8058))))
                                                          (cdr x8057))))
                                                g8056)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g8059
                                                        (letrec ((x8061
                                                                  (number? x)))
                                                          (assert x8061)))
                                                       (g8060 (> x 0)))
                                                g8060)))
                                           (string=?
                                            (lambda (s1 s2)
                                              (letrec ((g8062 (bool-top)))
                                                g8062)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g8063 #f)) g8063)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g8064
                                                        (letrec ((x8065
                                                                  (cdr x)))
                                                          (cdr x8065))))
                                                g8064)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g8066
                                                        (letrec ((x8068
                                                                  (number? x)))
                                                          (assert x8068)))
                                                       (g8067
                                                        (letrec ((x-cnd8069
                                                                  (< x 0)))
                                                          (if x-cnd8069
                                                            (ceiling x)
                                                            (floor x)))))
                                                g8067)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g8070
                                                        (letrec ((val7252
                                                                  (eq? a b)))
                                                          (letrec ((g8071
                                                                    (if val7252
                                                                      val7252
                                                                      (letrec ((val7253
                                                                                (letrec ((x-cnd8072
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd8072
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g8073
                                                                                  (if val7253
                                                                                    val7253
                                                                                    (letrec ((val7254
                                                                                              (letrec ((x-cnd8074
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd8074
                                                                                                  (letrec ((x-cnd8075
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd8075
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g8076
                                                                                                (if val7254
                                                                                                  val7254
                                                                                                  (letrec ((val7255
                                                                                                            (letrec ((x-cnd8077
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd8077
                                                                                                                (letrec ((x-cnd8078
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd8078
                                                                                                                    (letrec ((x-cnd8079
                                                                                                                              (letrec ((x8081
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x8080
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x8081
                                                                                                                                 x8080))))
                                                                                                                      (if x-cnd8079
                                                                                                                        (letrec ((x8083
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x8082
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x8083
                                                                                                                           x8082))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g8084
                                                                                                              (if val7255
                                                                                                                val7255
                                                                                                                (letrec ((x-cnd8085
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd8085
                                                                                                                    (letrec ((x-cnd8086
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd8086
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g8087
                                                                                                                                    (letrec ((x-cnd8088
                                                                                                                                              (letrec ((x8089
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x8089
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd8088
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g8090
                                                                                                                                                              (letrec ((val7256
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g8091
                                                                                                                                                                          (if val7256
                                                                                                                                                                            val7256
                                                                                                                                                                            (letrec ((x-cnd8092
                                                                                                                                                                                      (letrec ((x8094
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x8093
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x8094
                                                                                                                                                                                         x8093))))
                                                                                                                                                                              (if x-cnd8092
                                                                                                                                                                                (letrec ((x8095
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x8095))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g8091))))
                                                                                                                                                      g8090))))
                                                                                                                                          (letrec ((g8096
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g8096))
                                                                                                                                        #f))))
                                                                                                                            g8087))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g8084)))))
                                                                                        g8076)))))
                                                                          g8073)))))
                                                            g8071))))
                                                g8070)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g8097
                                                        (letrec ((x8098
                                                                  (letrec ((x8099
                                                                            (letrec ((x8100
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8100))))
                                                                    (car
                                                                     x8099))))
                                                          (cdr x8098))))
                                                g8097)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g8101
                                                        (letrec ((x8102
                                                                  (letrec ((x8103
                                                                            (letrec ((x8104
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8104))))
                                                                    (car
                                                                     x8103))))
                                                          (car x8102))))
                                                g8101)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g8105 (eq? x y)))
                                                g8105)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g8106
                                                        (letrec ((x8109
                                                                  (string?
                                                                   filename)))
                                                          (assert x8109)))
                                                       (g8107
                                                        (letrec ((x8110
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8110)))
                                                       (g8108
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g8111
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g8112 res))
                                                            g8112))))
                                                g8108)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g8113 (cons x '())))
                                                g8113)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8114
                                                        (letrec ((x8117
                                                                  (char? c1)))
                                                          (assert x8117)))
                                                       (g8115
                                                        (letrec ((x8118
                                                                  (char? c2)))
                                                          (assert x8118)))
                                                       (g8116
                                                        (letrec ((val7257
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8119
                                                                    (if val7257
                                                                      val7257
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8119))))
                                                g8116)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g8120
                                                        (letrec ((x8121
                                                                  (letrec ((x8122
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8122))))
                                                          (cdr x8121))))
                                                g8120)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g8123
                                                        (letrec ((x8124
                                                                  (letrec ((x8125
                                                                            (letrec ((x8126
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8126))))
                                                                    (car
                                                                     x8125))))
                                                          (cdr x8124))))
                                                g8123)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g8127
                                                        (letrec ((x8128
                                                                  (letrec ((x8129
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8129))))
                                                          (car x8128))))
                                                g8127)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g8130
                                                        (letrec ((x8131
                                                                  (letrec ((x8132
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8132))))
                                                          (car x8131))))
                                                g8130)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g8133
                                                        (letrec ((x8136
                                                                  (char? c1)))
                                                          (assert x8136)))
                                                       (g8134
                                                        (letrec ((x8137
                                                                  (char? c2)))
                                                          (assert x8137)))
                                                       (g8135
                                                        (letrec ((x8138
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8138))))
                                                g8135)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g8139
                                                        (letrec ((x8140
                                                                  (letrec ((x8141
                                                                            (letrec ((x8142
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8142))))
                                                                    (car
                                                                     x8141))))
                                                          (car x8140))))
                                                g8139)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g8143
                                                        (letrec ((x8145
                                                                  (number? x)))
                                                          (assert x8145)))
                                                       (g8144 (< x 0)))
                                                g8144)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g8146 (memq e l)))
                                                g8146)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g8147
                                                        (letrec ((x8148
                                                                  (letrec ((x8149
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8149))))
                                                          (car x8148))))
                                                g8147)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8150 '())) g8150)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8151
                                                        (letrec ((x8153
                                                                  (list? l)))
                                                          (assert x8153)))
                                                       (g8152
                                                        (letrec ((x-cnd8154
                                                                  (null? l)))
                                                          (if x-cnd8154
                                                            '()
                                                            (letrec ((x8157
                                                                      (letrec ((x8158
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8158)))
                                                                     (x8155
                                                                      (letrec ((x8156
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8156))))
                                                              (append
                                                               x8157
                                                               x8155))))))
                                                g8152)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8159
                                                        (letrec ((x8160
                                                                  (letrec ((x8161
                                                                            (letrec ((x8162
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8162))))
                                                                    (car
                                                                     x8161))))
                                                          (car x8160))))
                                                g8159)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8163
                                                        (letrec ((x8164
                                                                  (letrec ((x8165
                                                                            (letrec ((x8166
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8166))))
                                                                    (cdr
                                                                     x8165))))
                                                          (cdr x8164))))
                                                g8163)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8167
                                                        (letrec ((x8169
                                                                  (number? x)))
                                                          (assert x8169)))
                                                       (g8168
                                                        (letrec ((x8170
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8170))))
                                                g8168)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8171
                                                        (letrec ((x8172
                                                                  (letrec ((x8173
                                                                            (letrec ((x8174
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8174))))
                                                                    (car
                                                                     x8173))))
                                                          (car x8172))))
                                                g8171)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8175
                                                        (letrec ((x8178
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8178)))
                                                       (g8176
                                                        (letrec ((x8179
                                                                  (list?
                                                                   args)))
                                                          (assert x8179)))
                                                       (g8177
                                                        (letrec ((x-cnd8180
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8180
                                                            (letrec ((g8181
                                                                      (proc)))
                                                              g8181)
                                                            (letrec ((x-cnd8182
                                                                      (letrec ((x8183
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8183))))
                                                              (if x-cnd8182
                                                                (letrec ((g8184
                                                                          (letrec ((x8185
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8185))))
                                                                  g8184)
                                                                (letrec ((x-cnd8186
                                                                          (letrec ((x8187
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8187))))
                                                                  (if x-cnd8186
                                                                    (letrec ((g8188
                                                                              (letrec ((x8190
                                                                                        (car
                                                                                         args))
                                                                                       (x8189
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8190
                                                                                 x8189))))
                                                                      g8188)
                                                                    (letrec ((x-cnd8191
                                                                              (letrec ((x8192
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8192))))
                                                                      (if x-cnd8191
                                                                        (letrec ((g8193
                                                                                  (letrec ((x8196
                                                                                            (car
                                                                                             args))
                                                                                           (x8195
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8194
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8196
                                                                                     x8195
                                                                                     x8194))))
                                                                          g8193)
                                                                        (letrec ((x-cnd8197
                                                                                  (letrec ((x8198
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8198))))
                                                                          (if x-cnd8197
                                                                            (letrec ((g8199
                                                                                      (letrec ((x8203
                                                                                                (car
                                                                                                 args))
                                                                                               (x8202
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8201
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8200
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8203
                                                                                         x8202
                                                                                         x8201
                                                                                         x8200))))
                                                                              g8199)
                                                                            (letrec ((x-cnd8204
                                                                                      (letrec ((x8205
                                                                                                (letrec ((x8206
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8206))))
                                                                                        (null?
                                                                                         x8205))))
                                                                              (if x-cnd8204
                                                                                (letrec ((g8207
                                                                                          (letrec ((x8213
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8212
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8211
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8210
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8208
                                                                                                    (letrec ((x8209
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8209))))
                                                                                            (proc
                                                                                             x8213
                                                                                             x8212
                                                                                             x8211
                                                                                             x8210
                                                                                             x8208))))
                                                                                  g8207)
                                                                                (letrec ((x-cnd8214
                                                                                          (letrec ((x8215
                                                                                                    (letrec ((x8216
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8216))))
                                                                                            (null?
                                                                                             x8215))))
                                                                                  (if x-cnd8214
                                                                                    (letrec ((g8217
                                                                                              (letrec ((x8225
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8224
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8223
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8222
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8220
                                                                                                        (letrec ((x8221
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8221)))
                                                                                                       (x8218
                                                                                                        (letrec ((x8219
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8219))))
                                                                                                (proc
                                                                                                 x8225
                                                                                                 x8224
                                                                                                 x8223
                                                                                                 x8222
                                                                                                 x8220
                                                                                                 x8218))))
                                                                                      g8217)
                                                                                    (letrec ((x-cnd8226
                                                                                              (letrec ((x8227
                                                                                                        (letrec ((x8228
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8228))))
                                                                                                (null?
                                                                                                 x8227))))
                                                                                      (if x-cnd8226
                                                                                        (letrec ((g8229
                                                                                                  (letrec ((x8239
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8238
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8237
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8236
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8234
                                                                                                            (letrec ((x8235
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8235)))
                                                                                                           (x8232
                                                                                                            (letrec ((x8233
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8233)))
                                                                                                           (x8230
                                                                                                            (letrec ((x8231
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8231))))
                                                                                                    (proc
                                                                                                     x8239
                                                                                                     x8238
                                                                                                     x8237
                                                                                                     x8236
                                                                                                     x8234
                                                                                                     x8232
                                                                                                     x8230))))
                                                                                          g8229)
                                                                                        (letrec ((g8240
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8240)))))))))))))))))))
                                                g8177)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8241
                                                        (letrec ((x8243
                                                                  (list? l)))
                                                          (assert x8243)))
                                                       (g8242
                                                        (letrec ((x-cnd8244
                                                                  (null? l)))
                                                          (if x-cnd8244
                                                            #f
                                                            (letrec ((x-cnd8245
                                                                      (letrec ((x8246
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8246
                                                                         e))))
                                                              (if x-cnd8245
                                                                l
                                                                (letrec ((x8247
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8247))))))))
                                                g8242)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8248
                                                        (letrec ((x8249
                                                                  (letrec ((x8250
                                                                            (letrec ((x8251
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8251))))
                                                                    (cdr
                                                                     x8250))))
                                                          (cdr x8249))))
                                                g8248)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8252
                                                        (letrec ((x8253
                                                                  (letrec ((x8254
                                                                            (letrec ((x8255
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8255))))
                                                                    (cdr
                                                                     x8254))))
                                                          (car x8253))))
                                                g8252)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8256 (random 42)))
                                                g8256)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8257
                                                        (letrec ((x8259
                                                                  (number? x)))
                                                          (assert x8259)))
                                                       (g8258 (= x 0)))
                                                g8258)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8260
                                                        (letrec ((val7258
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8261
                                                                    (if val7258
                                                                      val7258
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8261))))
                                                g8260)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8262
                                                        (letrec ((x8263
                                                                  (cdr x)))
                                                          (car x8263))))
                                                g8262)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8264
                                                        (letrec ((val7259
                                                                  (letrec ((x-cnd8265
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8265
                                                                      (letrec ((x8266
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8266))
                                                                      #f))))
                                                          (letrec ((g8267
                                                                    (if val7259
                                                                      val7259
                                                                      (null?
                                                                       l))))
                                                            g8267))))
                                                g8264)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8268
                                                        (letrec ((x8269
                                                                  (letrec ((x8270
                                                                            (letrec ((x8271
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8271))))
                                                                    (cdr
                                                                     x8270))))
                                                          (cdr x8269))))
                                                g8268)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8272
                                                        (letrec ((x-cnd8273
                                                                  (letrec ((x8274
                                                                            #\0))
                                                                    (char<=?
                                                                     x8274
                                                                     c))))
                                                          (if x-cnd8273
                                                            (letrec ((x8275
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8275))
                                                            #f))))
                                                g8272)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8276
                                                        (letrec ((x8278
                                                                  (list? l)))
                                                          (assert x8278)))
                                                       (g8277
                                                        (letrec ((x-cnd8279
                                                                  (null? l)))
                                                          (if x-cnd8279
                                                            #f
                                                            (letrec ((x-cnd8280
                                                                      (letrec ((x8281
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8281
                                                                         k))))
                                                              (if x-cnd8280
                                                                (car l)
                                                                (letrec ((x8282
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8282))))))))
                                                g8277)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8283 (if x #f #t)))
                                                g8283)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8284 (append l1 l2)))
                                                g8284)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8285
                                                        (letrec ((x8287
                                                                  (list? l)))
                                                          (assert x8287)))
                                                       (g8286
                                                        (letrec ((x-cnd8288
                                                                  (null? l)))
                                                          (if x-cnd8288
                                                            #f
                                                            (letrec ((x-cnd8289
                                                                      (letrec ((x8290
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8290
                                                                         e))))
                                                              (if x-cnd8289
                                                                l
                                                                (letrec ((x8291
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8291))))))))
                                                g8286)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8292
                                                        (letrec ((x8293
                                                                  (letrec ((x8294
                                                                            (letrec ((x8295
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8295))))
                                                                    (cdr
                                                                     x8294))))
                                                          (car x8293))))
                                                g8292)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8296
                                                        (letrec ((x8298
                                                                  (list? l)))
                                                          (assert x8298)))
                                                       (g8297
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8299
                                                                              (letrec ((x-cnd8300
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8300
                                                                                  0
                                                                                  (letrec ((x8301
                                                                                            (letrec ((x8302
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8302))))
                                                                                    (+
                                                                                     1
                                                                                     x8301))))))
                                                                      g8299))))
                                                          (letrec ((g8303
                                                                    (rec l)))
                                                            g8303))))
                                                g8297)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8304
                                                        (letrec ((x8307
                                                                  (char? c1)))
                                                          (assert x8307)))
                                                       (g8305
                                                        (letrec ((x8308
                                                                  (char? c2)))
                                                          (assert x8308)))
                                                       (g8306
                                                        (letrec ((val7260
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8309
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8309))))
                                                g8306)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8310
                                                        (letrec ((x8311
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8311))))
                                                g8310)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8312
                                                        (letrec ((x8313
                                                                  (letrec ((x8314
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8314))))
                                                          (cdr x8313))))
                                                g8312)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8315
                                                        (letrec ((x8317
                                                                  (list? l)))
                                                          (assert x8317)))
                                                       (g8316
                                                        (letrec ((x-cnd8318
                                                                  (null? l)))
                                                          (if x-cnd8318
                                                            #f
                                                            (letrec ((x-cnd8319
                                                                      (letrec ((x8320
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8320
                                                                         k))))
                                                              (if x-cnd8319
                                                                (car l)
                                                                (letrec ((x8321
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8321))))))))
                                                g8316)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8322
                                                        (letrec ((x8323
                                                                  (car x)))
                                                          (car x8323))))
                                                g8322)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8324
                                                        (letrec ((x8327
                                                                  (char? c1)))
                                                          (assert x8327)))
                                                       (g8325
                                                        (letrec ((x8328
                                                                  (char? c2)))
                                                          (assert x8328)))
                                                       (g8326
                                                        (letrec ((x8329
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8329))))
                                                g8326)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8330
                                                        (letrec ((val7261
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8331
                                                                    (if val7261
                                                                      val7261
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8331))))
                                                g8330)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8332
                                                        (letrec ((x8335
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8335)))
                                                       (g8333
                                                        (letrec ((x8336
                                                                  (list? l)))
                                                          (assert x8336)))
                                                       (g8334
                                                        (letrec ((x-cnd8337
                                                                  (null? l)))
                                                          (if x-cnd8337
                                                            #t
                                                            (letrec ((x-cnd8338
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8338
                                                                (letrec ((g8339
                                                                          (letrec ((x8341
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8341)))
                                                                         (g8340
                                                                          (letrec ((x8342
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8342))))
                                                                  g8340)
                                                                '()))))))
                                                g8334)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8343
                                                        (letrec ((x8345
                                                                  (number? x)))
                                                          (assert x8345)))
                                                       (g8344
                                                        (letrec ((x-cnd8346
                                                                  (< x 0)))
                                                          (if x-cnd8346
                                                            (- 0 x)
                                                            x))))
                                                g8344)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8347
                                                        (letrec ((x8350
                                                                  (char? c1)))
                                                          (assert x8350)))
                                                       (g8348
                                                        (letrec ((x8351
                                                                  (char? c2)))
                                                          (assert x8351)))
                                                       (g8349
                                                        (letrec ((val7262
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8352
                                                                    (if val7262
                                                                      val7262
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8352))))
                                                g8349)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8353
                                                        (letrec ((x8354
                                                                  (letrec ((x8355
                                                                            (letrec ((x8356
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8356))))
                                                                    (cdr
                                                                     x8355))))
                                                          (car x8354))))
                                                g8353)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8357 #f)) g8357)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8358
                                                        (letrec ((x8360
                                                                  (letrec ((x8361
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8361)))
                                                                 (x8359
                                                                  (gcd m n)))
                                                          (/ x8360 x8359))))
                                                g8358)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8362
                                                        (letrec ((x8366
                                                                  (list? l)))
                                                          (assert x8366)))
                                                       (g8363
                                                        (letrec ((x8367
                                                                  (number?
                                                                   index)))
                                                          (assert x8367)))
                                                       (g8364
                                                        (letrec ((x8368
                                                                  (letrec ((x8369
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8369))))
                                                          (assert x8368)))
                                                       (g8365
                                                        (letrec ((x-cnd8370
                                                                  (= index 0)))
                                                          (if x-cnd8370
                                                            (car l)
                                                            (letrec ((x8372
                                                                      (cdr l))
                                                                     (x8371
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8372
                                                               x8371))))))
                                                g8365)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8373
                                                        (letrec ((x-cnd8374
                                                                  (= b 0)))
                                                          (if x-cnd8374
                                                            a
                                                            (letrec ((x8375
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8375))))))
                                                g8373)))
                                           (block
                                            (lambda (x7758 y7759 color7760)
                                              (letrec ((g8376
                                                        (letrec ((x8377
                                                                  (letrec ((x8378
                                                                            (letrec ((x8379
                                                                                      (orig-cons
                                                                                       color7760
                                                                                       '())))
                                                                              (orig-cons
                                                                               y7759
                                                                               x8379))))
                                                                    (orig-cons
                                                                     x7758
                                                                     x8378))))
                                                          (orig-cons
                                                           'block
                                                           x8377))))
                                                g8376)))
                                           (block?
                                            (lambda (block7757)
                                              (letrec ((g8380
                                                        (letrec ((x8381
                                                                  (car
                                                                   block7757)))
                                                          (eq? x8381 'block))))
                                                g8380)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g8382
                                                        (letrec ((x8383
                                                                  (orig-cdr
                                                                   block)))
                                                          (orig-car x8383))))
                                                g8382)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g8384
                                                        (letrec ((x8385
                                                                  (letrec ((x8386
                                                                            (orig-cdr
                                                                             block)))
                                                                    (orig-cdr
                                                                     x8386))))
                                                          (orig-car x8385))))
                                                g8384)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g8387
                                                        (letrec ((x8388
                                                                  (letrec ((x8389
                                                                            (letrec ((x8390
                                                                                      (orig-cdr
                                                                                       block)))
                                                                              (orig-cdr
                                                                               x8390))))
                                                                    (orig-cdr
                                                                     x8389))))
                                                          (orig-car x8388))))
                                                g8387)))
                                           (tetra
                                            (lambda (center7765 blocks7766)
                                              (letrec ((g8391
                                                        (letrec ((x8392
                                                                  (letrec ((x8393
                                                                            (orig-cons
                                                                             blocks7766
                                                                             '())))
                                                                    (orig-cons
                                                                     center7765
                                                                     x8393))))
                                                          (orig-cons
                                                           'tetra
                                                           x8392))))
                                                g8391)))
                                           (tetra?
                                            (lambda (tetra7764)
                                              (letrec ((g8394
                                                        (letrec ((x8395
                                                                  (car
                                                                   tetra7764)))
                                                          (eq? x8395 'tetra))))
                                                g8394)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g8396
                                                        (letrec ((x8397
                                                                  (orig-cdr
                                                                   tetra)))
                                                          (orig-car x8397))))
                                                g8396)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g8398
                                                        (letrec ((x8399
                                                                  (letrec ((x8400
                                                                            (orig-cdr
                                                                             tetra)))
                                                                    (orig-cdr
                                                                     x8400))))
                                                          (orig-car x8399))))
                                                g8398)))
                                           (world
                                            (lambda (tetra7770 blocks7771)
                                              (letrec ((g8401
                                                        (letrec ((x8402
                                                                  (letrec ((x8403
                                                                            (orig-cons
                                                                             blocks7771
                                                                             '())))
                                                                    (orig-cons
                                                                     tetra7770
                                                                     x8403))))
                                                          (orig-cons
                                                           'world
                                                           x8402))))
                                                g8401)))
                                           (world?
                                            (lambda (world7769)
                                              (letrec ((g8404
                                                        (letrec ((x8405
                                                                  (car
                                                                   world7769)))
                                                          (eq? x8405 'world))))
                                                g8404)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g8406
                                                        (letrec ((x8407
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8407))))
                                                g8406)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g8408
                                                        (letrec ((x8409
                                                                  (letrec ((x8410
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8410))))
                                                          (orig-car x8409))))
                                                g8408)))
                                           (posn
                                            (lambda (x7775 y7776)
                                              (letrec ((g8411
                                                        (letrec ((x8412
                                                                  (letrec ((x8413
                                                                            (orig-cons
                                                                             y7776
                                                                             '())))
                                                                    (orig-cons
                                                                     x7775
                                                                     x8413))))
                                                          (orig-cons
                                                           'posn
                                                           x8412))))
                                                g8411)))
                                           (posn?
                                            (lambda (posn7774)
                                              (letrec ((g8414
                                                        (letrec ((x8415
                                                                  (car
                                                                   posn7774)))
                                                          (eq? x8415 'posn))))
                                                g8414)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8416
                                                        (letrec ((x8417
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8417))))
                                                g8416)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8418
                                                        (letrec ((x8419
                                                                  (letrec ((x8420
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8420))))
                                                          (orig-car x8419))))
                                                g8418)))
                                           (COLOR/C symbol?/c)
                                           (POSN/C
                                            (lambda (j7406 k7407 v7405)
                                              (letrec ((g8421
                                                        (letrec ((checked7408
                                                                  (letrec ((x8422
                                                                            (letrec ((x8423
                                                                                      (orig-cdr
                                                                                       v7405)))
                                                                              (orig-car
                                                                               x8423))))
                                                                    (real?/c
                                                                     j7406
                                                                     k7407
                                                                     x8422))))
                                                          (letrec ((g8424
                                                                    (letrec ((checked7409
                                                                              (letrec ((x8425
                                                                                        (letrec ((x8426
                                                                                                  (letrec ((x8427
                                                                                                            (orig-cdr
                                                                                                             v7405)))
                                                                                                    (orig-cdr
                                                                                                     x8427))))
                                                                                          (orig-car
                                                                                           x8426))))
                                                                                (real?/c
                                                                                 j7406
                                                                                 k7407
                                                                                 x8425))))
                                                                      (letrec ((g8428
                                                                                (letrec ((x8429
                                                                                          (letrec ((x8430
                                                                                                    (cons
                                                                                                     checked7409
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7408
                                                                                             x8430))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8429))))
                                                                        g8428))))
                                                            g8424))))
                                                g8421)))
                                           (BLOCK/C
                                            (lambda (j7412 k7413 v7411)
                                              (letrec ((g8431
                                                        (letrec ((checked7414
                                                                  (letrec ((x8432
                                                                            (letrec ((x8433
                                                                                      (orig-cdr
                                                                                       v7411)))
                                                                              (orig-car
                                                                               x8433))))
                                                                    (real?/c
                                                                     j7412
                                                                     k7413
                                                                     x8432))))
                                                          (letrec ((g8434
                                                                    (letrec ((checked7415
                                                                              (letrec ((x8435
                                                                                        (letrec ((x8436
                                                                                                  (letrec ((x8437
                                                                                                            (orig-cdr
                                                                                                             v7411)))
                                                                                                    (orig-cdr
                                                                                                     x8437))))
                                                                                          (orig-car
                                                                                           x8436))))
                                                                                (real?/c
                                                                                 j7412
                                                                                 k7413
                                                                                 x8435))))
                                                                      (letrec ((g8438
                                                                                (letrec ((checked7416
                                                                                          (letrec ((x8439
                                                                                                    (letrec ((x8440
                                                                                                              (letrec ((x8441
                                                                                                                        (letrec ((x8442
                                                                                                                                  (orig-cdr
                                                                                                                                   v7411)))
                                                                                                                          (orig-cdr
                                                                                                                           x8442))))
                                                                                                                (orig-cdr
                                                                                                                 x8441))))
                                                                                                      (orig-car
                                                                                                       x8440))))
                                                                                            (COLOR/C
                                                                                             j7412
                                                                                             k7413
                                                                                             x8439))))
                                                                                  (letrec ((g8443
                                                                                            (letrec ((x8444
                                                                                                      (letrec ((x8445
                                                                                                                (letrec ((x8446
                                                                                                                          (cons
                                                                                                                           checked7416
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked7415
                                                                                                                   x8446))))
                                                                                                        (cons
                                                                                                         checked7414
                                                                                                         x8445))))
                                                                                              (cons
                                                                                               block
                                                                                               x8444))))
                                                                                    g8443))))
                                                                        g8438))))
                                                            g8434))))
                                                g8431)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j7419 k7420 v7418)
                                              (letrec ((g8447
                                                        (letrec ((checked7421
                                                                  (letrec ((x8448
                                                                            (letrec ((x8449
                                                                                      (orig-cdr
                                                                                       v7418)))
                                                                              (orig-car
                                                                               x8449))))
                                                                    (POSN/C
                                                                     j7419
                                                                     k7420
                                                                     x8448))))
                                                          (letrec ((g8450
                                                                    (letrec ((checked7422
                                                                              (letrec ((x8451
                                                                                        (letrec ((x8452
                                                                                                  (letrec ((x8453
                                                                                                            (orig-cdr
                                                                                                             v7418)))
                                                                                                    (orig-cdr
                                                                                                     x8453))))
                                                                                          (orig-car
                                                                                           x8452))))
                                                                                (BSET/C
                                                                                 j7419
                                                                                 k7420
                                                                                 x8451))))
                                                                      (letrec ((g8454
                                                                                (letrec ((x8455
                                                                                          (letrec ((x8456
                                                                                                    (cons
                                                                                                     checked7422
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7421
                                                                                             x8456))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x8455))))
                                                                        g8454))))
                                                            g8450))))
                                                g8447)))
                                           (WORLD/C
                                            (lambda (j7425 k7426 v7424)
                                              (letrec ((g8457
                                                        (letrec ((checked7427
                                                                  (letrec ((x8458
                                                                            (letrec ((x8459
                                                                                      (orig-cdr
                                                                                       v7424)))
                                                                              (orig-car
                                                                               x8459))))
                                                                    (TETRA/C
                                                                     j7425
                                                                     k7426
                                                                     x8458))))
                                                          (letrec ((g8460
                                                                    (letrec ((checked7428
                                                                              (letrec ((x8461
                                                                                        (letrec ((x8462
                                                                                                  (letrec ((x8463
                                                                                                            (orig-cdr
                                                                                                             v7424)))
                                                                                                    (orig-cdr
                                                                                                     x8463))))
                                                                                          (orig-car
                                                                                           x8462))))
                                                                                (BSET/C
                                                                                 j7425
                                                                                 k7426
                                                                                 x8461))))
                                                                      (letrec ((g8464
                                                                                (letrec ((x8465
                                                                                          (letrec ((x8466
                                                                                                    (cons
                                                                                                     checked7428
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7427
                                                                                             x8466))))
                                                                                  (cons
                                                                                   world
                                                                                   x8465))))
                                                                        g8464))))
                                                            g8460))))
                                                g8457)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8467
                                                        (letrec ((x-cnd8468
                                                                  (letrec ((x8470
                                                                            (posn-x
                                                                             p1))
                                                                           (x8469
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8470
                                                                     x8469))))
                                                          (if x-cnd8468
                                                            (letrec ((x8472
                                                                      (posn-y
                                                                       p1))
                                                                     (x8471
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8472 x8471))
                                                            #f))))
                                                g8467)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g8473
                                                        (letrec ((x-cnd8474
                                                                  (letrec ((x8476
                                                                            (block-x
                                                                             b1))
                                                                           (x8475
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x8476
                                                                     x8475))))
                                                          (if x-cnd8474
                                                            (letrec ((x8478
                                                                      (block-y
                                                                       b1))
                                                                     (x8477
                                                                      (block-y
                                                                       b2)))
                                                              (= x8478 x8477))
                                                            #f))))
                                                g8473)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g8479
                                                        (letrec ((x8483
                                                                  (letrec ((x8484
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x8484)))
                                                                 (x8481
                                                                  (letrec ((x8482
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x8482)))
                                                                 (x8480
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8483
                                                           x8481
                                                           x8480))))
                                                g8479)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g8485
                                                        (letrec ((x8492
                                                                  (letrec ((x8496
                                                                            (posn-x
                                                                             c))
                                                                           (x8493
                                                                            (letrec ((x8495
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x8494
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x8495
                                                                               x8494))))
                                                                    (+
                                                                     x8496
                                                                     x8493)))
                                                                 (x8487
                                                                  (letrec ((x8491
                                                                            (posn-y
                                                                             c))
                                                                           (x8488
                                                                            (letrec ((x8490
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8489
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x8490
                                                                               x8489))))
                                                                    (+
                                                                     x8491
                                                                     x8488)))
                                                                 (x8486
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8492
                                                           x8487
                                                           x8486))))
                                                g8485)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g8497
                                                        (letrec ((x8498
                                                                  (letrec ((x8499
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x8499))))
                                                          (block-rotate-ccw
                                                           c
                                                           x8498))))
                                                g8497)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g8500
                                                        (letrec ((x-cnd8501
                                                                  (null? xs)))
                                                          (if x-cnd8501
                                                            (letrec ((g8502
                                                                      #f))
                                                              g8502)
                                                            (letrec ((g8503
                                                                      (letrec ((x8506
                                                                                (letrec ((x8507
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8507)))
                                                                               (x8504
                                                                                (letrec ((x8505
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (ormap
                                                                                   p?
                                                                                   x8505))))
                                                                        (or x8506
                                                                            x8504))))
                                                              g8503)))))
                                                g8500)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g8508
                                                        (letrec ((x-cnd8509
                                                                  (null? xs)))
                                                          (if x-cnd8509
                                                            (letrec ((g8510
                                                                      #t))
                                                              g8510)
                                                            (letrec ((g8511
                                                                      (letrec ((x8514
                                                                                (letrec ((x8515
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8515)))
                                                                               (x8512
                                                                                (letrec ((x8513
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (andmap
                                                                                   p?
                                                                                   x8513))))
                                                                        (and x8514
                                                                             x8512))))
                                                              g8511)))))
                                                g8508)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g8516
                                                        (letrec ((x-cnd8517
                                                                  (null? xs)))
                                                          (if x-cnd8517
                                                            (letrec ((g8518
                                                                      null))
                                                              g8518)
                                                            (letrec ((x-cnd8519
                                                                      (letrec ((x8520
                                                                                (car
                                                                                 xs)))
                                                                        (p?
                                                                         x8520))))
                                                              (if x-cnd8519
                                                                (letrec ((g8521
                                                                          (letrec ((x8524
                                                                                    (car
                                                                                     xs))
                                                                                   (x8522
                                                                                    (letrec ((x8523
                                                                                              (cdr
                                                                                               xs)))
                                                                                      (filter
                                                                                       p?
                                                                                       x8523))))
                                                                            (cons
                                                                             x8524
                                                                             x8522))))
                                                                  g8521)
                                                                (letrec ((g8525
                                                                          (letrec ((x8526
                                                                                    (cdr
                                                                                     xs)))
                                                                            (filter
                                                                             p?
                                                                             x8526))))
                                                                  g8525)))))))
                                                g8516)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g8527
                                                        (letrec ((x-cnd8528
                                                                  (null? l)))
                                                          (if x-cnd8528
                                                            (letrec ((g8529 r))
                                                              g8529)
                                                            (letrec ((g8530
                                                                      (letrec ((x8533
                                                                                (car
                                                                                 l))
                                                                               (x8531
                                                                                (letrec ((x8532
                                                                                          (cdr
                                                                                           l)))
                                                                                  (append
                                                                                   x8532
                                                                                   r))))
                                                                        (cons
                                                                         x8533
                                                                         x8531))))
                                                              g8530)))))
                                                g8527)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g8534
                                                        (letrec ((x-cnd8535
                                                                  (null? xs)))
                                                          (if x-cnd8535
                                                            (letrec ((g8536 a))
                                                              g8536)
                                                            (letrec ((g8537
                                                                      (letrec ((x8540
                                                                                (car
                                                                                 xs))
                                                                               (x8538
                                                                                (letrec ((x8539
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (foldr
                                                                                   f
                                                                                   a
                                                                                   x8539))))
                                                                        (f
                                                                         x8540
                                                                         x8538))))
                                                              g8537)))))
                                                g8534)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g8541
                                                        (ormap
                                                         (lambda (c)
                                                           (letrec ((g8542
                                                                     (block=?
                                                                      b
                                                                      c)))
                                                             g8542))
                                                         bs)))
                                                g8541)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8543
                                                        (andmap
                                                         (lambda (b)
                                                           (letrec ((g8544
                                                                     (blocks-contains?
                                                                      bs2
                                                                      b)))
                                                             g8544))
                                                         bs1)))
                                                g8543)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8545
                                                        (letrec ((x-cnd8546
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd8546
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g8545)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g8547
                                                        (filter
                                                         (lambda (b)
                                                           (letrec ((g8548
                                                                     (blocks-contains?
                                                                      bs2
                                                                      b)))
                                                             g8548))
                                                         bs1)))
                                                g8547)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g8549 (length bs)))
                                                g8549)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g8550
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8551
                                                                     (block-move
                                                                      dx
                                                                      dy
                                                                      b)))
                                                             g8551))
                                                         bs)))
                                                g8550)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g8552
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8553
                                                                     (block-rotate-ccw
                                                                      c
                                                                      b)))
                                                             g8553))
                                                         bs)))
                                                g8552)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g8554
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8555
                                                                     (block-rotate-cw
                                                                      c
                                                                      b)))
                                                             g8555))
                                                         bs)))
                                                g8554)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g8556
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8557
                                                                     (letrec ((x8559
                                                                               (block-x
                                                                                b))
                                                                              (x8558
                                                                               (block-y
                                                                                b)))
                                                                       (block
                                                                        x8559
                                                                        x8558
                                                                        c))))
                                                             g8557))
                                                         bs)))
                                                g8556)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g8560
                                                        (filter
                                                         (lambda (b)
                                                           (letrec ((g8561
                                                                     (letrec ((x8562
                                                                               (block-y
                                                                                b)))
                                                                       (=
                                                                        i
                                                                        x8562))))
                                                             g8561))
                                                         bs)))
                                                g8560)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g8563
                                                        (letrec ((x8564
                                                                  (letrec ((x8565
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x8565))))
                                                          (=
                                                           board-width
                                                           x8564))))
                                                g8563)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g8566
                                                        (ormap
                                                         (lambda (b)
                                                           (letrec ((g8567
                                                                     (letrec ((x8568
                                                                               (block-y
                                                                                b)))
                                                                       (<=
                                                                        x8568
                                                                        0))))
                                                             g8567))
                                                         bs)))
                                                g8566)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g8569
                                                        (foldr
                                                         (lambda (b bs)
                                                           (letrec ((g8570
                                                                     (letrec ((x-cnd8571
                                                                               (blocks-contains?
                                                                                bs
                                                                                b)))
                                                                       (if x-cnd8571
                                                                         (letrec ((g8572
                                                                                   bs))
                                                                           g8572)
                                                                         (letrec ((g8573
                                                                                   (cons
                                                                                    b
                                                                                    bs)))
                                                                           g8573)))))
                                                             g8570))
                                                         bs2
                                                         bs1)))
                                                g8569)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g8574
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8575
                                                                     (letrec ((x8576
                                                                               (block-y
                                                                                b)))
                                                                       (max
                                                                        x8576
                                                                        n))))
                                                             g8575))
                                                         0
                                                         bs)))
                                                g8574)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g8577
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8578
                                                                     (letrec ((x8579
                                                                               (block-x
                                                                                b)))
                                                                       (min
                                                                        x8579
                                                                        n))))
                                                             g8578))
                                                         board-width
                                                         bs)))
                                                g8577)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g8580
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8581
                                                                     (letrec ((x8582
                                                                               (block-x
                                                                                b)))
                                                                       (max
                                                                        x8582
                                                                        n))))
                                                             g8581))
                                                         0
                                                         bs)))
                                                g8580)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g8583
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g8583)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g8584
                                                        (letrec ((x-cnd8585
                                                                  (< i 0)))
                                                          (if x-cnd8585
                                                            (letrec ((g8586
                                                                      empty))
                                                              g8586)
                                                            (letrec ((x-cnd8587
                                                                      (full-row?
                                                                       bs
                                                                       i)))
                                                              (if x-cnd8587
                                                                (letrec ((g8588
                                                                          (letrec ((x8590
                                                                                    (sub1
                                                                                     i))
                                                                                   (x8589
                                                                                    (add1
                                                                                     offset)))
                                                                            (elim-row
                                                                             bs
                                                                             x8590
                                                                             x8589))))
                                                                  g8588)
                                                                (letrec ((g8591
                                                                          (letrec ((x8594
                                                                                    (letrec ((x8595
                                                                                              (sub1
                                                                                               i)))
                                                                                      (elim-row
                                                                                       bs
                                                                                       x8595
                                                                                       offset)))
                                                                                   (x8592
                                                                                    (letrec ((x8593
                                                                                              (blocks-row
                                                                                               bs
                                                                                               i)))
                                                                                      (blocks-move
                                                                                       0
                                                                                       offset
                                                                                       x8593))))
                                                                            (blocks-union
                                                                             x8594
                                                                             x8592))))
                                                                  g8591)))))))
                                                g8584)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g8596
                                                        (letrec ((x8599
                                                                  (letrec ((x8603
                                                                            (letrec ((x8604
                                                                                      (letrec ((x8605
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x8605))))
                                                                              (+
                                                                               dx
                                                                               x8604)))
                                                                           (x8600
                                                                            (letrec ((x8601
                                                                                      (letrec ((x8602
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x8602))))
                                                                              (+
                                                                               dy
                                                                               x8601))))
                                                                    (posn
                                                                     x8603
                                                                     x8600)))
                                                                 (x8597
                                                                  (letrec ((x8598
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x8598))))
                                                          (tetra
                                                           x8599
                                                           x8597))))
                                                g8596)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g8606
                                                        (letrec ((x8610
                                                                  (tetra-center
                                                                   t))
                                                                 (x8607
                                                                  (letrec ((x8609
                                                                            (tetra-center
                                                                             t))
                                                                           (x8608
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8609
                                                                     x8608))))
                                                          (tetra
                                                           x8610
                                                           x8607))))
                                                g8606)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8611
                                                        (letrec ((x8615
                                                                  (tetra-center
                                                                   t))
                                                                 (x8612
                                                                  (letrec ((x8614
                                                                            (tetra-center
                                                                             t))
                                                                           (x8613
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8614
                                                                     x8613))))
                                                          (tetra
                                                           x8615
                                                           x8612))))
                                                g8611)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8616
                                                        (letrec ((x8617
                                                                  (letrec ((x8618
                                                                            (letrec ((x8619
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8619
                                                                               bs))))
                                                                    (false?
                                                                     x8618))))
                                                          (false? x8617))))
                                                g8616)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8620
                                                        (letrec ((x8623
                                                                  (tetra-center
                                                                   t))
                                                                 (x8621
                                                                  (letrec ((x8622
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8622
                                                                     c))))
                                                          (tetra
                                                           x8623
                                                           x8621))))
                                                g8620)))
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
                                              (letrec ((g8624
                                                        (letrec ((x8625
                                                                  (letrec ((x8631
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8626
                                                                            (letrec ((x8630
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8629
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8628
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8627
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8630
                                                                               x8629
                                                                               x8628
                                                                               x8627))))
                                                                    (tetra
                                                                     x8631
                                                                     x8626))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8625))))
                                                g8624)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8632
                                                        (letrec ((x8638
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8633
                                                                  (letrec ((x8634
                                                                            (letrec ((x8636
                                                                                      (letrec ((x8637
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8637)))
                                                                                     (x8635
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8636
                                                                               x8635))))
                                                                    (eliminate-full-rows
                                                                     x8634))))
                                                          (world
                                                           x8638
                                                           x8633))))
                                                g8632)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8639
                                                        (letrec ((x-cnd8640
                                                                  (landed? w)))
                                                          (if x-cnd8640
                                                            (letrec ((g8641 w))
                                                              g8641)
                                                            (letrec ((g8642
                                                                      (letrec ((x8643
                                                                                (letrec ((x8645
                                                                                          (letrec ((x8646
                                                                                                    (world-tetra
                                                                                                     w)))
                                                                                            (tetra-move
                                                                                             0
                                                                                             1
                                                                                             x8646)))
                                                                                         (x8644
                                                                                          (world-blocks
                                                                                           w)))
                                                                                  (world
                                                                                   x8645
                                                                                   x8644))))
                                                                        (world-jump-down
                                                                         x8643))))
                                                              g8642)))))
                                                g8639)))
                                           (landed-on-blocks?
                                            (lambda (w)
                                              (letrec ((g8647
                                                        (letrec ((x8649
                                                                  (letrec ((x8650
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     0
                                                                     1
                                                                     x8650)))
                                                                 (x8648
                                                                  (world-blocks
                                                                   w)))
                                                          (tetra-overlaps-blocks?
                                                           x8649
                                                           x8648))))
                                                g8647)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8651
                                                        (letrec ((x8653
                                                                  (letrec ((x8654
                                                                            (letrec ((x8655
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8655))))
                                                                    (blocks-max-y
                                                                     x8654)))
                                                                 (x8652
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8653 x8652))))
                                                g8651)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8656
                                                        (letrec ((val7263
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8657
                                                                    (if val7263
                                                                      val7263
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8657))))
                                                g8656)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8658
                                                        (letrec ((x-cnd8659
                                                                  (landed? w)))
                                                          (if x-cnd8659
                                                            (letrec ((g8660
                                                                      (touchdown
                                                                       w
                                                                       tetras)))
                                                              g8660)
                                                            (letrec ((g8661
                                                                      (letrec ((x8663
                                                                                (letrec ((x8664
                                                                                          (world-tetra
                                                                                           w)))
                                                                                  (tetra-move
                                                                                   0
                                                                                   1
                                                                                   x8664)))
                                                                               (x8662
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         x8663
                                                                         x8662))))
                                                              g8661)))))
                                                g8658)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8665
                                                        (letrec ((x-cnd8666
                                                                  (letrec ((val7264
                                                                            (letrec ((x8667
                                                                                      (letrec ((x8668
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-min-x
                                                                                         x8668))))
                                                                              (<
                                                                               x8667
                                                                               0))))
                                                                    (letrec ((g8669
                                                                              (if val7264
                                                                                val7264
                                                                                (letrec ((val7265
                                                                                          (letrec ((x8670
                                                                                                    (letrec ((x8671
                                                                                                              (tetra-blocks
                                                                                                               new-tetra)))
                                                                                                      (blocks-max-x
                                                                                                       x8671))))
                                                                                            (>=
                                                                                             x8670
                                                                                             board-width))))
                                                                                  (letrec ((g8672
                                                                                            (if val7265
                                                                                              val7265
                                                                                              (letrec ((x8673
                                                                                                        (world-blocks
                                                                                                         w)))
                                                                                                (tetra-overlaps-blocks?
                                                                                                 new-tetra
                                                                                                 x8673)))))
                                                                                    g8672)))))
                                                                      g8669))))
                                                          (if x-cnd8666
                                                            (letrec ((g8674 w))
                                                              g8674)
                                                            (letrec ((g8675
                                                                      (letrec ((x8676
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         new-tetra
                                                                         x8676))))
                                                              g8675)))))
                                                g8665)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8677
                                                        (letrec ((x8678
                                                                  (letrec ((x8679
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8679))))
                                                          (try-new-tetra
                                                           w
                                                           x8678))))
                                                g8677)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8680
                                                        (letrec ((x8681
                                                                  (letrec ((x8682
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8682))))
                                                          (try-new-tetra
                                                           w
                                                           x8681))))
                                                g8680)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8683
                                                        (letrec ((x8684
                                                                  (letrec ((x8685
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8685))))
                                                          (try-new-tetra
                                                           w
                                                           x8684))))
                                                g8683)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8686
                                                        (letrec ((x8687
                                                                  (letrec ((x8688
                                                                            (letrec ((x8689
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8689))))
                                                                    (tetra-change-color
                                                                     x8688
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8687))))
                                                g8686)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8690
                                                        (letrec ((x-cnd8691
                                                                  (equal?
                                                                   k
                                                                   "left")))
                                                          (if x-cnd8691
                                                            (letrec ((g8692
                                                                      (world-move
                                                                       neg-1
                                                                       0
                                                                       w)))
                                                              g8692)
                                                            (letrec ((x-cnd8693
                                                                      (equal?
                                                                       k
                                                                       "right")))
                                                              (if x-cnd8693
                                                                (letrec ((g8694
                                                                          (world-move
                                                                           1
                                                                           0
                                                                           w)))
                                                                  g8694)
                                                                (letrec ((x-cnd8695
                                                                          (equal?
                                                                           k
                                                                           "down")))
                                                                  (if x-cnd8695
                                                                    (letrec ((g8696
                                                                              (world-jump-down
                                                                               w)))
                                                                      g8696)
                                                                    (letrec ((x-cnd8697
                                                                              (equal?
                                                                               k
                                                                               "a")))
                                                                      (if x-cnd8697
                                                                        (letrec ((g8698
                                                                                  (world-rotate-ccw
                                                                                   w)))
                                                                          g8698)
                                                                        (letrec ((x-cnd8699
                                                                                  (equal?
                                                                                   k
                                                                                   "s")))
                                                                          (if x-cnd8699
                                                                            (letrec ((g8700
                                                                                      (world-rotate-cw
                                                                                       w)))
                                                                              g8700)
                                                                            (letrec ((g8701
                                                                                      w))
                                                                              g8701)))))))))))))
                                                g8690)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8702
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8702)))
                                           (image?
                                            (lambda (image7779)
                                              (letrec ((g8703
                                                        (letrec ((x8704
                                                                  (car
                                                                   image7779)))
                                                          (eq? x8704 'image))))
                                                g8703)))
                                           (image/c
                                            (lambda (j7431 k7432 v7430)
                                              (letrec ((g8705
                                                        (cons image '())))
                                                g8705)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8706 (image)))
                                                g8706)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8707 (image)))
                                                g8707)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8708 (image)))
                                                g8708)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8709 (image)))
                                                g8709)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8710 (image)))
                                                g8710)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8711
                                                        (letrec ((x-cnd8712
                                                                  (letrec ((x8713
                                                                            (cdr
                                                                             xs)))
                                                                    (null?
                                                                     x8713))))
                                                          (if x-cnd8712
                                                            (letrec ((g8714
                                                                      (car
                                                                       xs)))
                                                              g8714)
                                                            (letrec ((g8715
                                                                      (letrec ((x8716
                                                                                (cdr
                                                                                 xs)))
                                                                        (list-pick-random
                                                                         x8716))))
                                                              g8715)))))
                                                g8711)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8717
                                                        (letrec ((x8721
                                                                  (letrec ((x8722
                                                                            (letrec ((x8726
                                                                                      (letrec ((x8727
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8727)))
                                                                                     (x8723
                                                                                      (letrec ((x8725
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8724
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8725
                                                                                         x8724))))
                                                                              (append
                                                                               x8726
                                                                               x8723))))
                                                                    (blocks->image
                                                                     x8722)))
                                                                 (x8718
                                                                  (letrec ((x8720
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8719
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8720
                                                                     x8719))))
                                                          (place-image
                                                           x8721
                                                           0
                                                           0
                                                           x8718))))
                                                g8717)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8728
                                                        (letrec ((x8729
                                                                  (letrec ((x8732
                                                                            (letrec ((x8733
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8733)))
                                                                           (x8730
                                                                            (letrec ((x8731
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8731))))
                                                                    (empty-scene
                                                                     x8732
                                                                     x8730))))
                                                          (foldr
                                                           (lambda (b img)
                                                             (letrec ((g8734
                                                                       (letrec ((x-cnd8735
                                                                                 (letrec ((x8736
                                                                                           (block-y
                                                                                            b)))
                                                                                   (<=
                                                                                    0
                                                                                    x8736))))
                                                                         (if x-cnd8735
                                                                           (letrec ((g8737
                                                                                     (place-block
                                                                                      b
                                                                                      img)))
                                                                             g8737)
                                                                           (letrec ((g8738
                                                                                     img))
                                                                             g8738)))))
                                                               g8734))
                                                           x8729
                                                           bs))))
                                                g8728)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8739
                                                        (letrec ((x8743
                                                                  (letrec ((x8746
                                                                            (add1
                                                                             block-size))
                                                                           (x8745
                                                                            (add1
                                                                             block-size))
                                                                           (x8744
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8746
                                                                     x8745
                                                                     'solid
                                                                     x8744)))
                                                                 (x8740
                                                                  (letrec ((x8742
                                                                            (add1
                                                                             block-size))
                                                                           (x8741
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8742
                                                                     x8741
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8743
                                                           x8740))))
                                                g8739)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8747
                                                        (letrec ((x8756
                                                                  (block->image
                                                                   b))
                                                                 (x8752
                                                                  (letrec ((x8754
                                                                            (letrec ((x8755
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8755
                                                                               block-size)))
                                                                           (x8753
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8754
                                                                     x8753)))
                                                                 (x8748
                                                                  (letrec ((x8750
                                                                            (letrec ((x8751
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8751
                                                                               block-size)))
                                                                           (x8749
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8750
                                                                     x8749))))
                                                          (place-image
                                                           x8756
                                                           x8752
                                                           x8748
                                                           scene))))
                                                g8747)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8757
                                                        (letrec ((x8758
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8758 null))))
                                                g8757))))
                                    (letrec ((g8759
                                              (parallel
                                               (parallel
                                                (letrec ((x8770
                                                          (letrec ((xj7434
                                                                    (loc
                                                                     'module))
                                                                   (xk7435
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8771
                                                                      ((lambda (j7438
                                                                                k7439
                                                                                f7440)
                                                                         (letrec ((g8772
                                                                                   (lambda (g7436
                                                                                            g7437)
                                                                                     (letrec ((g8773
                                                                                               (letrec ((x8774
                                                                                                         (letrec ((x8776
                                                                                                                   (POSN/C
                                                                                                                    j7438
                                                                                                                    k7439
                                                                                                                    g7436))
                                                                                                                  (x8775
                                                                                                                   (POSN/C
                                                                                                                    j7438
                                                                                                                    k7439
                                                                                                                    g7437)))
                                                                                                           (f7440
                                                                                                            x8776
                                                                                                            x8775))))
                                                                                                 (boolean?/c
                                                                                                  j7438
                                                                                                  k7439
                                                                                                  x8774))))
                                                                                       g8773))))
                                                                           g8772))
                                                                       xj7434
                                                                       xk7435
                                                                       posn=?)))
                                                              g8771)))
                                                         (x8765
                                                          (letrec ((x8766
                                                                    (letrec ((x8769
                                                                              (input))
                                                                             (x8767
                                                                              (letrec ((x8768
                                                                                        (input)))
                                                                                (cons
                                                                                 x8768
                                                                                 '()))))
                                                                      (cons
                                                                       x8769
                                                                       x8767))))
                                                            (cons
                                                             'posn
                                                             x8766)))
                                                         (x8760
                                                          (letrec ((x8761
                                                                    (letrec ((x8764
                                                                              (input))
                                                                             (x8762
                                                                              (letrec ((x8763
                                                                                        (input)))
                                                                                (cons
                                                                                 x8763
                                                                                 '()))))
                                                                      (cons
                                                                       x8764
                                                                       x8762))))
                                                            (cons
                                                             'posn
                                                             x8761))))
                                                  (x8770 x8765 x8760))
                                                (letrec ((xj7441 (loc 'module))
                                                         (xk7442
                                                          (loc 'importer)))
                                                  (letrec ((g8777
                                                            (any/c
                                                             xj7441
                                                             xk7442
                                                             COLOR/C)))
                                                    g8777))
                                                (letrec ((xj7443 (loc 'module))
                                                         (xk7444
                                                          (loc 'importer)))
                                                  (letrec ((g8778
                                                            (any/c
                                                             xj7443
                                                             xk7444
                                                             POSN/C)))
                                                    g8778))
                                                (letrec ((xj7445 (loc 'module))
                                                         (xk7446
                                                          (loc 'importer)))
                                                  (letrec ((g8779
                                                            (any/c
                                                             xj7445
                                                             xk7446
                                                             BLOCK/C)))
                                                    g8779))
                                                (letrec ((xj7447 (loc 'module))
                                                         (xk7448
                                                          (loc 'importer)))
                                                  (letrec ((g8780
                                                            (any/c
                                                             xj7447
                                                             xk7448
                                                             TETRA/C)))
                                                    g8780))
                                                (letrec ((xj7449 (loc 'module))
                                                         (xk7450
                                                          (loc 'importer)))
                                                  (letrec ((g8781
                                                            (any/c
                                                             xj7449
                                                             xk7450
                                                             WORLD/C)))
                                                    g8781))
                                                (letrec ((xj7451 (loc 'module))
                                                         (xk7452
                                                          (loc 'importer)))
                                                  (letrec ((g8782
                                                            (any/c
                                                             xj7451
                                                             xk7452
                                                             BSET/C)))
                                                    g8782))
                                                (letrec ((xj7453 (loc 'module))
                                                         (xk7454
                                                          (loc 'importer)))
                                                  (letrec ((g8783
                                                            (integer?/c
                                                             xj7453
                                                             xk7454
                                                             block-size)))
                                                    g8783))
                                                (letrec ((xj7455 (loc 'module))
                                                         (xk7456
                                                          (loc 'importer)))
                                                  (letrec ((g8784
                                                            (integer?/c
                                                             xj7455
                                                             xk7456
                                                             board-width)))
                                                    g8784))
                                                (letrec ((xj7457 (loc 'module))
                                                         (xk7458
                                                          (loc 'importer)))
                                                  (letrec ((g8785
                                                            (integer?/c
                                                             xj7457
                                                             xk7458
                                                             board-height)))
                                                    g8785))
                                                (letrec ((x8798
                                                          (letrec ((xj7459
                                                                    (loc
                                                                     'module))
                                                                   (xk7460
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8799
                                                                      ((lambda (j7463
                                                                                k7464
                                                                                f7465)
                                                                         (letrec ((g8800
                                                                                   (lambda (g7461
                                                                                            g7462)
                                                                                     (letrec ((g8801
                                                                                               (letrec ((x8802
                                                                                                         (letrec ((x8804
                                                                                                                   (POSN/C
                                                                                                                    j7463
                                                                                                                    k7464
                                                                                                                    g7461))
                                                                                                                  (x8803
                                                                                                                   (BLOCK/C
                                                                                                                    j7463
                                                                                                                    k7464
                                                                                                                    g7462)))
                                                                                                           (f7465
                                                                                                            x8804
                                                                                                            x8803))))
                                                                                                 (BLOCK/C
                                                                                                  j7463
                                                                                                  k7464
                                                                                                  x8802))))
                                                                                       g8801))))
                                                                           g8800))
                                                                       xj7459
                                                                       xk7460
                                                                       block-rotate-ccw)))
                                                              g8799)))
                                                         (x8793
                                                          (letrec ((x8794
                                                                    (letrec ((x8797
                                                                              (input))
                                                                             (x8795
                                                                              (letrec ((x8796
                                                                                        (input)))
                                                                                (cons
                                                                                 x8796
                                                                                 '()))))
                                                                      (cons
                                                                       x8797
                                                                       x8795))))
                                                            (cons
                                                             'posn
                                                             x8794)))
                                                         (x8786
                                                          (letrec ((x8787
                                                                    (letrec ((x8792
                                                                              (input))
                                                                             (x8788
                                                                              (letrec ((x8791
                                                                                        (input))
                                                                                       (x8789
                                                                                        (letrec ((x8790
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8790
                                                                                           '()))))
                                                                                (cons
                                                                                 x8791
                                                                                 x8789))))
                                                                      (cons
                                                                       x8792
                                                                       x8788))))
                                                            (cons
                                                             'block
                                                             x8787))))
                                                  (x8798 x8793 x8786))
                                                (letrec ((x8817
                                                          (letrec ((xj7466
                                                                    (loc
                                                                     'module))
                                                                   (xk7467
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8818
                                                                      ((lambda (j7470
                                                                                k7471
                                                                                f7472)
                                                                         (letrec ((g8819
                                                                                   (lambda (g7468
                                                                                            g7469)
                                                                                     (letrec ((g8820
                                                                                               (letrec ((x8821
                                                                                                         (letrec ((x8823
                                                                                                                   (POSN/C
                                                                                                                    j7470
                                                                                                                    k7471
                                                                                                                    g7468))
                                                                                                                  (x8822
                                                                                                                   (BLOCK/C
                                                                                                                    j7470
                                                                                                                    k7471
                                                                                                                    g7469)))
                                                                                                           (f7472
                                                                                                            x8823
                                                                                                            x8822))))
                                                                                                 (BLOCK/C
                                                                                                  j7470
                                                                                                  k7471
                                                                                                  x8821))))
                                                                                       g8820))))
                                                                           g8819))
                                                                       xj7466
                                                                       xk7467
                                                                       block-rotate-cw)))
                                                              g8818)))
                                                         (x8812
                                                          (letrec ((x8813
                                                                    (letrec ((x8816
                                                                              (input))
                                                                             (x8814
                                                                              (letrec ((x8815
                                                                                        (input)))
                                                                                (cons
                                                                                 x8815
                                                                                 '()))))
                                                                      (cons
                                                                       x8816
                                                                       x8814))))
                                                            (cons
                                                             'posn
                                                             x8813)))
                                                         (x8805
                                                          (letrec ((x8806
                                                                    (letrec ((x8811
                                                                              (input))
                                                                             (x8807
                                                                              (letrec ((x8810
                                                                                        (input))
                                                                                       (x8808
                                                                                        (letrec ((x8809
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8809
                                                                                           '()))))
                                                                                (cons
                                                                                 x8810
                                                                                 x8808))))
                                                                      (cons
                                                                       x8811
                                                                       x8807))))
                                                            (cons
                                                             'block
                                                             x8806))))
                                                  (x8817 x8812 x8805))
                                                (letrec ((x8838
                                                          (letrec ((xj7473
                                                                    (loc
                                                                     'module))
                                                                   (xk7474
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8839
                                                                      ((lambda (j7477
                                                                                k7478
                                                                                f7479)
                                                                         (letrec ((g8840
                                                                                   (lambda (g7475
                                                                                            g7476)
                                                                                     (letrec ((g8841
                                                                                               (letrec ((x8842
                                                                                                         (letrec ((x8844
                                                                                                                   (BLOCK/C
                                                                                                                    j7477
                                                                                                                    k7478
                                                                                                                    g7475))
                                                                                                                  (x8843
                                                                                                                   (BLOCK/C
                                                                                                                    j7477
                                                                                                                    k7478
                                                                                                                    g7476)))
                                                                                                           (f7479
                                                                                                            x8844
                                                                                                            x8843))))
                                                                                                 (boolean?/c
                                                                                                  j7477
                                                                                                  k7478
                                                                                                  x8842))))
                                                                                       g8841))))
                                                                           g8840))
                                                                       xj7473
                                                                       xk7474
                                                                       block=?)))
                                                              g8839)))
                                                         (x8831
                                                          (letrec ((x8832
                                                                    (letrec ((x8837
                                                                              (input))
                                                                             (x8833
                                                                              (letrec ((x8836
                                                                                        (input))
                                                                                       (x8834
                                                                                        (letrec ((x8835
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8835
                                                                                           '()))))
                                                                                (cons
                                                                                 x8836
                                                                                 x8834))))
                                                                      (cons
                                                                       x8837
                                                                       x8833))))
                                                            (cons
                                                             'block
                                                             x8832)))
                                                         (x8824
                                                          (letrec ((x8825
                                                                    (letrec ((x8830
                                                                              (input))
                                                                             (x8826
                                                                              (letrec ((x8829
                                                                                        (input))
                                                                                       (x8827
                                                                                        (letrec ((x8828
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8828
                                                                                           '()))))
                                                                                (cons
                                                                                 x8829
                                                                                 x8827))))
                                                                      (cons
                                                                       x8830
                                                                       x8826))))
                                                            (cons
                                                             'block
                                                             x8825))))
                                                  (x8838 x8831 x8824))
                                                (letrec ((x8854
                                                          (letrec ((xj7480
                                                                    (loc
                                                                     'module))
                                                                   (xk7481
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8855
                                                                      ((lambda (j7485
                                                                                k7486
                                                                                f7487)
                                                                         (letrec ((g8856
                                                                                   (lambda (g7482
                                                                                            g7483
                                                                                            g7484)
                                                                                     (letrec ((g8857
                                                                                               (letrec ((x8858
                                                                                                         (letrec ((x8861
                                                                                                                   (real?/c
                                                                                                                    j7485
                                                                                                                    k7486
                                                                                                                    g7482))
                                                                                                                  (x8860
                                                                                                                   (real?/c
                                                                                                                    j7485
                                                                                                                    k7486
                                                                                                                    g7483))
                                                                                                                  (x8859
                                                                                                                   (BLOCK/C
                                                                                                                    j7485
                                                                                                                    k7486
                                                                                                                    g7484)))
                                                                                                           (f7487
                                                                                                            x8861
                                                                                                            x8860
                                                                                                            x8859))))
                                                                                                 (BLOCK/C
                                                                                                  j7485
                                                                                                  k7486
                                                                                                  x8858))))
                                                                                       g8857))))
                                                                           g8856))
                                                                       xj7480
                                                                       xk7481
                                                                       block-move)))
                                                              g8855)))
                                                         (x8853 (input))
                                                         (x8852 (input))
                                                         (x8845
                                                          (letrec ((x8846
                                                                    (letrec ((x8851
                                                                              (input))
                                                                             (x8847
                                                                              (letrec ((x8850
                                                                                        (input))
                                                                                       (x8848
                                                                                        (letrec ((x8849
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8849
                                                                                           '()))))
                                                                                (cons
                                                                                 x8850
                                                                                 x8848))))
                                                                      (cons
                                                                       x8851
                                                                       x8847))))
                                                            (cons
                                                             'block
                                                             x8846))))
                                                  (x8854 x8853 x8852 x8845))
                                                (letrec ((x8870
                                                          (letrec ((xj7488
                                                                    (loc
                                                                     'module))
                                                                   (xk7489
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8871
                                                                      ((lambda (j7492
                                                                                k7493
                                                                                f7494)
                                                                         (letrec ((g8872
                                                                                   (lambda (g7490
                                                                                            g7491)
                                                                                     (letrec ((g8873
                                                                                               (letrec ((x8874
                                                                                                         (letrec ((x8876
                                                                                                                   (BSET/C
                                                                                                                    j7492
                                                                                                                    k7493
                                                                                                                    g7490))
                                                                                                                  (x8875
                                                                                                                   (BLOCK/C
                                                                                                                    j7492
                                                                                                                    k7493
                                                                                                                    g7491)))
                                                                                                           (f7494
                                                                                                            x8876
                                                                                                            x8875))))
                                                                                                 (boolean?/c
                                                                                                  j7492
                                                                                                  k7493
                                                                                                  x8874))))
                                                                                       g8873))))
                                                                           g8872))
                                                                       xj7488
                                                                       xk7489
                                                                       blocks-contains?)))
                                                              g8871)))
                                                         (x8869 (input))
                                                         (x8862
                                                          (letrec ((x8863
                                                                    (letrec ((x8868
                                                                              (input))
                                                                             (x8864
                                                                              (letrec ((x8867
                                                                                        (input))
                                                                                       (x8865
                                                                                        (letrec ((x8866
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8866
                                                                                           '()))))
                                                                                (cons
                                                                                 x8867
                                                                                 x8865))))
                                                                      (cons
                                                                       x8868
                                                                       x8864))))
                                                            (cons
                                                             'block
                                                             x8863))))
                                                  (x8870 x8869 x8862))
                                                (letrec ((x8879
                                                          (letrec ((xj7495
                                                                    (loc
                                                                     'module))
                                                                   (xk7496
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8880
                                                                      ((lambda (j7499
                                                                                k7500
                                                                                f7501)
                                                                         (letrec ((g8881
                                                                                   (lambda (g7497
                                                                                            g7498)
                                                                                     (letrec ((g8882
                                                                                               (letrec ((x8883
                                                                                                         (letrec ((x8885
                                                                                                                   (BSET/C
                                                                                                                    j7499
                                                                                                                    k7500
                                                                                                                    g7497))
                                                                                                                  (x8884
                                                                                                                   (BSET/C
                                                                                                                    j7499
                                                                                                                    k7500
                                                                                                                    g7498)))
                                                                                                           (f7501
                                                                                                            x8885
                                                                                                            x8884))))
                                                                                                 (boolean?/c
                                                                                                  j7499
                                                                                                  k7500
                                                                                                  x8883))))
                                                                                       g8882))))
                                                                           g8881))
                                                                       xj7495
                                                                       xk7496
                                                                       blocks=?)))
                                                              g8880)))
                                                         (x8878 (input))
                                                         (x8877 (input)))
                                                  (x8879 x8878 x8877))
                                                (letrec ((x8888
                                                          (letrec ((xj7502
                                                                    (loc
                                                                     'module))
                                                                   (xk7503
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8889
                                                                      ((lambda (j7506
                                                                                k7507
                                                                                f7508)
                                                                         (letrec ((g8890
                                                                                   (lambda (g7504
                                                                                            g7505)
                                                                                     (letrec ((g8891
                                                                                               (letrec ((x8892
                                                                                                         (letrec ((x8894
                                                                                                                   (BSET/C
                                                                                                                    j7506
                                                                                                                    k7507
                                                                                                                    g7504))
                                                                                                                  (x8893
                                                                                                                   (BSET/C
                                                                                                                    j7506
                                                                                                                    k7507
                                                                                                                    g7505)))
                                                                                                           (f7508
                                                                                                            x8894
                                                                                                            x8893))))
                                                                                                 (boolean?/c
                                                                                                  j7506
                                                                                                  k7507
                                                                                                  x8892))))
                                                                                       g8891))))
                                                                           g8890))
                                                                       xj7502
                                                                       xk7503
                                                                       blocks-subset?)))
                                                              g8889)))
                                                         (x8887 (input))
                                                         (x8886 (input)))
                                                  (x8888 x8887 x8886))
                                                (letrec ((x8897
                                                          (letrec ((xj7509
                                                                    (loc
                                                                     'module))
                                                                   (xk7510
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8898
                                                                      ((lambda (j7513
                                                                                k7514
                                                                                f7515)
                                                                         (letrec ((g8899
                                                                                   (lambda (g7511
                                                                                            g7512)
                                                                                     (letrec ((g8900
                                                                                               (letrec ((x8901
                                                                                                         (letrec ((x8903
                                                                                                                   (BSET/C
                                                                                                                    j7513
                                                                                                                    k7514
                                                                                                                    g7511))
                                                                                                                  (x8902
                                                                                                                   (BSET/C
                                                                                                                    j7513
                                                                                                                    k7514
                                                                                                                    g7512)))
                                                                                                           (f7515
                                                                                                            x8903
                                                                                                            x8902))))
                                                                                                 (BSET/C
                                                                                                  j7513
                                                                                                  k7514
                                                                                                  x8901))))
                                                                                       g8900))))
                                                                           g8899))
                                                                       xj7509
                                                                       xk7510
                                                                       blocks-intersect)))
                                                              g8898)))
                                                         (x8896 (input))
                                                         (x8895 (input)))
                                                  (x8897 x8896 x8895))
                                                (letrec ((x8905
                                                          (letrec ((xj7516
                                                                    (loc
                                                                     'module))
                                                                   (xk7517
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8906
                                                                      ((lambda (j7519
                                                                                k7520
                                                                                f7521)
                                                                         (letrec ((g8907
                                                                                   (lambda (g7518)
                                                                                     (letrec ((g8908
                                                                                               (letrec ((x8909
                                                                                                         (letrec ((x8910
                                                                                                                   (BSET/C
                                                                                                                    j7519
                                                                                                                    k7520
                                                                                                                    g7518)))
                                                                                                           (f7521
                                                                                                            x8910))))
                                                                                                 (real?/c
                                                                                                  j7519
                                                                                                  k7520
                                                                                                  x8909))))
                                                                                       g8908))))
                                                                           g8907))
                                                                       xj7516
                                                                       xk7517
                                                                       blocks-count)))
                                                              g8906)))
                                                         (x8904 (input)))
                                                  (x8905 x8904))
                                                (letrec ((x8912
                                                          (letrec ((xj7522
                                                                    (loc
                                                                     'module))
                                                                   (xk7523
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8913
                                                                      ((lambda (j7525
                                                                                k7526
                                                                                f7527)
                                                                         (letrec ((g8914
                                                                                   (lambda (g7524)
                                                                                     (letrec ((g8915
                                                                                               (letrec ((x8916
                                                                                                         (letrec ((x8917
                                                                                                                   (BSET/C
                                                                                                                    j7525
                                                                                                                    k7526
                                                                                                                    g7524)))
                                                                                                           (f7527
                                                                                                            x8917))))
                                                                                                 (boolean?/c
                                                                                                  j7525
                                                                                                  k7526
                                                                                                  x8916))))
                                                                                       g8915))))
                                                                           g8914))
                                                                       xj7522
                                                                       xk7523
                                                                       blocks-overflow?)))
                                                              g8913)))
                                                         (x8911 (input)))
                                                  (x8912 x8911))
                                                (letrec ((x8921
                                                          (letrec ((xj7528
                                                                    (loc
                                                                     'module))
                                                                   (xk7529
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8922
                                                                      ((lambda (j7533
                                                                                k7534
                                                                                f7535)
                                                                         (letrec ((g8923
                                                                                   (lambda (g7530
                                                                                            g7531
                                                                                            g7532)
                                                                                     (letrec ((g8924
                                                                                               (letrec ((x8925
                                                                                                         (letrec ((x8928
                                                                                                                   (real?/c
                                                                                                                    j7533
                                                                                                                    k7534
                                                                                                                    g7530))
                                                                                                                  (x8927
                                                                                                                   (real?/c
                                                                                                                    j7533
                                                                                                                    k7534
                                                                                                                    g7531))
                                                                                                                  (x8926
                                                                                                                   (BSET/C
                                                                                                                    j7533
                                                                                                                    k7534
                                                                                                                    g7532)))
                                                                                                           (f7535
                                                                                                            x8928
                                                                                                            x8927
                                                                                                            x8926))))
                                                                                                 (BSET/C
                                                                                                  j7533
                                                                                                  k7534
                                                                                                  x8925))))
                                                                                       g8924))))
                                                                           g8923))
                                                                       xj7528
                                                                       xk7529
                                                                       blocks-move)))
                                                              g8922)))
                                                         (x8920 (input))
                                                         (x8919 (input))
                                                         (x8918 (input)))
                                                  (x8921 x8920 x8919 x8918))
                                                (letrec ((x8935
                                                          (letrec ((xj7536
                                                                    (loc
                                                                     'module))
                                                                   (xk7537
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8936
                                                                      ((lambda (j7540
                                                                                k7541
                                                                                f7542)
                                                                         (letrec ((g8937
                                                                                   (lambda (g7538
                                                                                            g7539)
                                                                                     (letrec ((g8938
                                                                                               (letrec ((x8939
                                                                                                         (letrec ((x8941
                                                                                                                   (POSN/C
                                                                                                                    j7540
                                                                                                                    k7541
                                                                                                                    g7538))
                                                                                                                  (x8940
                                                                                                                   (BSET/C
                                                                                                                    j7540
                                                                                                                    k7541
                                                                                                                    g7539)))
                                                                                                           (f7542
                                                                                                            x8941
                                                                                                            x8940))))
                                                                                                 (BSET/C
                                                                                                  j7540
                                                                                                  k7541
                                                                                                  x8939))))
                                                                                       g8938))))
                                                                           g8937))
                                                                       xj7536
                                                                       xk7537
                                                                       blocks-rotate-cw)))
                                                              g8936)))
                                                         (x8930
                                                          (letrec ((x8931
                                                                    (letrec ((x8934
                                                                              (input))
                                                                             (x8932
                                                                              (letrec ((x8933
                                                                                        (input)))
                                                                                (cons
                                                                                 x8933
                                                                                 '()))))
                                                                      (cons
                                                                       x8934
                                                                       x8932))))
                                                            (cons
                                                             'posn
                                                             x8931)))
                                                         (x8929 (input)))
                                                  (x8935 x8930 x8929))
                                                (letrec ((x8948
                                                          (letrec ((xj7543
                                                                    (loc
                                                                     'module))
                                                                   (xk7544
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8949
                                                                      ((lambda (j7547
                                                                                k7548
                                                                                f7549)
                                                                         (letrec ((g8950
                                                                                   (lambda (g7545
                                                                                            g7546)
                                                                                     (letrec ((g8951
                                                                                               (letrec ((x8952
                                                                                                         (letrec ((x8954
                                                                                                                   (POSN/C
                                                                                                                    j7547
                                                                                                                    k7548
                                                                                                                    g7545))
                                                                                                                  (x8953
                                                                                                                   (BSET/C
                                                                                                                    j7547
                                                                                                                    k7548
                                                                                                                    g7546)))
                                                                                                           (f7549
                                                                                                            x8954
                                                                                                            x8953))))
                                                                                                 (BSET/C
                                                                                                  j7547
                                                                                                  k7548
                                                                                                  x8952))))
                                                                                       g8951))))
                                                                           g8950))
                                                                       xj7543
                                                                       xk7544
                                                                       blocks-rotate-ccw)))
                                                              g8949)))
                                                         (x8943
                                                          (letrec ((x8944
                                                                    (letrec ((x8947
                                                                              (input))
                                                                             (x8945
                                                                              (letrec ((x8946
                                                                                        (input)))
                                                                                (cons
                                                                                 x8946
                                                                                 '()))))
                                                                      (cons
                                                                       x8947
                                                                       x8945))))
                                                            (cons
                                                             'posn
                                                             x8944)))
                                                         (x8942 (input)))
                                                  (x8948 x8943 x8942))
                                                (letrec ((x8957
                                                          (letrec ((xj7550
                                                                    (loc
                                                                     'module))
                                                                   (xk7551
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8958
                                                                      ((lambda (j7554
                                                                                k7555
                                                                                f7556)
                                                                         (letrec ((g8959
                                                                                   (lambda (g7552
                                                                                            g7553)
                                                                                     (letrec ((g8960
                                                                                               (letrec ((x8961
                                                                                                         (letrec ((x8963
                                                                                                                   (BSET/C
                                                                                                                    j7554
                                                                                                                    k7555
                                                                                                                    g7552))
                                                                                                                  (x8962
                                                                                                                   (COLOR/C
                                                                                                                    j7554
                                                                                                                    k7555
                                                                                                                    g7553)))
                                                                                                           (f7556
                                                                                                            x8963
                                                                                                            x8962))))
                                                                                                 (BSET/C
                                                                                                  j7554
                                                                                                  k7555
                                                                                                  x8961))))
                                                                                       g8960))))
                                                                           g8959))
                                                                       xj7550
                                                                       xk7551
                                                                       blocks-change-color)))
                                                              g8958)))
                                                         (x8956 (input))
                                                         (x8955 (input)))
                                                  (x8957 x8956 x8955))
                                                (letrec ((x8966
                                                          (letrec ((xj7557
                                                                    (loc
                                                                     'module))
                                                                   (xk7558
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8967
                                                                      ((lambda (j7561
                                                                                k7562
                                                                                f7563)
                                                                         (letrec ((g8968
                                                                                   (lambda (g7559
                                                                                            g7560)
                                                                                     (letrec ((g8969
                                                                                               (letrec ((x8970
                                                                                                         (letrec ((x8972
                                                                                                                   (BSET/C
                                                                                                                    j7561
                                                                                                                    k7562
                                                                                                                    g7559))
                                                                                                                  (x8971
                                                                                                                   (real?/c
                                                                                                                    j7561
                                                                                                                    k7562
                                                                                                                    g7560)))
                                                                                                           (f7563
                                                                                                            x8972
                                                                                                            x8971))))
                                                                                                 (BSET/C
                                                                                                  j7561
                                                                                                  k7562
                                                                                                  x8970))))
                                                                                       g8969))))
                                                                           g8968))
                                                                       xj7557
                                                                       xk7558
                                                                       blocks-row)))
                                                              g8967)))
                                                         (x8965 (input))
                                                         (x8964 (input)))
                                                  (x8966 x8965 x8964))
                                                (letrec ((x8975
                                                          (letrec ((xj7564
                                                                    (loc
                                                                     'module))
                                                                   (xk7565
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8976
                                                                      ((lambda (j7568
                                                                                k7569
                                                                                f7570)
                                                                         (letrec ((g8977
                                                                                   (lambda (g7566
                                                                                            g7567)
                                                                                     (letrec ((g8978
                                                                                               (letrec ((x8979
                                                                                                         (letrec ((x8981
                                                                                                                   (BSET/C
                                                                                                                    j7568
                                                                                                                    k7569
                                                                                                                    g7566))
                                                                                                                  (x8980
                                                                                                                   (real?/c
                                                                                                                    j7568
                                                                                                                    k7569
                                                                                                                    g7567)))
                                                                                                           (f7570
                                                                                                            x8981
                                                                                                            x8980))))
                                                                                                 (boolean?/c
                                                                                                  j7568
                                                                                                  k7569
                                                                                                  x8979))))
                                                                                       g8978))))
                                                                           g8977))
                                                                       xj7564
                                                                       xk7565
                                                                       full-row?)))
                                                              g8976)))
                                                         (x8974 (input))
                                                         (x8973 (input)))
                                                  (x8975 x8974 x8973))
                                                (letrec ((x8984
                                                          (letrec ((xj7571
                                                                    (loc
                                                                     'module))
                                                                   (xk7572
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8985
                                                                      ((lambda (j7575
                                                                                k7576
                                                                                f7577)
                                                                         (letrec ((g8986
                                                                                   (lambda (g7573
                                                                                            g7574)
                                                                                     (letrec ((g8987
                                                                                               (letrec ((x8988
                                                                                                         (letrec ((x8990
                                                                                                                   (BSET/C
                                                                                                                    j7575
                                                                                                                    k7576
                                                                                                                    g7573))
                                                                                                                  (x8989
                                                                                                                   (BSET/C
                                                                                                                    j7575
                                                                                                                    k7576
                                                                                                                    g7574)))
                                                                                                           (f7577
                                                                                                            x8990
                                                                                                            x8989))))
                                                                                                 (BSET/C
                                                                                                  j7575
                                                                                                  k7576
                                                                                                  x8988))))
                                                                                       g8987))))
                                                                           g8986))
                                                                       xj7571
                                                                       xk7572
                                                                       blocks-union)))
                                                              g8985)))
                                                         (x8983 (input))
                                                         (x8982 (input)))
                                                  (x8984 x8983 x8982))
                                                (letrec ((x8992
                                                          (letrec ((xj7578
                                                                    (loc
                                                                     'module))
                                                                   (xk7579
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8993
                                                                      ((lambda (j7581
                                                                                k7582
                                                                                f7583)
                                                                         (letrec ((g8994
                                                                                   (lambda (g7580)
                                                                                     (letrec ((g8995
                                                                                               (letrec ((x8996
                                                                                                         (letrec ((x8997
                                                                                                                   (BSET/C
                                                                                                                    j7581
                                                                                                                    k7582
                                                                                                                    g7580)))
                                                                                                           (f7583
                                                                                                            x8997))))
                                                                                                 (real?/c
                                                                                                  j7581
                                                                                                  k7582
                                                                                                  x8996))))
                                                                                       g8995))))
                                                                           g8994))
                                                                       xj7578
                                                                       xk7579
                                                                       blocks-max-x)))
                                                              g8993)))
                                                         (x8991 (input)))
                                                  (x8992 x8991))
                                                (letrec ((x8999
                                                          (letrec ((xj7584
                                                                    (loc
                                                                     'module))
                                                                   (xk7585
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9000
                                                                      ((lambda (j7587
                                                                                k7588
                                                                                f7589)
                                                                         (letrec ((g9001
                                                                                   (lambda (g7586)
                                                                                     (letrec ((g9002
                                                                                               (letrec ((x9003
                                                                                                         (letrec ((x9004
                                                                                                                   (BSET/C
                                                                                                                    j7587
                                                                                                                    k7588
                                                                                                                    g7586)))
                                                                                                           (f7589
                                                                                                            x9004))))
                                                                                                 (real?/c
                                                                                                  j7587
                                                                                                  k7588
                                                                                                  x9003))))
                                                                                       g9002))))
                                                                           g9001))
                                                                       xj7584
                                                                       xk7585
                                                                       blocks-min-x)))
                                                              g9000)))
                                                         (x8998 (input)))
                                                  (x8999 x8998))
                                                (letrec ((x9006
                                                          (letrec ((xj7590
                                                                    (loc
                                                                     'module))
                                                                   (xk7591
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9007
                                                                      ((lambda (j7593
                                                                                k7594
                                                                                f7595)
                                                                         (letrec ((g9008
                                                                                   (lambda (g7592)
                                                                                     (letrec ((g9009
                                                                                               (letrec ((x9010
                                                                                                         (letrec ((x9011
                                                                                                                   (BSET/C
                                                                                                                    j7593
                                                                                                                    k7594
                                                                                                                    g7592)))
                                                                                                           (f7595
                                                                                                            x9011))))
                                                                                                 (real?/c
                                                                                                  j7593
                                                                                                  k7594
                                                                                                  x9010))))
                                                                                       g9009))))
                                                                           g9008))
                                                                       xj7590
                                                                       xk7591
                                                                       blocks-max-y)))
                                                              g9007)))
                                                         (x9005 (input)))
                                                  (x9006 x9005))
                                                (letrec ((x9013
                                                          (letrec ((xj7596
                                                                    (loc
                                                                     'module))
                                                                   (xk7597
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9014
                                                                      ((lambda (j7599
                                                                                k7600
                                                                                f7601)
                                                                         (letrec ((g9015
                                                                                   (lambda (g7598)
                                                                                     (letrec ((g9016
                                                                                               (letrec ((x9017
                                                                                                         (letrec ((x9018
                                                                                                                   (BSET/C
                                                                                                                    j7599
                                                                                                                    k7600
                                                                                                                    g7598)))
                                                                                                           (f7601
                                                                                                            x9018))))
                                                                                                 (BSET/C
                                                                                                  j7599
                                                                                                  k7600
                                                                                                  x9017))))
                                                                                       g9016))))
                                                                           g9015))
                                                                       xj7596
                                                                       xk7597
                                                                       eliminate-full-rows)))
                                                              g9014)))
                                                         (x9012 (input)))
                                                  (x9013 x9012))
                                                (letrec ((x9030
                                                          (letrec ((xj7602
                                                                    (loc
                                                                     'module))
                                                                   (xk7603
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9031
                                                                      ((lambda (j7607
                                                                                k7608
                                                                                f7609)
                                                                         (letrec ((g9032
                                                                                   (lambda (g7604
                                                                                            g7605
                                                                                            g7606)
                                                                                     (letrec ((g9033
                                                                                               (letrec ((x9034
                                                                                                         (letrec ((x9037
                                                                                                                   (integer?/c
                                                                                                                    j7607
                                                                                                                    k7608
                                                                                                                    g7604))
                                                                                                                  (x9036
                                                                                                                   (integer?/c
                                                                                                                    j7607
                                                                                                                    k7608
                                                                                                                    g7605))
                                                                                                                  (x9035
                                                                                                                   (TETRA/C
                                                                                                                    j7607
                                                                                                                    k7608
                                                                                                                    g7606)))
                                                                                                           (f7609
                                                                                                            x9037
                                                                                                            x9036
                                                                                                            x9035))))
                                                                                                 (TETRA/C
                                                                                                  j7607
                                                                                                  k7608
                                                                                                  x9034))))
                                                                                       g9033))))
                                                                           g9032))
                                                                       xj7602
                                                                       xk7603
                                                                       tetra-move)))
                                                              g9031)))
                                                         (x9029 (input))
                                                         (x9028 (input))
                                                         (x9019
                                                          (letrec ((x9020
                                                                    (letrec ((x9023
                                                                              (letrec ((x9024
                                                                                        (letrec ((x9027
                                                                                                  (input))
                                                                                                 (x9025
                                                                                                  (letrec ((x9026
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9026
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9027
                                                                                           x9025))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9024)))
                                                                             (x9021
                                                                              (letrec ((x9022
                                                                                        (input)))
                                                                                (cons
                                                                                 x9022
                                                                                 '()))))
                                                                      (cons
                                                                       x9023
                                                                       x9021))))
                                                            (cons
                                                             'tetra
                                                             x9020))))
                                                  (x9030 x9029 x9028 x9019))
                                                (letrec ((x9047
                                                          (letrec ((xj7610
                                                                    (loc
                                                                     'module))
                                                                   (xk7611
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9048
                                                                      ((lambda (j7613
                                                                                k7614
                                                                                f7615)
                                                                         (letrec ((g9049
                                                                                   (lambda (g7612)
                                                                                     (letrec ((g9050
                                                                                               (letrec ((x9051
                                                                                                         (letrec ((x9052
                                                                                                                   (TETRA/C
                                                                                                                    j7613
                                                                                                                    k7614
                                                                                                                    g7612)))
                                                                                                           (f7615
                                                                                                            x9052))))
                                                                                                 (TETRA/C
                                                                                                  j7613
                                                                                                  k7614
                                                                                                  x9051))))
                                                                                       g9050))))
                                                                           g9049))
                                                                       xj7610
                                                                       xk7611
                                                                       tetra-rotate-ccw)))
                                                              g9048)))
                                                         (x9038
                                                          (letrec ((x9039
                                                                    (letrec ((x9042
                                                                              (letrec ((x9043
                                                                                        (letrec ((x9046
                                                                                                  (input))
                                                                                                 (x9044
                                                                                                  (letrec ((x9045
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9045
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9046
                                                                                           x9044))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9043)))
                                                                             (x9040
                                                                              (letrec ((x9041
                                                                                        (input)))
                                                                                (cons
                                                                                 x9041
                                                                                 '()))))
                                                                      (cons
                                                                       x9042
                                                                       x9040))))
                                                            (cons
                                                             'tetra
                                                             x9039))))
                                                  (x9047 x9038))
                                                (letrec ((x9062
                                                          (letrec ((xj7616
                                                                    (loc
                                                                     'module))
                                                                   (xk7617
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9063
                                                                      ((lambda (j7619
                                                                                k7620
                                                                                f7621)
                                                                         (letrec ((g9064
                                                                                   (lambda (g7618)
                                                                                     (letrec ((g9065
                                                                                               (letrec ((x9066
                                                                                                         (letrec ((x9067
                                                                                                                   (TETRA/C
                                                                                                                    j7619
                                                                                                                    k7620
                                                                                                                    g7618)))
                                                                                                           (f7621
                                                                                                            x9067))))
                                                                                                 (TETRA/C
                                                                                                  j7619
                                                                                                  k7620
                                                                                                  x9066))))
                                                                                       g9065))))
                                                                           g9064))
                                                                       xj7616
                                                                       xk7617
                                                                       tetra-rotate-cw)))
                                                              g9063)))
                                                         (x9053
                                                          (letrec ((x9054
                                                                    (letrec ((x9057
                                                                              (letrec ((x9058
                                                                                        (letrec ((x9061
                                                                                                  (input))
                                                                                                 (x9059
                                                                                                  (letrec ((x9060
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9060
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9061
                                                                                           x9059))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9058)))
                                                                             (x9055
                                                                              (letrec ((x9056
                                                                                        (input)))
                                                                                (cons
                                                                                 x9056
                                                                                 '()))))
                                                                      (cons
                                                                       x9057
                                                                       x9055))))
                                                            (cons
                                                             'tetra
                                                             x9054))))
                                                  (x9062 x9053))
                                                (letrec ((x9078
                                                          (letrec ((xj7622
                                                                    (loc
                                                                     'module))
                                                                   (xk7623
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9079
                                                                      ((lambda (j7626
                                                                                k7627
                                                                                f7628)
                                                                         (letrec ((g9080
                                                                                   (lambda (g7624
                                                                                            g7625)
                                                                                     (letrec ((g9081
                                                                                               (letrec ((x9082
                                                                                                         (letrec ((x9084
                                                                                                                   (TETRA/C
                                                                                                                    j7626
                                                                                                                    k7627
                                                                                                                    g7624))
                                                                                                                  (x9083
                                                                                                                   (BSET/C
                                                                                                                    j7626
                                                                                                                    k7627
                                                                                                                    g7625)))
                                                                                                           (f7628
                                                                                                            x9084
                                                                                                            x9083))))
                                                                                                 (boolean?/c
                                                                                                  j7626
                                                                                                  k7627
                                                                                                  x9082))))
                                                                                       g9081))))
                                                                           g9080))
                                                                       xj7622
                                                                       xk7623
                                                                       tetra-overlaps-blocks?)))
                                                              g9079)))
                                                         (x9069
                                                          (letrec ((x9070
                                                                    (letrec ((x9073
                                                                              (letrec ((x9074
                                                                                        (letrec ((x9077
                                                                                                  (input))
                                                                                                 (x9075
                                                                                                  (letrec ((x9076
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9076
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9077
                                                                                           x9075))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9074)))
                                                                             (x9071
                                                                              (letrec ((x9072
                                                                                        (input)))
                                                                                (cons
                                                                                 x9072
                                                                                 '()))))
                                                                      (cons
                                                                       x9073
                                                                       x9071))))
                                                            (cons
                                                             'tetra
                                                             x9070)))
                                                         (x9068 (input)))
                                                  (x9078 x9069 x9068))
                                                (letrec ((x9096
                                                          (letrec ((xj7629
                                                                    (loc
                                                                     'module))
                                                                   (xk7630
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9097
                                                                      ((lambda (j7642
                                                                                k7643
                                                                                f7644)
                                                                         (letrec ((g9098
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
                                                                                     (letrec ((g9099
                                                                                               (letrec ((x9100
                                                                                                         (letrec ((x9111
                                                                                                                   (COLOR/C
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7631))
                                                                                                                  (x9110
                                                                                                                   (real?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7632))
                                                                                                                  (x9109
                                                                                                                   (real?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7633))
                                                                                                                  (x9108
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7634))
                                                                                                                  (x9107
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7635))
                                                                                                                  (x9106
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7636))
                                                                                                                  (x9105
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7637))
                                                                                                                  (x9104
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7638))
                                                                                                                  (x9103
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7639))
                                                                                                                  (x9102
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7640))
                                                                                                                  (x9101
                                                                                                                   (integer?/c
                                                                                                                    j7642
                                                                                                                    k7643
                                                                                                                    g7641)))
                                                                                                           (f7644
                                                                                                            x9111
                                                                                                            x9110
                                                                                                            x9109
                                                                                                            x9108
                                                                                                            x9107
                                                                                                            x9106
                                                                                                            x9105
                                                                                                            x9104
                                                                                                            x9103
                                                                                                            x9102
                                                                                                            x9101))))
                                                                                                 (TETRA/C
                                                                                                  j7642
                                                                                                  k7643
                                                                                                  x9100))))
                                                                                       g9099))))
                                                                           g9098))
                                                                       xj7629
                                                                       xk7630
                                                                       build-tetra-blocks)))
                                                              g9097)))
                                                         (x9095 (input))
                                                         (x9094 (input))
                                                         (x9093 (input))
                                                         (x9092 (input))
                                                         (x9091 (input))
                                                         (x9090 (input))
                                                         (x9089 (input))
                                                         (x9088 (input))
                                                         (x9087 (input))
                                                         (x9086 (input))
                                                         (x9085 (input)))
                                                  (x9096
                                                   x9095
                                                   x9094
                                                   x9093
                                                   x9092
                                                   x9091
                                                   x9090
                                                   x9089
                                                   x9088
                                                   x9087
                                                   x9086
                                                   x9085))
                                                (letrec ((x9122
                                                          (letrec ((xj7645
                                                                    (loc
                                                                     'module))
                                                                   (xk7646
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9123
                                                                      ((lambda (j7649
                                                                                k7650
                                                                                f7651)
                                                                         (letrec ((g9124
                                                                                   (lambda (g7647
                                                                                            g7648)
                                                                                     (letrec ((g9125
                                                                                               (letrec ((x9126
                                                                                                         (letrec ((x9128
                                                                                                                   (TETRA/C
                                                                                                                    j7649
                                                                                                                    k7650
                                                                                                                    g7647))
                                                                                                                  (x9127
                                                                                                                   (COLOR/C
                                                                                                                    j7649
                                                                                                                    k7650
                                                                                                                    g7648)))
                                                                                                           (f7651
                                                                                                            x9128
                                                                                                            x9127))))
                                                                                                 (TETRA/C
                                                                                                  j7649
                                                                                                  k7650
                                                                                                  x9126))))
                                                                                       g9125))))
                                                                           g9124))
                                                                       xj7645
                                                                       xk7646
                                                                       tetra-change-color)))
                                                              g9123)))
                                                         (x9113
                                                          (letrec ((x9114
                                                                    (letrec ((x9117
                                                                              (letrec ((x9118
                                                                                        (letrec ((x9121
                                                                                                  (input))
                                                                                                 (x9119
                                                                                                  (letrec ((x9120
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9120
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9121
                                                                                           x9119))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9118)))
                                                                             (x9115
                                                                              (letrec ((x9116
                                                                                        (input)))
                                                                                (cons
                                                                                 x9116
                                                                                 '()))))
                                                                      (cons
                                                                       x9117
                                                                       x9115))))
                                                            (cons
                                                             'tetra
                                                             x9114)))
                                                         (x9112 (input)))
                                                  (x9122 x9113 x9112))
                                                (letrec ((x9143
                                                          (letrec ((xj7652
                                                                    (loc
                                                                     'module))
                                                                   (xk7653
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9144
                                                                      ((lambda (j7656
                                                                                k7657
                                                                                f7658)
                                                                         (letrec ((g9145
                                                                                   (lambda (g7654
                                                                                            g7655)
                                                                                     (letrec ((g9146
                                                                                               (letrec ((x9147
                                                                                                         (letrec ((x9149
                                                                                                                   (WORLD/C
                                                                                                                    j7656
                                                                                                                    k7657
                                                                                                                    g7654))
                                                                                                                  (x9148
                                                                                                                   (string?/c
                                                                                                                    j7656
                                                                                                                    k7657
                                                                                                                    g7655)))
                                                                                                           (f7658
                                                                                                            x9149
                                                                                                            x9148))))
                                                                                                 (WORLD/C
                                                                                                  j7656
                                                                                                  k7657
                                                                                                  x9147))))
                                                                                       g9146))))
                                                                           g9145))
                                                                       xj7652
                                                                       xk7653
                                                                       world-key-move)))
                                                              g9144)))
                                                         (x9130
                                                          (letrec ((x9131
                                                                    (letrec ((x9134
                                                                              (letrec ((x9135
                                                                                        (letrec ((x9138
                                                                                                  (letrec ((x9139
                                                                                                            (letrec ((x9142
                                                                                                                      (input))
                                                                                                                     (x9140
                                                                                                                      (letrec ((x9141
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9141
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9142
                                                                                                               x9140))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9139)))
                                                                                                 (x9136
                                                                                                  (letrec ((x9137
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9137
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9138
                                                                                           x9136))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9135)))
                                                                             (x9132
                                                                              (letrec ((x9133
                                                                                        (input)))
                                                                                (cons
                                                                                 x9133
                                                                                 '()))))
                                                                      (cons
                                                                       x9134
                                                                       x9132))))
                                                            (cons
                                                             'world
                                                             x9131)))
                                                         (x9129 (input)))
                                                  (x9143 x9130 x9129))
                                                (letrec ((x9164
                                                          (letrec ((xj7659
                                                                    (loc
                                                                     'module))
                                                                   (xk7660
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9165
                                                                      ((lambda (j7663
                                                                                k7664
                                                                                f7665)
                                                                         (letrec ((g9166
                                                                                   (lambda (g7661
                                                                                            g7662)
                                                                                     (letrec ((g9167
                                                                                               (letrec ((x9168
                                                                                                         (letrec ((x9172
                                                                                                                   (WORLD/C
                                                                                                                    j7663
                                                                                                                    k7664
                                                                                                                    g7661))
                                                                                                                  (x9169
                                                                                                                   (letrec ((x9170
                                                                                                                             (letrec ((x9171
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9171))))
                                                                                                                     (x9170
                                                                                                                      j7663
                                                                                                                      k7664
                                                                                                                      g7662))))
                                                                                                           (f7665
                                                                                                            x9172
                                                                                                            x9169))))
                                                                                                 (WORLD/C
                                                                                                  j7663
                                                                                                  k7664
                                                                                                  x9168))))
                                                                                       g9167))))
                                                                           g9166))
                                                                       xj7659
                                                                       xk7660
                                                                       next-world)))
                                                              g9165)))
                                                         (x9151
                                                          (letrec ((x9152
                                                                    (letrec ((x9155
                                                                              (letrec ((x9156
                                                                                        (letrec ((x9159
                                                                                                  (letrec ((x9160
                                                                                                            (letrec ((x9163
                                                                                                                      (input))
                                                                                                                     (x9161
                                                                                                                      (letrec ((x9162
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9162
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9163
                                                                                                               x9161))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9160)))
                                                                                                 (x9157
                                                                                                  (letrec ((x9158
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9158
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9159
                                                                                           x9157))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9156)))
                                                                             (x9153
                                                                              (letrec ((x9154
                                                                                        (input)))
                                                                                (cons
                                                                                 x9154
                                                                                 '()))))
                                                                      (cons
                                                                       x9155
                                                                       x9153))))
                                                            (cons
                                                             'world
                                                             x9152)))
                                                         (x9150 (input)))
                                                  (x9164 x9151 x9150))
                                                (letrec ((x9186
                                                          (letrec ((xj7666
                                                                    (loc
                                                                     'module))
                                                                   (xk7667
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9187
                                                                      ((lambda (j7669
                                                                                k7670
                                                                                f7671)
                                                                         (letrec ((g9188
                                                                                   (lambda (g7668)
                                                                                     (letrec ((g9189
                                                                                               (letrec ((x9190
                                                                                                         (letrec ((x9191
                                                                                                                   (WORLD/C
                                                                                                                    j7669
                                                                                                                    k7670
                                                                                                                    g7668)))
                                                                                                           (f7671
                                                                                                            x9191))))
                                                                                                 (BSET/C
                                                                                                  j7669
                                                                                                  k7670
                                                                                                  x9190))))
                                                                                       g9189))))
                                                                           g9188))
                                                                       xj7666
                                                                       xk7667
                                                                       ghost-blocks)))
                                                              g9187)))
                                                         (x9173
                                                          (letrec ((x9174
                                                                    (letrec ((x9177
                                                                              (letrec ((x9178
                                                                                        (letrec ((x9181
                                                                                                  (letrec ((x9182
                                                                                                            (letrec ((x9185
                                                                                                                      (input))
                                                                                                                     (x9183
                                                                                                                      (letrec ((x9184
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9184
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9185
                                                                                                               x9183))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9182)))
                                                                                                 (x9179
                                                                                                  (letrec ((x9180
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9180
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9181
                                                                                           x9179))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9178)))
                                                                             (x9175
                                                                              (letrec ((x9176
                                                                                        (input)))
                                                                                (cons
                                                                                 x9176
                                                                                 '()))))
                                                                      (cons
                                                                       x9177
                                                                       x9175))))
                                                            (cons
                                                             'world
                                                             x9174))))
                                                  (x9186 x9173))
                                                (letrec ((x9193
                                                          (letrec ((xj7672
                                                                    (loc
                                                                     'module))
                                                                   (xk7673
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9194
                                                                      ((lambda (j7675
                                                                                k7676
                                                                                f7677)
                                                                         (letrec ((g9195
                                                                                   (lambda (g7674)
                                                                                     (letrec ((g9196
                                                                                               (letrec ((x9197
                                                                                                         (letrec ((x9198
                                                                                                                   (any/c
                                                                                                                    j7675
                                                                                                                    k7676
                                                                                                                    g7674)))
                                                                                                           (f7677
                                                                                                            x9198))))
                                                                                                 (boolean?/c
                                                                                                  j7675
                                                                                                  k7676
                                                                                                  x9197))))
                                                                                       g9196))))
                                                                           g9195))
                                                                       xj7672
                                                                       xk7673
                                                                       image?)))
                                                              g9194)))
                                                         (x9192 (input)))
                                                  (x9193 x9192))
                                                (letrec ((x9201
                                                          (letrec ((xj7678
                                                                    (loc
                                                                     'module))
                                                                   (xk7679
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9202
                                                                      ((lambda (j7682
                                                                                k7683
                                                                                f7684)
                                                                         (letrec ((g9203
                                                                                   (lambda (g7680
                                                                                            g7681)
                                                                                     (letrec ((g9204
                                                                                               (letrec ((x9205
                                                                                                         (letrec ((x9207
                                                                                                                   (image?
                                                                                                                    j7682
                                                                                                                    k7683
                                                                                                                    g7680))
                                                                                                                  (x9206
                                                                                                                   (image?
                                                                                                                    j7682
                                                                                                                    k7683
                                                                                                                    g7681)))
                                                                                                           (f7684
                                                                                                            x9207
                                                                                                            x9206))))
                                                                                                 (image?
                                                                                                  j7682
                                                                                                  k7683
                                                                                                  x9205))))
                                                                                       g9204))))
                                                                           g9203))
                                                                       xj7678
                                                                       xk7679
                                                                       overlay)))
                                                              g9202)))
                                                         (x9200 (input))
                                                         (x9199 (input)))
                                                  (x9201 x9200 x9199))
                                                (letrec ((x9211
                                                          (letrec ((xj7685
                                                                    (loc
                                                                     'module))
                                                                   (xk7686
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9212
                                                                      ((lambda (j7690
                                                                                k7691
                                                                                f7692)
                                                                         (letrec ((g9213
                                                                                   (lambda (g7687
                                                                                            g7688
                                                                                            g7689)
                                                                                     (letrec ((g9214
                                                                                               (letrec ((x9215
                                                                                                         (letrec ((x9218
                                                                                                                   (real?/c
                                                                                                                    j7690
                                                                                                                    k7691
                                                                                                                    g7687))
                                                                                                                  (x9217
                                                                                                                   (real?/c
                                                                                                                    j7690
                                                                                                                    k7691
                                                                                                                    g7688))
                                                                                                                  (x9216
                                                                                                                   (string?/c
                                                                                                                    j7690
                                                                                                                    k7691
                                                                                                                    g7689)))
                                                                                                           (f7692
                                                                                                            x9218
                                                                                                            x9217
                                                                                                            x9216))))
                                                                                                 (image?
                                                                                                  j7690
                                                                                                  k7691
                                                                                                  x9215))))
                                                                                       g9214))))
                                                                           g9213))
                                                                       xj7685
                                                                       xk7686
                                                                       circle)))
                                                              g9212)))
                                                         (x9210 (input))
                                                         (x9209 (input))
                                                         (x9208 (input)))
                                                  (x9211 x9210 x9209 x9208))
                                                (letrec ((x9223
                                                          (letrec ((xj7693
                                                                    (loc
                                                                     'module))
                                                                   (xk7694
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9224
                                                                      ((lambda (j7699
                                                                                k7700
                                                                                f7701)
                                                                         (letrec ((g9225
                                                                                   (lambda (g7695
                                                                                            g7696
                                                                                            g7697
                                                                                            g7698)
                                                                                     (letrec ((g9226
                                                                                               (letrec ((x9227
                                                                                                         (letrec ((x9231
                                                                                                                   (real?/c
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7695))
                                                                                                                  (x9230
                                                                                                                   (real?/c
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7696))
                                                                                                                  (x9229
                                                                                                                   (COLOR/C
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7697))
                                                                                                                  (x9228
                                                                                                                   (COLOR/C
                                                                                                                    j7699
                                                                                                                    k7700
                                                                                                                    g7698)))
                                                                                                           (f7701
                                                                                                            x9231
                                                                                                            x9230
                                                                                                            x9229
                                                                                                            x9228))))
                                                                                                 (image?
                                                                                                  j7699
                                                                                                  k7700
                                                                                                  x9227))))
                                                                                       g9226))))
                                                                           g9225))
                                                                       xj7693
                                                                       xk7694
                                                                       rectangle)))
                                                              g9224)))
                                                         (x9222 (input))
                                                         (x9221 (input))
                                                         (x9220 (input))
                                                         (x9219 (input)))
                                                  (x9223
                                                   x9222
                                                   x9221
                                                   x9220
                                                   x9219))
                                                (letrec ((x9236
                                                          (letrec ((xj7702
                                                                    (loc
                                                                     'module))
                                                                   (xk7703
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9237
                                                                      ((lambda (j7708
                                                                                k7709
                                                                                f7710)
                                                                         (letrec ((g9238
                                                                                   (lambda (g7704
                                                                                            g7705
                                                                                            g7706
                                                                                            g7707)
                                                                                     (letrec ((g9239
                                                                                               (letrec ((x9240
                                                                                                         (letrec ((x9244
                                                                                                                   (image/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7704))
                                                                                                                  (x9243
                                                                                                                   (real?/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7705))
                                                                                                                  (x9242
                                                                                                                   (real?/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7706))
                                                                                                                  (x9241
                                                                                                                   (image/c
                                                                                                                    j7708
                                                                                                                    k7709
                                                                                                                    g7707)))
                                                                                                           (f7710
                                                                                                            x9244
                                                                                                            x9243
                                                                                                            x9242
                                                                                                            x9241))))
                                                                                                 (image/c
                                                                                                  j7708
                                                                                                  k7709
                                                                                                  x9240))))
                                                                                       g9239))))
                                                                           g9238))
                                                                       xj7702
                                                                       xk7703
                                                                       place-image)))
                                                              g9237)))
                                                         (x9235
                                                          (cons 'image '()))
                                                         (x9234 (input))
                                                         (x9233 (input))
                                                         (x9232
                                                          (cons 'image '())))
                                                  (x9236
                                                   x9235
                                                   x9234
                                                   x9233
                                                   x9232))
                                                (letrec ((x9247
                                                          (letrec ((xj7711
                                                                    (loc
                                                                     'module))
                                                                   (xk7712
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9248
                                                                      ((lambda (j7715
                                                                                k7716
                                                                                f7717)
                                                                         (letrec ((g9249
                                                                                   (lambda (g7713
                                                                                            g7714)
                                                                                     (letrec ((g9250
                                                                                               (letrec ((x9251
                                                                                                         (letrec ((x9253
                                                                                                                   (real?/c
                                                                                                                    j7715
                                                                                                                    k7716
                                                                                                                    g7713))
                                                                                                                  (x9252
                                                                                                                   (real?/c
                                                                                                                    j7715
                                                                                                                    k7716
                                                                                                                    g7714)))
                                                                                                           (f7717
                                                                                                            x9253
                                                                                                            x9252))))
                                                                                                 (image?
                                                                                                  j7715
                                                                                                  k7716
                                                                                                  x9251))))
                                                                                       g9250))))
                                                                           g9249))
                                                                       xj7711
                                                                       xk7712
                                                                       empty-scene)))
                                                              g9248)))
                                                         (x9246 (input))
                                                         (x9245 (input)))
                                                  (x9247 x9246 x9245))
                                                (letrec ((x9255
                                                          (letrec ((xj7718
                                                                    (loc
                                                                     'module))
                                                                   (xk7719
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9256
                                                                      ((lambda (j7721
                                                                                k7722
                                                                                f7723)
                                                                         (letrec ((g9257
                                                                                   (lambda (g7720)
                                                                                     (letrec ((g9258
                                                                                               (letrec ((x9259
                                                                                                         (letrec ((x9260
                                                                                                                   (letrec ((x9261
                                                                                                                             (letrec ((x9262
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9262))))
                                                                                                                     (x9261
                                                                                                                      j7721
                                                                                                                      k7722
                                                                                                                      g7720))))
                                                                                                           (f7723
                                                                                                            x9260))))
                                                                                                 (TETRA/C
                                                                                                  j7721
                                                                                                  k7722
                                                                                                  x9259))))
                                                                                       g9258))))
                                                                           g9257))
                                                                       xj7718
                                                                       xk7719
                                                                       list-pick-random)))
                                                              g9256)))
                                                         (x9254 (input)))
                                                  (x9255 x9254))
                                                (letrec ((xj7724 (loc 'module))
                                                         (xk7725
                                                          (loc 'importer)))
                                                  (letrec ((g9263
                                                            (integer?/c
                                                             xj7724
                                                             xk7725
                                                             neg-1)))
                                                    g9263))
                                                (letrec ((x9277
                                                          (letrec ((xj7726
                                                                    (loc
                                                                     'module))
                                                                   (xk7727
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9278
                                                                      ((lambda (j7729
                                                                                k7730
                                                                                f7731)
                                                                         (letrec ((g9279
                                                                                   (lambda (g7728)
                                                                                     (letrec ((g9280
                                                                                               (letrec ((x9281
                                                                                                         (letrec ((x9282
                                                                                                                   (WORLD/C
                                                                                                                    j7729
                                                                                                                    k7730
                                                                                                                    g7728)))
                                                                                                           (f7731
                                                                                                            x9282))))
                                                                                                 (image/c
                                                                                                  j7729
                                                                                                  k7730
                                                                                                  x9281))))
                                                                                       g9280))))
                                                                           g9279))
                                                                       xj7726
                                                                       xk7727
                                                                       world->image)))
                                                              g9278)))
                                                         (x9264
                                                          (letrec ((x9265
                                                                    (letrec ((x9268
                                                                              (letrec ((x9269
                                                                                        (letrec ((x9272
                                                                                                  (letrec ((x9273
                                                                                                            (letrec ((x9276
                                                                                                                      (input))
                                                                                                                     (x9274
                                                                                                                      (letrec ((x9275
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9275
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9276
                                                                                                               x9274))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9273)))
                                                                                                 (x9270
                                                                                                  (letrec ((x9271
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9271
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9272
                                                                                           x9270))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9269)))
                                                                             (x9266
                                                                              (letrec ((x9267
                                                                                        (input)))
                                                                                (cons
                                                                                 x9267
                                                                                 '()))))
                                                                      (cons
                                                                       x9268
                                                                       x9266))))
                                                            (cons
                                                             'world
                                                             x9265))))
                                                  (x9277 x9264))
                                                (letrec ((x9284
                                                          (letrec ((xj7732
                                                                    (loc
                                                                     'module))
                                                                   (xk7733
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9285
                                                                      ((lambda (j7735
                                                                                k7736
                                                                                f7737)
                                                                         (letrec ((g9286
                                                                                   (lambda (g7734)
                                                                                     (letrec ((g9287
                                                                                               (letrec ((x9288
                                                                                                         (letrec ((x9289
                                                                                                                   (BSET/C
                                                                                                                    j7735
                                                                                                                    k7736
                                                                                                                    g7734)))
                                                                                                           (f7737
                                                                                                            x9289))))
                                                                                                 (image/c
                                                                                                  j7735
                                                                                                  k7736
                                                                                                  x9288))))
                                                                                       g9287))))
                                                                           g9286))
                                                                       xj7732
                                                                       xk7733
                                                                       blocks->image)))
                                                              g9285)))
                                                         (x9283 (input)))
                                                  (x9284 x9283))
                                                (letrec ((x9297
                                                          (letrec ((xj7738
                                                                    (loc
                                                                     'module))
                                                                   (xk7739
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9298
                                                                      ((lambda (j7741
                                                                                k7742
                                                                                f7743)
                                                                         (letrec ((g9299
                                                                                   (lambda (g7740)
                                                                                     (letrec ((g9300
                                                                                               (letrec ((x9301
                                                                                                         (letrec ((x9302
                                                                                                                   (BLOCK/C
                                                                                                                    j7741
                                                                                                                    k7742
                                                                                                                    g7740)))
                                                                                                           (f7743
                                                                                                            x9302))))
                                                                                                 (image/c
                                                                                                  j7741
                                                                                                  k7742
                                                                                                  x9301))))
                                                                                       g9300))))
                                                                           g9299))
                                                                       xj7738
                                                                       xk7739
                                                                       block->image)))
                                                              g9298)))
                                                         (x9290
                                                          (letrec ((x9291
                                                                    (letrec ((x9296
                                                                              (input))
                                                                             (x9292
                                                                              (letrec ((x9295
                                                                                        (input))
                                                                                       (x9293
                                                                                        (letrec ((x9294
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9294
                                                                                           '()))))
                                                                                (cons
                                                                                 x9295
                                                                                 x9293))))
                                                                      (cons
                                                                       x9296
                                                                       x9292))))
                                                            (cons
                                                             'block
                                                             x9291))))
                                                  (x9297 x9290))
                                                (letrec ((x9311
                                                          (letrec ((xj7744
                                                                    (loc
                                                                     'module))
                                                                   (xk7745
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9312
                                                                      ((lambda (j7748
                                                                                k7749
                                                                                f7750)
                                                                         (letrec ((g9313
                                                                                   (lambda (g7746
                                                                                            g7747)
                                                                                     (letrec ((g9314
                                                                                               (letrec ((x9315
                                                                                                         (letrec ((x9317
                                                                                                                   (BLOCK/C
                                                                                                                    j7748
                                                                                                                    k7749
                                                                                                                    g7746))
                                                                                                                  (x9316
                                                                                                                   (image/c
                                                                                                                    j7748
                                                                                                                    k7749
                                                                                                                    g7747)))
                                                                                                           (f7750
                                                                                                            x9317
                                                                                                            x9316))))
                                                                                                 (image/c
                                                                                                  j7748
                                                                                                  k7749
                                                                                                  x9315))))
                                                                                       g9314))))
                                                                           g9313))
                                                                       xj7744
                                                                       xk7745
                                                                       place-block)))
                                                              g9312)))
                                                         (x9304
                                                          (letrec ((x9305
                                                                    (letrec ((x9310
                                                                              (input))
                                                                             (x9306
                                                                              (letrec ((x9309
                                                                                        (input))
                                                                                       (x9307
                                                                                        (letrec ((x9308
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9308
                                                                                           '()))))
                                                                                (cons
                                                                                 x9309
                                                                                 x9307))))
                                                                      (cons
                                                                       x9310
                                                                       x9306))))
                                                            (cons
                                                             'block
                                                             x9305)))
                                                         (x9303
                                                          (cons 'image '())))
                                                  (x9311 x9304 x9303))
                                                (letrec ((x9319
                                                          (letrec ((xj7751
                                                                    (loc
                                                                     'module))
                                                                   (xk7752
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9320
                                                                      ((lambda (j7754
                                                                                k7755
                                                                                f7756)
                                                                         (letrec ((g9321
                                                                                   (lambda (g7753)
                                                                                     (letrec ((g9322
                                                                                               (letrec ((x9323
                                                                                                         (letrec ((x9324
                                                                                                                   (letrec ((x9325
                                                                                                                             (letrec ((x9326
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9326))))
                                                                                                                     (x9325
                                                                                                                      j7754
                                                                                                                      k7755
                                                                                                                      g7753))))
                                                                                                           (f7756
                                                                                                            x9324))))
                                                                                                 (WORLD/C
                                                                                                  j7754
                                                                                                  k7755
                                                                                                  x9323))))
                                                                                       g9322))))
                                                                           g9321))
                                                                       xj7751
                                                                       xk7752
                                                                       world0)))
                                                              g9320)))
                                                         (x9318 (input)))
                                                  (x9319 x9318))))))
                                      g8759))))
                          g7808))))
              g7791)))
    g7790))
