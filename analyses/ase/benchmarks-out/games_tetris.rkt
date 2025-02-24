(letrec ((any? (lambda (v) (letrec ((g7776 #t)) g7776)))
         (meta (lambda (v) (letrec ((g7777 v)) g7777)))
         (member
          (lambda (v lst)
            (letrec ((g7778
                      (letrec ((g7779
                                (letrec ((x-e7780 lst))
                                  (match
                                   x-e7780
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7781 (eq? v v1)))
                                       (if x-cnd7781 #t (member v vs)))))))))
                        g7779)))
              g7778)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7782 (lambda (v) (letrec ((g7783 v)) g7783)))) g7782)))
         (nonzero?
          (lambda (v)
            (letrec ((g7784 (letrec ((x7785 (= v 0))) (not x7785)))) g7784))))
  (letrec ((g7786
            (letrec ((g7787
                      (letrec ((assert
                                (lambda (cnd)
                                  (letrec ((g7788
                                            (if cnd
                                              '()
                                              (error "assertion failed"))))
                                    g7788)))
                               (>=
                                (lambda (x y)
                                  (letrec ((g7789
                                            (letrec ((x7791 (number? x)))
                                              (assert x7791)))
                                           (g7790
                                            (letrec ((val7244 (> x y)))
                                              (letrec ((g7792
                                                        (if val7244
                                                          val7244
                                                          (letrec ((val7245
                                                                    (= x y)))
                                                            (letrec ((g7793
                                                                      (if val7245
                                                                        val7245
                                                                        #f)))
                                                              g7793)))))
                                                g7792))))
                                    g7790)))
                               (<=
                                (lambda (x y)
                                  (letrec ((g7794
                                            (letrec ((x7796 (number? x)))
                                              (assert x7796)))
                                           (g7795
                                            (letrec ((val7246 (< x y)))
                                              (letrec ((g7797
                                                        (if val7246
                                                          val7246
                                                          (letrec ((val7247
                                                                    (= x y)))
                                                            (letrec ((g7798
                                                                      (if val7247
                                                                        val7247
                                                                        #f)))
                                                              g7798)))))
                                                g7797))))
                                    g7795)))
                               (>
                                (lambda (x y)
                                  (letrec ((g7799
                                            (letrec ((x7801 (number? x)))
                                              (assert x7801)))
                                           (g7800
                                            (letrec ((x7802 (<= x y)))
                                              (not x7802))))
                                    g7800)))
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
                        (letrec ((g7803 '())
                                 (g7804
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7805
                                                        (lambda (k j lst)
                                                          (letrec ((g7806
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7807
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7807))
                                                                     lst)))
                                                            g7806))))
                                                g7805)))
                                           (real?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7808
                                                        (letrec ((x-cnd7809
                                                                  (real?
                                                                   g7267)))
                                                          (if x-cnd7809
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'real?)))))
                                                g7808)))
                                           (boolean?/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7810
                                                        (letrec ((x-cnd7811
                                                                  (boolean?
                                                                   g7270)))
                                                          (if x-cnd7811
                                                            g7270
                                                            (blame
                                                             g7268
                                                             'boolean?)))))
                                                g7810)))
                                           (number?/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7812
                                                        (letrec ((x-cnd7813
                                                                  (number?
                                                                   g7273)))
                                                          (if x-cnd7813
                                                            g7273
                                                            (blame
                                                             g7271
                                                             'number?)))))
                                                g7812)))
                                           (any/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7814
                                                        (letrec ((x-cnd7815
                                                                  ((lambda (v)
                                                                     (letrec ((g7816
                                                                               #t))
                                                                       g7816))
                                                                   g7276)))
                                                          (if x-cnd7815
                                                            g7276
                                                            (blame
                                                             g7274
                                                             '(lambda (v)
                                                                #t))))))
                                                g7814)))
                                           (any?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7817
                                                        (letrec ((x-cnd7818
                                                                  ((lambda (v)
                                                                     (letrec ((g7819
                                                                               #t))
                                                                       g7819))
                                                                   g7279)))
                                                          (if x-cnd7818
                                                            g7279
                                                            (blame
                                                             g7277
                                                             '(lambda (v)
                                                                #t))))))
                                                g7817)))
                                           (cons?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7820
                                                        (letrec ((x-cnd7821
                                                                  (pair?
                                                                   g7282)))
                                                          (if x-cnd7821
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'pair?)))))
                                                g7820)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7822
                                                        (letrec ((x-cnd7823
                                                                  (pair?
                                                                   g7285)))
                                                          (if x-cnd7823
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'pair?)))))
                                                g7822)))
                                           (integer?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7824
                                                        (letrec ((x-cnd7825
                                                                  (integer?
                                                                   g7288)))
                                                          (if x-cnd7825
                                                            g7288
                                                            (blame
                                                             g7286
                                                             'integer?)))))
                                                g7824)))
                                           (symbol?/c
                                            (lambda (g7289 g7290 g7291)
                                              (letrec ((g7826
                                                        (letrec ((x-cnd7827
                                                                  (symbol?
                                                                   g7291)))
                                                          (if x-cnd7827
                                                            g7291
                                                            (blame
                                                             g7289
                                                             'symbol?)))))
                                                g7826)))
                                           (string?/c
                                            (lambda (g7292 g7293 g7294)
                                              (letrec ((g7828
                                                        (letrec ((x-cnd7829
                                                                  (string?
                                                                   g7294)))
                                                          (if x-cnd7829
                                                            g7294
                                                            (blame
                                                             g7292
                                                             'string?)))))
                                                g7828)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7830
                                                        (lambda (k j v)
                                                          (letrec ((g7831
                                                                    (letrec ((x-cnd7832
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7832
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7831))))
                                                g7830)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7833
                                                        (lambda (k j v)
                                                          (letrec ((g7834
                                                                    (letrec ((x-cnd7835
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7835
                                                                        '()
                                                                        (letrec ((x7839
                                                                                  (letrec ((x7840
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7840)))
                                                                                 (x7836
                                                                                  (letrec ((x7838
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7837
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7838
                                                                                     k
                                                                                     j
                                                                                     x7837))))
                                                                          (orig-cons
                                                                           x7839
                                                                           x7836))))))
                                                            g7834))))
                                                g7833)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7841 #t)) g7841)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7842
                                                        (letrec ((x7843
                                                                  (= v 0)))
                                                          (not x7843))))
                                                g7842)))
                                           (nonzero?/c
                                            (lambda (g7295 g7296 g7297)
                                              (letrec ((g7844
                                                        (letrec ((x-cnd7845
                                                                  ((lambda (v)
                                                                     (letrec ((g7846
                                                                               (letrec ((x7847
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7847))))
                                                                       g7846))
                                                                   g7297)))
                                                          (if x-cnd7845
                                                            g7297
                                                            (blame
                                                             g7295
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7844)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7848
                                                        (lambda (g7298
                                                                 g7299
                                                                 g7300)
                                                          (letrec ((g7849
                                                                    (letrec ((x-cnd7850
                                                                              ((lambda (v)
                                                                                 (letrec ((g7851
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7851))
                                                                               g7300)))
                                                                      (if x-cnd7850
                                                                        g7300
                                                                        (blame
                                                                         g7298
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7849))))
                                                g7848)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7852
                                                        (lambda (g7301
                                                                 g7302
                                                                 g7303)
                                                          (letrec ((g7853
                                                                    (letrec ((x-cnd7854
                                                                              ((lambda (v)
                                                                                 (letrec ((g7855
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7855))
                                                                               g7303)))
                                                                      (if x-cnd7854
                                                                        g7303
                                                                        (blame
                                                                         g7301
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7853))))
                                                g7852)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7856
                                                        (lambda (g7304
                                                                 g7305
                                                                 g7306)
                                                          (letrec ((g7857
                                                                    (letrec ((x-cnd7858
                                                                              ((lambda (v)
                                                                                 (letrec ((g7859
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7859))
                                                                               g7306)))
                                                                      (if x-cnd7858
                                                                        g7306
                                                                        (blame
                                                                         g7304
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7857))))
                                                g7856)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7860
                                                        (lambda (g7307
                                                                 g7308
                                                                 g7309)
                                                          (letrec ((g7861
                                                                    (letrec ((x-cnd7862
                                                                              ((lambda (v)
                                                                                 (letrec ((g7863
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7863))
                                                                               g7309)))
                                                                      (if x-cnd7862
                                                                        g7309
                                                                        (blame
                                                                         g7307
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7861))))
                                                g7860)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7864
                                                        (lambda (g7310
                                                                 g7311
                                                                 g7312)
                                                          (letrec ((g7865
                                                                    (letrec ((x-cnd7866
                                                                              ((lambda (v)
                                                                                 (letrec ((g7867
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7867))
                                                                               g7312)))
                                                                      (if x-cnd7866
                                                                        g7312
                                                                        (blame
                                                                         g7310
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7865))))
                                                g7864)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7868 v)) g7868)))
                                           (+
                                            (letrec ((xj7313 'server)
                                                     (xk7314 'client))
                                              (letrec ((g7869
                                                        ((lambda (j7317
                                                                  k7318
                                                                  f7319)
                                                           (letrec ((g7871
                                                                     (lambda (g7315
                                                                              g7316)
                                                                       (letrec ((g7872
                                                                                 (letrec ((x7873
                                                                                           (letrec ((x7875
                                                                                                     (number?/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7315))
                                                                                                    (x7874
                                                                                                     (number?/c
                                                                                                      j7317
                                                                                                      k7318
                                                                                                      g7316)))
                                                                                             (f7319
                                                                                              x7875
                                                                                              x7874))))
                                                                                   (number?/c
                                                                                    j7317
                                                                                    k7318
                                                                                    x7873))))
                                                                         g7872))))
                                                             g7871))
                                                         xj7313
                                                         xk7314
                                                         (lambda (a b)
                                                           (letrec ((g7870
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7870)))))
                                                g7869)))
                                           (-
                                            (letrec ((xj7320 'server)
                                                     (xk7321 'client))
                                              (letrec ((g7876
                                                        ((lambda (j7324
                                                                  k7325
                                                                  f7326)
                                                           (letrec ((g7878
                                                                     (lambda (g7322
                                                                              g7323)
                                                                       (letrec ((g7879
                                                                                 (letrec ((x7880
                                                                                           (letrec ((x7882
                                                                                                     (number?/c
                                                                                                      j7324
                                                                                                      k7325
                                                                                                      g7322))
                                                                                                    (x7881
                                                                                                     (number?/c
                                                                                                      j7324
                                                                                                      k7325
                                                                                                      g7323)))
                                                                                             (f7326
                                                                                              x7882
                                                                                              x7881))))
                                                                                   (number?/c
                                                                                    j7324
                                                                                    k7325
                                                                                    x7880))))
                                                                         g7879))))
                                                             g7878))
                                                         xj7320
                                                         xk7321
                                                         (lambda (a b)
                                                           (letrec ((g7877
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7877)))))
                                                g7876)))
                                           (*
                                            (letrec ((xj7327 'server)
                                                     (xk7328 'client))
                                              (letrec ((g7883
                                                        ((lambda (j7331
                                                                  k7332
                                                                  f7333)
                                                           (letrec ((g7885
                                                                     (lambda (g7329
                                                                              g7330)
                                                                       (letrec ((g7886
                                                                                 (letrec ((x7887
                                                                                           (letrec ((x7889
                                                                                                     (number?/c
                                                                                                      j7331
                                                                                                      k7332
                                                                                                      g7329))
                                                                                                    (x7888
                                                                                                     (number?/c
                                                                                                      j7331
                                                                                                      k7332
                                                                                                      g7330)))
                                                                                             (f7333
                                                                                              x7889
                                                                                              x7888))))
                                                                                   (number?/c
                                                                                    j7331
                                                                                    k7332
                                                                                    x7887))))
                                                                         g7886))))
                                                             g7885))
                                                         xj7327
                                                         xk7328
                                                         (lambda (a b)
                                                           (letrec ((g7884
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7884)))))
                                                g7883)))
                                           (<
                                            (letrec ((xj7334 'server)
                                                     (xk7335 'client))
                                              (letrec ((g7890
                                                        ((lambda (j7338
                                                                  k7339
                                                                  f7340)
                                                           (letrec ((g7892
                                                                     (lambda (g7336
                                                                              g7337)
                                                                       (letrec ((g7893
                                                                                 (letrec ((x7894
                                                                                           (letrec ((x7896
                                                                                                     (number?/c
                                                                                                      j7338
                                                                                                      k7339
                                                                                                      g7336))
                                                                                                    (x7895
                                                                                                     (number?/c
                                                                                                      j7338
                                                                                                      k7339
                                                                                                      g7337)))
                                                                                             (f7340
                                                                                              x7896
                                                                                              x7895))))
                                                                                   (boolean?/c
                                                                                    j7338
                                                                                    k7339
                                                                                    x7894))))
                                                                         g7893))))
                                                             g7892))
                                                         xj7334
                                                         xk7335
                                                         (lambda (a b)
                                                           (letrec ((g7891
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7891)))))
                                                g7890)))
                                           (>
                                            (letrec ((xj7341 'server)
                                                     (xk7342 'client))
                                              (letrec ((g7897
                                                        ((lambda (j7345
                                                                  k7346
                                                                  f7347)
                                                           (letrec ((g7899
                                                                     (lambda (g7343
                                                                              g7344)
                                                                       (letrec ((g7900
                                                                                 (letrec ((x7901
                                                                                           (letrec ((x7903
                                                                                                     (number?/c
                                                                                                      j7345
                                                                                                      k7346
                                                                                                      g7343))
                                                                                                    (x7902
                                                                                                     (number?/c
                                                                                                      j7345
                                                                                                      k7346
                                                                                                      g7344)))
                                                                                             (f7347
                                                                                              x7903
                                                                                              x7902))))
                                                                                   (boolean?/c
                                                                                    j7345
                                                                                    k7346
                                                                                    x7901))))
                                                                         g7900))))
                                                             g7899))
                                                         xj7341
                                                         xk7342
                                                         (lambda (a b)
                                                           (letrec ((g7898
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7898)))))
                                                g7897)))
                                           (<=
                                            (letrec ((xj7348 'server)
                                                     (xk7349 'client))
                                              (letrec ((g7904
                                                        ((lambda (j7352
                                                                  k7353
                                                                  f7354)
                                                           (letrec ((g7906
                                                                     (lambda (g7350
                                                                              g7351)
                                                                       (letrec ((g7907
                                                                                 (letrec ((x7908
                                                                                           (letrec ((x7910
                                                                                                     (number?/c
                                                                                                      j7352
                                                                                                      k7353
                                                                                                      g7350))
                                                                                                    (x7909
                                                                                                     (number?/c
                                                                                                      j7352
                                                                                                      k7353
                                                                                                      g7351)))
                                                                                             (f7354
                                                                                              x7910
                                                                                              x7909))))
                                                                                   (boolean?/c
                                                                                    j7352
                                                                                    k7353
                                                                                    x7908))))
                                                                         g7907))))
                                                             g7906))
                                                         xj7348
                                                         xk7349
                                                         (lambda (a b)
                                                           (letrec ((g7905
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7905)))))
                                                g7904)))
                                           (>=
                                            (letrec ((xj7355 'server)
                                                     (xk7356 'client))
                                              (letrec ((g7911
                                                        ((lambda (j7359
                                                                  k7360
                                                                  f7361)
                                                           (letrec ((g7913
                                                                     (lambda (g7357
                                                                              g7358)
                                                                       (letrec ((g7914
                                                                                 (letrec ((x7915
                                                                                           (letrec ((x7917
                                                                                                     (number?/c
                                                                                                      j7359
                                                                                                      k7360
                                                                                                      g7357))
                                                                                                    (x7916
                                                                                                     (number?/c
                                                                                                      j7359
                                                                                                      k7360
                                                                                                      g7358)))
                                                                                             (f7361
                                                                                              x7917
                                                                                              x7916))))
                                                                                   (boolean?/c
                                                                                    j7359
                                                                                    k7360
                                                                                    x7915))))
                                                                         g7914))))
                                                             g7913))
                                                         xj7355
                                                         xk7356
                                                         (lambda (a b)
                                                           (letrec ((g7912
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7912)))))
                                                g7911)))
                                           (/
                                            (letrec ((xj7362 'server)
                                                     (xk7363 'client))
                                              (letrec ((g7918
                                                        ((lambda (j7366
                                                                  k7367
                                                                  f7368)
                                                           (letrec ((g7920
                                                                     (lambda (g7364
                                                                              g7365)
                                                                       (letrec ((g7921
                                                                                 (letrec ((x7922
                                                                                           (letrec ((x7924
                                                                                                     (number?/c
                                                                                                      j7366
                                                                                                      k7367
                                                                                                      g7364))
                                                                                                    (x7923
                                                                                                     (number?/c
                                                                                                      j7366
                                                                                                      k7367
                                                                                                      g7365)))
                                                                                             (f7368
                                                                                              x7924
                                                                                              x7923))))
                                                                                   (number?/c
                                                                                    j7366
                                                                                    k7367
                                                                                    x7922))))
                                                                         g7921))))
                                                             g7920))
                                                         xj7362
                                                         xk7363
                                                         (lambda (a b)
                                                           (letrec ((g7919
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7919)))))
                                                g7918)))
                                           (car
                                            (letrec ((xj7369 'server)
                                                     (xk7370 'client))
                                              (letrec ((g7925
                                                        ((lambda (j7372
                                                                  k7373
                                                                  f7374)
                                                           (letrec ((g7927
                                                                     (lambda (g7371)
                                                                       (letrec ((g7928
                                                                                 (letrec ((x7929
                                                                                           (letrec ((x7930
                                                                                                     (pair?/c
                                                                                                      j7372
                                                                                                      k7373
                                                                                                      g7371)))
                                                                                             (f7374
                                                                                              x7930))))
                                                                                   (any/c
                                                                                    j7372
                                                                                    k7373
                                                                                    x7929))))
                                                                         g7928))))
                                                             g7927))
                                                         xj7369
                                                         xk7370
                                                         (lambda (p)
                                                           (letrec ((g7926
                                                                     (orig-car
                                                                      p)))
                                                             g7926)))))
                                                g7925)))
                                           (cdr
                                            (letrec ((xj7375 'server)
                                                     (xk7376 'client))
                                              (letrec ((g7931
                                                        ((lambda (j7378
                                                                  k7379
                                                                  f7380)
                                                           (letrec ((g7933
                                                                     (lambda (g7377)
                                                                       (letrec ((g7934
                                                                                 (letrec ((x7935
                                                                                           (letrec ((x7936
                                                                                                     (pair?/c
                                                                                                      j7378
                                                                                                      k7379
                                                                                                      g7377)))
                                                                                             (f7380
                                                                                              x7936))))
                                                                                   (any/c
                                                                                    j7378
                                                                                    k7379
                                                                                    x7935))))
                                                                         g7934))))
                                                             g7933))
                                                         xj7375
                                                         xk7376
                                                         (lambda (p)
                                                           (letrec ((g7932
                                                                     (orig-cdr
                                                                      p)))
                                                             g7932)))))
                                                g7931)))
                                           (cons
                                            (letrec ((xj7381 'server)
                                                     (xk7382 'client))
                                              (letrec ((g7937
                                                        ((lambda (j7385
                                                                  k7386
                                                                  f7387)
                                                           (letrec ((g7939
                                                                     (lambda (g7383
                                                                              g7384)
                                                                       (letrec ((g7940
                                                                                 (letrec ((x7941
                                                                                           (letrec ((x7943
                                                                                                     (any/c
                                                                                                      j7385
                                                                                                      k7386
                                                                                                      g7383))
                                                                                                    (x7942
                                                                                                     (any/c
                                                                                                      j7385
                                                                                                      k7386
                                                                                                      g7384)))
                                                                                             (f7387
                                                                                              x7943
                                                                                              x7942))))
                                                                                   (pair?/c
                                                                                    j7385
                                                                                    k7386
                                                                                    x7941))))
                                                                         g7940))))
                                                             g7939))
                                                         xj7381
                                                         xk7382
                                                         (lambda (a b)
                                                           (letrec ((g7938
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7938)))))
                                                g7937)))
                                           (vector-ref
                                            (letrec ((xj7388 'server)
                                                     (xk7389 'client))
                                              (letrec ((g7944
                                                        ((lambda (j7391
                                                                  k7392
                                                                  f7393)
                                                           (letrec ((g7946
                                                                     (lambda (g7390)
                                                                       (letrec ((g7947
                                                                                 (letrec ((x7948
                                                                                           (letrec ((x7949
                                                                                                     (vector?/c
                                                                                                      j7391
                                                                                                      k7392
                                                                                                      g7390)))
                                                                                             (f7393
                                                                                              x7949))))
                                                                                   (integer?/c
                                                                                    j7391
                                                                                    k7392
                                                                                    x7948))))
                                                                         g7947))))
                                                             g7946))
                                                         xj7388
                                                         xk7389
                                                         (lambda (v i)
                                                           (letrec ((g7945
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7945)))))
                                                g7944)))
                                           (vector-set!
                                            (letrec ((xj7394 'server)
                                                     (xk7395 'client))
                                              (letrec ((g7950
                                                        ((lambda (j7398
                                                                  k7399
                                                                  f7400)
                                                           (letrec ((g7952
                                                                     (lambda (g7396
                                                                              g7397)
                                                                       (letrec ((g7953
                                                                                 (letrec ((x7954
                                                                                           (letrec ((x7956
                                                                                                     (vector?/c
                                                                                                      j7398
                                                                                                      k7399
                                                                                                      g7396))
                                                                                                    (x7955
                                                                                                     (integer?/c
                                                                                                      j7398
                                                                                                      k7399
                                                                                                      g7397)))
                                                                                             (f7400
                                                                                              x7956
                                                                                              x7955))))
                                                                                   (any/c
                                                                                    j7398
                                                                                    k7399
                                                                                    x7954))))
                                                                         g7953))))
                                                             g7952))
                                                         xj7394
                                                         xk7395
                                                         (lambda (vec i v)
                                                           (letrec ((g7951
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7951)))))
                                                g7950)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7957
                                                        (letrec ((x7958
                                                                  (letrec ((x7959
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7959))))
                                                          (cdr x7958))))
                                                g7957)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7960
                                                        (letrec ((x7963
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7963)))
                                                       (g7961
                                                        (letrec ((x7964
                                                                  (list? l)))
                                                          (assert x7964)))
                                                       (g7962
                                                        (letrec ((x-cnd7965
                                                                  (null? l)))
                                                          (if x-cnd7965
                                                            '()
                                                            (letrec ((x7968
                                                                      (letrec ((x7969
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7969)))
                                                                     (x7966
                                                                      (letrec ((x7967
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7967))))
                                                              (cons
                                                               x7968
                                                               x7966))))))
                                                g7962)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7970
                                                        (letrec ((x7971
                                                                  (car x)))
                                                          (cdr x7971))))
                                                g7970)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7972
                                                        (letrec ((x7973
                                                                  (letrec ((x7974
                                                                            (letrec ((x7975
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7975))))
                                                                    (cdr
                                                                     x7974))))
                                                          (car x7973))))
                                                g7972)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7976
                                                        (letrec ((x7977
                                                                  (letrec ((x7978
                                                                            (letrec ((x7979
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7979))))
                                                                    (car
                                                                     x7978))))
                                                          (cdr x7977))))
                                                g7976)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7980
                                                        (letrec ((x7983
                                                                  (string?
                                                                   filename)))
                                                          (assert x7983)))
                                                       (g7981
                                                        (letrec ((x7984
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7984)))
                                                       (g7982
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7985
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7986 res))
                                                            g7986))))
                                                g7982)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7987
                                                        (letrec ((x7988
                                                                  (letrec ((x7989
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7989))))
                                                          (car x7988))))
                                                g7987)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7990
                                                        (letrec ((x7991
                                                                  (letrec ((x7992
                                                                            (letrec ((x7993
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7993))))
                                                                    (car
                                                                     x7992))))
                                                          (cdr x7991))))
                                                g7990)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7994
                                                        (letrec ((x7996
                                                                  (list? l)))
                                                          (assert x7996)))
                                                       (g7995
                                                        (letrec ((x-cnd7997
                                                                  (null? l)))
                                                          (if x-cnd7997
                                                            #f
                                                            (letrec ((x-cnd7998
                                                                      (letrec ((x7999
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7999
                                                                         k))))
                                                              (if x-cnd7998
                                                                (car l)
                                                                (letrec ((x8000
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8000))))))))
                                                g7995)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g8001
                                                        (letrec ((x8002
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x8002))))
                                                g8001)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g8003
                                                        (letrec ((x8005
                                                                  (list? l)))
                                                          (assert x8005)))
                                                       (g8004
                                                        (letrec ((x-cnd8006
                                                                  (null? l)))
                                                          (if x-cnd8006
                                                            ""
                                                            (letrec ((x8009
                                                                      (letrec ((x8010
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x8010)))
                                                                     (x8007
                                                                      (letrec ((x8008
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x8008))))
                                                              (string-append
                                                               x8009
                                                               x8007))))))
                                                g8004)))
                                           (char<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8011
                                                        (letrec ((x8014
                                                                  (char? c1)))
                                                          (assert x8014)))
                                                       (g8012
                                                        (letrec ((x8015
                                                                  (char? c2)))
                                                          (assert x8015)))
                                                       (g8013
                                                        (letrec ((val7248
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8016
                                                                    (if val7248
                                                                      val7248
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8016))))
                                                g8013)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g8017
                                                        (letrec ((x8018
                                                                  (letrec ((x8019
                                                                            (letrec ((x8020
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8020))))
                                                                    (cdr
                                                                     x8019))))
                                                          (cdr x8018))))
                                                g8017)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g8021
                                                        (letrec ((x8024
                                                                  (list? l)))
                                                          (assert x8024)))
                                                       (g8022
                                                        (letrec ((x8025
                                                                  (number?)))
                                                          (assert x8025)))
                                                       (g8023
                                                        (letrec ((x-cnd8026
                                                                  (zero? k)))
                                                          (if x-cnd8026
                                                            x
                                                            (letrec ((x8028
                                                                      (cdr x))
                                                                     (x8027
                                                                      (- k 1)))
                                                              (list-tail
                                                               x8028
                                                               x8027))))))
                                                g8023)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g8029 '())) g8029)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g8030
                                                        (letrec ((x-cnd8031
                                                                  (letrec ((x8032
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x8032))))
                                                          (if x-cnd8031
                                                            (letrec ((x8033
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x8033))
                                                            #f))))
                                                g8030)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g8034
                                                        (letrec ((val7249
                                                                  (letrec ((x8035
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x8035
                                                                     9))))
                                                          (letrec ((g8036
                                                                    (if val7249
                                                                      val7249
                                                                      (letrec ((val7250
                                                                                (letrec ((x8037
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x8037
                                                                                   10))))
                                                                        (letrec ((g8038
                                                                                  (if val7250
                                                                                    val7250
                                                                                    (letrec ((x8039
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x8039
                                                                                       32)))))
                                                                          g8038)))))
                                                            g8036))))
                                                g8034)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g8040
                                                        (letrec ((x8041
                                                                  (letrec ((x8042
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8042))))
                                                          (cdr x8041))))
                                                g8040)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g8043
                                                        (letrec ((x8045
                                                                  (number? x)))
                                                          (assert x8045)))
                                                       (g8044 (> x 0)))
                                                g8044)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g8046 #f)) g8046)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g8047
                                                        (letrec ((x8048
                                                                  (cdr x)))
                                                          (cdr x8048))))
                                                g8047)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g8049
                                                        (letrec ((x8051
                                                                  (number? x)))
                                                          (assert x8051)))
                                                       (g8050
                                                        (letrec ((x-cnd8052
                                                                  (< x 0)))
                                                          (if x-cnd8052
                                                            (ceiling x)
                                                            (floor x)))))
                                                g8050)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g8053
                                                        (letrec ((val7251
                                                                  (eq? a b)))
                                                          (letrec ((g8054
                                                                    (if val7251
                                                                      val7251
                                                                      (letrec ((val7252
                                                                                (letrec ((x-cnd8055
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd8055
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g8056
                                                                                  (if val7252
                                                                                    val7252
                                                                                    (letrec ((val7253
                                                                                              (letrec ((x-cnd8057
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd8057
                                                                                                  (letrec ((x-cnd8058
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd8058
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g8059
                                                                                                (if val7253
                                                                                                  val7253
                                                                                                  (letrec ((val7254
                                                                                                            (letrec ((x-cnd8060
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd8060
                                                                                                                (letrec ((x-cnd8061
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd8061
                                                                                                                    (letrec ((x-cnd8062
                                                                                                                              (letrec ((x8064
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x8063
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x8064
                                                                                                                                 x8063))))
                                                                                                                      (if x-cnd8062
                                                                                                                        (letrec ((x8066
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x8065
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x8066
                                                                                                                           x8065))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g8067
                                                                                                              (if val7254
                                                                                                                val7254
                                                                                                                (letrec ((x-cnd8068
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd8068
                                                                                                                    (letrec ((x-cnd8069
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd8069
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g8070
                                                                                                                                    (letrec ((x-cnd8071
                                                                                                                                              (letrec ((x8072
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x8072
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd8071
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g8073
                                                                                                                                                              (letrec ((val7255
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g8074
                                                                                                                                                                          (if val7255
                                                                                                                                                                            val7255
                                                                                                                                                                            (letrec ((x-cnd8075
                                                                                                                                                                                      (letrec ((x8077
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x8076
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x8077
                                                                                                                                                                                         x8076))))
                                                                                                                                                                              (if x-cnd8075
                                                                                                                                                                                (letrec ((x8078
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x8078))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g8074))))
                                                                                                                                                      g8073))))
                                                                                                                                          (letrec ((g8079
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g8079))
                                                                                                                                        #f))))
                                                                                                                            g8070))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g8067)))))
                                                                                        g8059)))))
                                                                          g8056)))))
                                                            g8054))))
                                                g8053)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g8080
                                                        (letrec ((x8081
                                                                  (letrec ((x8082
                                                                            (letrec ((x8083
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8083))))
                                                                    (car
                                                                     x8082))))
                                                          (cdr x8081))))
                                                g8080)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g8084
                                                        (letrec ((x8085
                                                                  (letrec ((x8086
                                                                            (letrec ((x8087
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8087))))
                                                                    (car
                                                                     x8086))))
                                                          (car x8085))))
                                                g8084)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g8088 (eq? x y)))
                                                g8088)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g8089
                                                        (letrec ((x8092
                                                                  (string?
                                                                   filename)))
                                                          (assert x8092)))
                                                       (g8090
                                                        (letrec ((x8093
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8093)))
                                                       (g8091
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g8094
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g8095 res))
                                                            g8095))))
                                                g8091)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g8096 (cons x '())))
                                                g8096)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8097
                                                        (letrec ((x8100
                                                                  (char? c1)))
                                                          (assert x8100)))
                                                       (g8098
                                                        (letrec ((x8101
                                                                  (char? c2)))
                                                          (assert x8101)))
                                                       (g8099
                                                        (letrec ((val7256
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8102
                                                                    (if val7256
                                                                      val7256
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8102))))
                                                g8099)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g8103
                                                        (letrec ((x8104
                                                                  (letrec ((x8105
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8105))))
                                                          (cdr x8104))))
                                                g8103)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g8106
                                                        (letrec ((x8107
                                                                  (letrec ((x8108
                                                                            (letrec ((x8109
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8109))))
                                                                    (car
                                                                     x8108))))
                                                          (cdr x8107))))
                                                g8106)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g8110
                                                        (letrec ((x8111
                                                                  (letrec ((x8112
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8112))))
                                                          (car x8111))))
                                                g8110)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g8113
                                                        (letrec ((x8114
                                                                  (letrec ((x8115
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8115))))
                                                          (car x8114))))
                                                g8113)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g8116
                                                        (letrec ((x8119
                                                                  (char? c1)))
                                                          (assert x8119)))
                                                       (g8117
                                                        (letrec ((x8120
                                                                  (char? c2)))
                                                          (assert x8120)))
                                                       (g8118
                                                        (letrec ((x8121
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8121))))
                                                g8118)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g8122
                                                        (letrec ((x8123
                                                                  (letrec ((x8124
                                                                            (letrec ((x8125
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8125))))
                                                                    (car
                                                                     x8124))))
                                                          (car x8123))))
                                                g8122)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g8126
                                                        (letrec ((x8128
                                                                  (number? x)))
                                                          (assert x8128)))
                                                       (g8127 (< x 0)))
                                                g8127)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g8129 (memq e l)))
                                                g8129)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g8130
                                                        (letrec ((x8131
                                                                  (letrec ((x8132
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8132))))
                                                          (car x8131))))
                                                g8130)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8133 '())) g8133)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8134
                                                        (letrec ((x8136
                                                                  (list? l)))
                                                          (assert x8136)))
                                                       (g8135
                                                        (letrec ((x-cnd8137
                                                                  (null? l)))
                                                          (if x-cnd8137
                                                            '()
                                                            (letrec ((x8140
                                                                      (letrec ((x8141
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8141)))
                                                                     (x8138
                                                                      (letrec ((x8139
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8139))))
                                                              (append
                                                               x8140
                                                               x8138))))))
                                                g8135)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8142
                                                        (letrec ((x8143
                                                                  (letrec ((x8144
                                                                            (letrec ((x8145
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8145))))
                                                                    (car
                                                                     x8144))))
                                                          (car x8143))))
                                                g8142)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8146
                                                        (letrec ((x8147
                                                                  (letrec ((x8148
                                                                            (letrec ((x8149
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8149))))
                                                                    (cdr
                                                                     x8148))))
                                                          (cdr x8147))))
                                                g8146)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8150
                                                        (letrec ((x8152
                                                                  (number? x)))
                                                          (assert x8152)))
                                                       (g8151
                                                        (letrec ((x8153
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8153))))
                                                g8151)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8154
                                                        (letrec ((x8155
                                                                  (letrec ((x8156
                                                                            (letrec ((x8157
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8157))))
                                                                    (car
                                                                     x8156))))
                                                          (car x8155))))
                                                g8154)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8158
                                                        (letrec ((x8161
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8161)))
                                                       (g8159
                                                        (letrec ((x8162
                                                                  (list?
                                                                   args)))
                                                          (assert x8162)))
                                                       (g8160
                                                        (letrec ((x-cnd8163
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8163
                                                            (letrec ((g8164
                                                                      (proc)))
                                                              g8164)
                                                            (letrec ((x-cnd8165
                                                                      (letrec ((x8166
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8166))))
                                                              (if x-cnd8165
                                                                (letrec ((g8167
                                                                          (letrec ((x8168
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8168))))
                                                                  g8167)
                                                                (letrec ((x-cnd8169
                                                                          (letrec ((x8170
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8170))))
                                                                  (if x-cnd8169
                                                                    (letrec ((g8171
                                                                              (letrec ((x8173
                                                                                        (car
                                                                                         args))
                                                                                       (x8172
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8173
                                                                                 x8172))))
                                                                      g8171)
                                                                    (letrec ((x-cnd8174
                                                                              (letrec ((x8175
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8175))))
                                                                      (if x-cnd8174
                                                                        (letrec ((g8176
                                                                                  (letrec ((x8179
                                                                                            (car
                                                                                             args))
                                                                                           (x8178
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8177
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8179
                                                                                     x8178
                                                                                     x8177))))
                                                                          g8176)
                                                                        (letrec ((x-cnd8180
                                                                                  (letrec ((x8181
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8181))))
                                                                          (if x-cnd8180
                                                                            (letrec ((g8182
                                                                                      (letrec ((x8186
                                                                                                (car
                                                                                                 args))
                                                                                               (x8185
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8184
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8183
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8186
                                                                                         x8185
                                                                                         x8184
                                                                                         x8183))))
                                                                              g8182)
                                                                            (letrec ((x-cnd8187
                                                                                      (letrec ((x8188
                                                                                                (letrec ((x8189
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8189))))
                                                                                        (null?
                                                                                         x8188))))
                                                                              (if x-cnd8187
                                                                                (letrec ((g8190
                                                                                          (letrec ((x8196
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8195
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8194
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8193
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8191
                                                                                                    (letrec ((x8192
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8192))))
                                                                                            (proc
                                                                                             x8196
                                                                                             x8195
                                                                                             x8194
                                                                                             x8193
                                                                                             x8191))))
                                                                                  g8190)
                                                                                (letrec ((x-cnd8197
                                                                                          (letrec ((x8198
                                                                                                    (letrec ((x8199
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8199))))
                                                                                            (null?
                                                                                             x8198))))
                                                                                  (if x-cnd8197
                                                                                    (letrec ((g8200
                                                                                              (letrec ((x8208
                                                                                                        (car
                                                                                                         args))
                                                                                                       (x8207
                                                                                                        (cadr
                                                                                                         args))
                                                                                                       (x8206
                                                                                                        (caddr
                                                                                                         args))
                                                                                                       (x8205
                                                                                                        (cadddr
                                                                                                         args))
                                                                                                       (x8203
                                                                                                        (letrec ((x8204
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (car
                                                                                                           x8204)))
                                                                                                       (x8201
                                                                                                        (letrec ((x8202
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8202))))
                                                                                                (proc
                                                                                                 x8208
                                                                                                 x8207
                                                                                                 x8206
                                                                                                 x8205
                                                                                                 x8203
                                                                                                 x8201))))
                                                                                      g8200)
                                                                                    (letrec ((x-cnd8209
                                                                                              (letrec ((x8210
                                                                                                        (letrec ((x8211
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8211))))
                                                                                                (null?
                                                                                                 x8210))))
                                                                                      (if x-cnd8209
                                                                                        (letrec ((g8212
                                                                                                  (letrec ((x8222
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8221
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8220
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8219
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8217
                                                                                                            (letrec ((x8218
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8218)))
                                                                                                           (x8215
                                                                                                            (letrec ((x8216
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8216)))
                                                                                                           (x8213
                                                                                                            (letrec ((x8214
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8214))))
                                                                                                    (proc
                                                                                                     x8222
                                                                                                     x8221
                                                                                                     x8220
                                                                                                     x8219
                                                                                                     x8217
                                                                                                     x8215
                                                                                                     x8213))))
                                                                                          g8212)
                                                                                        (letrec ((g8223
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8223)))))))))))))))))))
                                                g8160)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8224
                                                        (letrec ((x8226
                                                                  (list? l)))
                                                          (assert x8226)))
                                                       (g8225
                                                        (letrec ((x-cnd8227
                                                                  (null? l)))
                                                          (if x-cnd8227
                                                            #f
                                                            (letrec ((x-cnd8228
                                                                      (letrec ((x8229
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8229
                                                                         e))))
                                                              (if x-cnd8228
                                                                l
                                                                (letrec ((x8230
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8230))))))))
                                                g8225)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8231
                                                        (letrec ((x8232
                                                                  (letrec ((x8233
                                                                            (letrec ((x8234
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8234))))
                                                                    (cdr
                                                                     x8233))))
                                                          (cdr x8232))))
                                                g8231)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8235
                                                        (letrec ((x8236
                                                                  (letrec ((x8237
                                                                            (letrec ((x8238
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8238))))
                                                                    (cdr
                                                                     x8237))))
                                                          (car x8236))))
                                                g8235)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8239 (random 42)))
                                                g8239)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8240
                                                        (letrec ((x8242
                                                                  (number? x)))
                                                          (assert x8242)))
                                                       (g8241 (= x 0)))
                                                g8241)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8243
                                                        (letrec ((val7257
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8244
                                                                    (if val7257
                                                                      val7257
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8244))))
                                                g8243)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8245
                                                        (letrec ((x8246
                                                                  (cdr x)))
                                                          (car x8246))))
                                                g8245)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8247
                                                        (letrec ((val7258
                                                                  (letrec ((x-cnd8248
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8248
                                                                      (letrec ((x8249
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8249))
                                                                      #f))))
                                                          (letrec ((g8250
                                                                    (if val7258
                                                                      val7258
                                                                      (null?
                                                                       l))))
                                                            g8250))))
                                                g8247)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8251
                                                        (letrec ((x8252
                                                                  (letrec ((x8253
                                                                            (letrec ((x8254
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8254))))
                                                                    (cdr
                                                                     x8253))))
                                                          (cdr x8252))))
                                                g8251)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8255
                                                        (letrec ((x-cnd8256
                                                                  (letrec ((x8257
                                                                            #\0))
                                                                    (char<=?
                                                                     x8257
                                                                     c))))
                                                          (if x-cnd8256
                                                            (letrec ((x8258
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8258))
                                                            #f))))
                                                g8255)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8259
                                                        (letrec ((x8261
                                                                  (list? l)))
                                                          (assert x8261)))
                                                       (g8260
                                                        (letrec ((x-cnd8262
                                                                  (null? l)))
                                                          (if x-cnd8262
                                                            #f
                                                            (letrec ((x-cnd8263
                                                                      (letrec ((x8264
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8264
                                                                         k))))
                                                              (if x-cnd8263
                                                                (car l)
                                                                (letrec ((x8265
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8265))))))))
                                                g8260)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8266 (if x #f #t)))
                                                g8266)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8267 (append l1 l2)))
                                                g8267)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8268
                                                        (letrec ((x8270
                                                                  (list? l)))
                                                          (assert x8270)))
                                                       (g8269
                                                        (letrec ((x-cnd8271
                                                                  (null? l)))
                                                          (if x-cnd8271
                                                            #f
                                                            (letrec ((x-cnd8272
                                                                      (letrec ((x8273
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8273
                                                                         e))))
                                                              (if x-cnd8272
                                                                l
                                                                (letrec ((x8274
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8274))))))))
                                                g8269)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8275
                                                        (letrec ((x8276
                                                                  (letrec ((x8277
                                                                            (letrec ((x8278
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8278))))
                                                                    (cdr
                                                                     x8277))))
                                                          (car x8276))))
                                                g8275)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8279
                                                        (letrec ((x8281
                                                                  (list? l)))
                                                          (assert x8281)))
                                                       (g8280
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8282
                                                                              (letrec ((x-cnd8283
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8283
                                                                                  0
                                                                                  (letrec ((x8284
                                                                                            (letrec ((x8285
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8285))))
                                                                                    (+
                                                                                     1
                                                                                     x8284))))))
                                                                      g8282))))
                                                          (letrec ((g8286
                                                                    (rec l)))
                                                            g8286))))
                                                g8280)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8287
                                                        (letrec ((x8290
                                                                  (char? c1)))
                                                          (assert x8290)))
                                                       (g8288
                                                        (letrec ((x8291
                                                                  (char? c2)))
                                                          (assert x8291)))
                                                       (g8289
                                                        (letrec ((val7259
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8292
                                                                    (if val7259
                                                                      val7259
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8292))))
                                                g8289)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8293
                                                        (letrec ((x8294
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8294))))
                                                g8293)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8295
                                                        (letrec ((x8296
                                                                  (letrec ((x8297
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8297))))
                                                          (cdr x8296))))
                                                g8295)))
                                           (assoc
                                            (lambda (k l)
                                              (letrec ((g8298
                                                        (letrec ((x8300
                                                                  (list? l)))
                                                          (assert x8300)))
                                                       (g8299
                                                        (letrec ((x-cnd8301
                                                                  (null? l)))
                                                          (if x-cnd8301
                                                            #f
                                                            (letrec ((x-cnd8302
                                                                      (letrec ((x8303
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8303
                                                                         k))))
                                                              (if x-cnd8302
                                                                (car l)
                                                                (letrec ((x8304
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8304))))))))
                                                g8299)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8305
                                                        (letrec ((x8306
                                                                  (car x)))
                                                          (car x8306))))
                                                g8305)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8307
                                                        (letrec ((x8310
                                                                  (char? c1)))
                                                          (assert x8310)))
                                                       (g8308
                                                        (letrec ((x8311
                                                                  (char? c2)))
                                                          (assert x8311)))
                                                       (g8309
                                                        (letrec ((x8312
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8312))))
                                                g8309)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8313
                                                        (letrec ((val7260
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8314
                                                                    (if val7260
                                                                      val7260
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8314))))
                                                g8313)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8315
                                                        (letrec ((x8318
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8318)))
                                                       (g8316
                                                        (letrec ((x8319
                                                                  (list? l)))
                                                          (assert x8319)))
                                                       (g8317
                                                        (letrec ((x-cnd8320
                                                                  (null? l)))
                                                          (if x-cnd8320
                                                            #t
                                                            (letrec ((x-cnd8321
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8321
                                                                (letrec ((g8322
                                                                          (letrec ((x8324
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8324)))
                                                                         (g8323
                                                                          (letrec ((x8325
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8325))))
                                                                  g8323)
                                                                '()))))))
                                                g8317)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8326
                                                        (letrec ((x8328
                                                                  (number? x)))
                                                          (assert x8328)))
                                                       (g8327
                                                        (letrec ((x-cnd8329
                                                                  (< x 0)))
                                                          (if x-cnd8329
                                                            (- 0 x)
                                                            x))))
                                                g8327)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8330
                                                        (letrec ((x8333
                                                                  (char? c1)))
                                                          (assert x8333)))
                                                       (g8331
                                                        (letrec ((x8334
                                                                  (char? c2)))
                                                          (assert x8334)))
                                                       (g8332
                                                        (letrec ((val7261
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8335
                                                                    (if val7261
                                                                      val7261
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8335))))
                                                g8332)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8336
                                                        (letrec ((x8337
                                                                  (letrec ((x8338
                                                                            (letrec ((x8339
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8339))))
                                                                    (cdr
                                                                     x8338))))
                                                          (car x8337))))
                                                g8336)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8340 #f)) g8340)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8341
                                                        (letrec ((x8343
                                                                  (letrec ((x8344
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8344)))
                                                                 (x8342
                                                                  (gcd m n)))
                                                          (/ x8343 x8342))))
                                                g8341)))
                                           (deref car)
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8345
                                                        (letrec ((x8349
                                                                  (list? l)))
                                                          (assert x8349)))
                                                       (g8346
                                                        (letrec ((x8350
                                                                  (number?
                                                                   index)))
                                                          (assert x8350)))
                                                       (g8347
                                                        (letrec ((x8351
                                                                  (letrec ((x8352
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8352))))
                                                          (assert x8351)))
                                                       (g8348
                                                        (letrec ((x-cnd8353
                                                                  (= index 0)))
                                                          (if x-cnd8353
                                                            (car l)
                                                            (letrec ((x8355
                                                                      (cdr l))
                                                                     (x8354
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8355
                                                               x8354))))))
                                                g8348)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8356
                                                        (letrec ((x-cnd8357
                                                                  (= b 0)))
                                                          (if x-cnd8357
                                                            a
                                                            (letrec ((x8358
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8358))))))
                                                g8356)))
                                           (block
                                            (lambda (x7754 y7755 color7756)
                                              (letrec ((g8359
                                                        (letrec ((x8360
                                                                  (letrec ((x8361
                                                                            (letrec ((x8362
                                                                                      (orig-cons
                                                                                       color7756
                                                                                       '())))
                                                                              (orig-cons
                                                                               y7755
                                                                               x8362))))
                                                                    (orig-cons
                                                                     x7754
                                                                     x8361))))
                                                          (orig-cons
                                                           'block
                                                           x8360))))
                                                g8359)))
                                           (block?
                                            (lambda (block7753)
                                              (letrec ((g8363
                                                        (letrec ((x8364
                                                                  (car
                                                                   block7753)))
                                                          (eq? x8364 'block))))
                                                g8363)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g8365
                                                        (letrec ((x8366
                                                                  (orig-cdr
                                                                   block)))
                                                          (orig-car x8366))))
                                                g8365)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g8367
                                                        (letrec ((x8368
                                                                  (letrec ((x8369
                                                                            (orig-cdr
                                                                             block)))
                                                                    (orig-cdr
                                                                     x8369))))
                                                          (orig-car x8368))))
                                                g8367)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g8370
                                                        (letrec ((x8371
                                                                  (letrec ((x8372
                                                                            (letrec ((x8373
                                                                                      (orig-cdr
                                                                                       block)))
                                                                              (orig-cdr
                                                                               x8373))))
                                                                    (orig-cdr
                                                                     x8372))))
                                                          (orig-car x8371))))
                                                g8370)))
                                           (tetra
                                            (lambda (center7761 blocks7762)
                                              (letrec ((g8374
                                                        (letrec ((x8375
                                                                  (letrec ((x8376
                                                                            (orig-cons
                                                                             blocks7762
                                                                             '())))
                                                                    (orig-cons
                                                                     center7761
                                                                     x8376))))
                                                          (orig-cons
                                                           'tetra
                                                           x8375))))
                                                g8374)))
                                           (tetra?
                                            (lambda (tetra7760)
                                              (letrec ((g8377
                                                        (letrec ((x8378
                                                                  (car
                                                                   tetra7760)))
                                                          (eq? x8378 'tetra))))
                                                g8377)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g8379
                                                        (letrec ((x8380
                                                                  (orig-cdr
                                                                   tetra)))
                                                          (orig-car x8380))))
                                                g8379)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g8381
                                                        (letrec ((x8382
                                                                  (letrec ((x8383
                                                                            (orig-cdr
                                                                             tetra)))
                                                                    (orig-cdr
                                                                     x8383))))
                                                          (orig-car x8382))))
                                                g8381)))
                                           (world
                                            (lambda (tetra7766 blocks7767)
                                              (letrec ((g8384
                                                        (letrec ((x8385
                                                                  (letrec ((x8386
                                                                            (orig-cons
                                                                             blocks7767
                                                                             '())))
                                                                    (orig-cons
                                                                     tetra7766
                                                                     x8386))))
                                                          (orig-cons
                                                           'world
                                                           x8385))))
                                                g8384)))
                                           (world?
                                            (lambda (world7765)
                                              (letrec ((g8387
                                                        (letrec ((x8388
                                                                  (car
                                                                   world7765)))
                                                          (eq? x8388 'world))))
                                                g8387)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g8389
                                                        (letrec ((x8390
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8390))))
                                                g8389)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g8391
                                                        (letrec ((x8392
                                                                  (letrec ((x8393
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8393))))
                                                          (orig-car x8392))))
                                                g8391)))
                                           (posn
                                            (lambda (x7771 y7772)
                                              (letrec ((g8394
                                                        (letrec ((x8395
                                                                  (letrec ((x8396
                                                                            (orig-cons
                                                                             y7772
                                                                             '())))
                                                                    (orig-cons
                                                                     x7771
                                                                     x8396))))
                                                          (orig-cons
                                                           'posn
                                                           x8395))))
                                                g8394)))
                                           (posn?
                                            (lambda (posn7770)
                                              (letrec ((g8397
                                                        (letrec ((x8398
                                                                  (car
                                                                   posn7770)))
                                                          (eq? x8398 'posn))))
                                                g8397)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8399
                                                        (letrec ((x8400
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8400))))
                                                g8399)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8401
                                                        (letrec ((x8402
                                                                  (letrec ((x8403
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8403))))
                                                          (orig-car x8402))))
                                                g8401)))
                                           (COLOR/C symbol?/c)
                                           (POSN/C
                                            (lambda (j7402 k7403 v7401)
                                              (letrec ((g8404
                                                        (letrec ((checked7404
                                                                  (letrec ((x8405
                                                                            (letrec ((x8406
                                                                                      (orig-cdr
                                                                                       v7401)))
                                                                              (orig-car
                                                                               x8406))))
                                                                    (real?/c
                                                                     j7402
                                                                     k7403
                                                                     x8405))))
                                                          (letrec ((g8407
                                                                    (letrec ((checked7405
                                                                              (letrec ((x8408
                                                                                        (letrec ((x8409
                                                                                                  (letrec ((x8410
                                                                                                            (orig-cdr
                                                                                                             v7401)))
                                                                                                    (orig-cdr
                                                                                                     x8410))))
                                                                                          (orig-car
                                                                                           x8409))))
                                                                                (real?/c
                                                                                 j7402
                                                                                 k7403
                                                                                 x8408))))
                                                                      (letrec ((g8411
                                                                                (letrec ((x8412
                                                                                          (letrec ((x8413
                                                                                                    (cons
                                                                                                     checked7405
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7404
                                                                                             x8413))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8412))))
                                                                        g8411))))
                                                            g8407))))
                                                g8404)))
                                           (BLOCK/C
                                            (lambda (j7408 k7409 v7407)
                                              (letrec ((g8414
                                                        (letrec ((checked7410
                                                                  (letrec ((x8415
                                                                            (letrec ((x8416
                                                                                      (orig-cdr
                                                                                       v7407)))
                                                                              (orig-car
                                                                               x8416))))
                                                                    (real?/c
                                                                     j7408
                                                                     k7409
                                                                     x8415))))
                                                          (letrec ((g8417
                                                                    (letrec ((checked7411
                                                                              (letrec ((x8418
                                                                                        (letrec ((x8419
                                                                                                  (letrec ((x8420
                                                                                                            (orig-cdr
                                                                                                             v7407)))
                                                                                                    (orig-cdr
                                                                                                     x8420))))
                                                                                          (orig-car
                                                                                           x8419))))
                                                                                (real?/c
                                                                                 j7408
                                                                                 k7409
                                                                                 x8418))))
                                                                      (letrec ((g8421
                                                                                (letrec ((checked7412
                                                                                          (letrec ((x8422
                                                                                                    (letrec ((x8423
                                                                                                              (letrec ((x8424
                                                                                                                        (letrec ((x8425
                                                                                                                                  (orig-cdr
                                                                                                                                   v7407)))
                                                                                                                          (orig-cdr
                                                                                                                           x8425))))
                                                                                                                (orig-cdr
                                                                                                                 x8424))))
                                                                                                      (orig-car
                                                                                                       x8423))))
                                                                                            (COLOR/C
                                                                                             j7408
                                                                                             k7409
                                                                                             x8422))))
                                                                                  (letrec ((g8426
                                                                                            (letrec ((x8427
                                                                                                      (letrec ((x8428
                                                                                                                (letrec ((x8429
                                                                                                                          (cons
                                                                                                                           checked7412
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked7411
                                                                                                                   x8429))))
                                                                                                        (cons
                                                                                                         checked7410
                                                                                                         x8428))))
                                                                                              (cons
                                                                                               block
                                                                                               x8427))))
                                                                                    g8426))))
                                                                        g8421))))
                                                            g8417))))
                                                g8414)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j7415 k7416 v7414)
                                              (letrec ((g8430
                                                        (letrec ((checked7417
                                                                  (letrec ((x8431
                                                                            (letrec ((x8432
                                                                                      (orig-cdr
                                                                                       v7414)))
                                                                              (orig-car
                                                                               x8432))))
                                                                    (POSN/C
                                                                     j7415
                                                                     k7416
                                                                     x8431))))
                                                          (letrec ((g8433
                                                                    (letrec ((checked7418
                                                                              (letrec ((x8434
                                                                                        (letrec ((x8435
                                                                                                  (letrec ((x8436
                                                                                                            (orig-cdr
                                                                                                             v7414)))
                                                                                                    (orig-cdr
                                                                                                     x8436))))
                                                                                          (orig-car
                                                                                           x8435))))
                                                                                (BSET/C
                                                                                 j7415
                                                                                 k7416
                                                                                 x8434))))
                                                                      (letrec ((g8437
                                                                                (letrec ((x8438
                                                                                          (letrec ((x8439
                                                                                                    (cons
                                                                                                     checked7418
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7417
                                                                                             x8439))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x8438))))
                                                                        g8437))))
                                                            g8433))))
                                                g8430)))
                                           (WORLD/C
                                            (lambda (j7421 k7422 v7420)
                                              (letrec ((g8440
                                                        (letrec ((checked7423
                                                                  (letrec ((x8441
                                                                            (letrec ((x8442
                                                                                      (orig-cdr
                                                                                       v7420)))
                                                                              (orig-car
                                                                               x8442))))
                                                                    (TETRA/C
                                                                     j7421
                                                                     k7422
                                                                     x8441))))
                                                          (letrec ((g8443
                                                                    (letrec ((checked7424
                                                                              (letrec ((x8444
                                                                                        (letrec ((x8445
                                                                                                  (letrec ((x8446
                                                                                                            (orig-cdr
                                                                                                             v7420)))
                                                                                                    (orig-cdr
                                                                                                     x8446))))
                                                                                          (orig-car
                                                                                           x8445))))
                                                                                (BSET/C
                                                                                 j7421
                                                                                 k7422
                                                                                 x8444))))
                                                                      (letrec ((g8447
                                                                                (letrec ((x8448
                                                                                          (letrec ((x8449
                                                                                                    (cons
                                                                                                     checked7424
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7423
                                                                                             x8449))))
                                                                                  (cons
                                                                                   world
                                                                                   x8448))))
                                                                        g8447))))
                                                            g8443))))
                                                g8440)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8450
                                                        (letrec ((x-cnd8451
                                                                  (letrec ((x8453
                                                                            (posn-x
                                                                             p1))
                                                                           (x8452
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8453
                                                                     x8452))))
                                                          (if x-cnd8451
                                                            (letrec ((x8455
                                                                      (posn-y
                                                                       p1))
                                                                     (x8454
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8455 x8454))
                                                            #f))))
                                                g8450)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g8456
                                                        (letrec ((x-cnd8457
                                                                  (letrec ((x8459
                                                                            (block-x
                                                                             b1))
                                                                           (x8458
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x8459
                                                                     x8458))))
                                                          (if x-cnd8457
                                                            (letrec ((x8461
                                                                      (block-y
                                                                       b1))
                                                                     (x8460
                                                                      (block-y
                                                                       b2)))
                                                              (= x8461 x8460))
                                                            #f))))
                                                g8456)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g8462
                                                        (letrec ((x8466
                                                                  (letrec ((x8467
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x8467)))
                                                                 (x8464
                                                                  (letrec ((x8465
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x8465)))
                                                                 (x8463
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8466
                                                           x8464
                                                           x8463))))
                                                g8462)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g8468
                                                        (letrec ((x8475
                                                                  (letrec ((x8479
                                                                            (posn-x
                                                                             c))
                                                                           (x8476
                                                                            (letrec ((x8478
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x8477
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x8478
                                                                               x8477))))
                                                                    (+
                                                                     x8479
                                                                     x8476)))
                                                                 (x8470
                                                                  (letrec ((x8474
                                                                            (posn-y
                                                                             c))
                                                                           (x8471
                                                                            (letrec ((x8473
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8472
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x8473
                                                                               x8472))))
                                                                    (+
                                                                     x8474
                                                                     x8471)))
                                                                 (x8469
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8475
                                                           x8470
                                                           x8469))))
                                                g8468)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g8480
                                                        (letrec ((x8481
                                                                  (letrec ((x8482
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x8482))))
                                                          (block-rotate-ccw
                                                           c
                                                           x8481))))
                                                g8480)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g8483
                                                        (letrec ((x-cnd8484
                                                                  (null? xs)))
                                                          (if x-cnd8484
                                                            (letrec ((g8485
                                                                      #f))
                                                              g8485)
                                                            (letrec ((g8486
                                                                      (letrec ((x8489
                                                                                (letrec ((x8490
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8490)))
                                                                               (x8487
                                                                                (letrec ((x8488
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (ormap
                                                                                   p?
                                                                                   x8488))))
                                                                        (or x8489
                                                                            x8487))))
                                                              g8486)))))
                                                g8483)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g8491
                                                        (letrec ((x-cnd8492
                                                                  (null? xs)))
                                                          (if x-cnd8492
                                                            (letrec ((g8493
                                                                      #t))
                                                              g8493)
                                                            (letrec ((g8494
                                                                      (letrec ((x8497
                                                                                (letrec ((x8498
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8498)))
                                                                               (x8495
                                                                                (letrec ((x8496
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (andmap
                                                                                   p?
                                                                                   x8496))))
                                                                        (and x8497
                                                                             x8495))))
                                                              g8494)))))
                                                g8491)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g8499
                                                        (letrec ((x-cnd8500
                                                                  (null? xs)))
                                                          (if x-cnd8500
                                                            (letrec ((g8501
                                                                      null))
                                                              g8501)
                                                            (letrec ((x-cnd8502
                                                                      (letrec ((x8503
                                                                                (car
                                                                                 xs)))
                                                                        (p?
                                                                         x8503))))
                                                              (if x-cnd8502
                                                                (letrec ((g8504
                                                                          (letrec ((x8507
                                                                                    (car
                                                                                     xs))
                                                                                   (x8505
                                                                                    (letrec ((x8506
                                                                                              (cdr
                                                                                               xs)))
                                                                                      (filter
                                                                                       p?
                                                                                       x8506))))
                                                                            (cons
                                                                             x8507
                                                                             x8505))))
                                                                  g8504)
                                                                (letrec ((g8508
                                                                          (letrec ((x8509
                                                                                    (cdr
                                                                                     xs)))
                                                                            (filter
                                                                             p?
                                                                             x8509))))
                                                                  g8508)))))))
                                                g8499)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g8510
                                                        (letrec ((x-cnd8511
                                                                  (null? l)))
                                                          (if x-cnd8511
                                                            (letrec ((g8512 r))
                                                              g8512)
                                                            (letrec ((g8513
                                                                      (letrec ((x8516
                                                                                (car
                                                                                 l))
                                                                               (x8514
                                                                                (letrec ((x8515
                                                                                          (cdr
                                                                                           l)))
                                                                                  (append
                                                                                   x8515
                                                                                   r))))
                                                                        (cons
                                                                         x8516
                                                                         x8514))))
                                                              g8513)))))
                                                g8510)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g8517
                                                        (letrec ((x-cnd8518
                                                                  (null? xs)))
                                                          (if x-cnd8518
                                                            (letrec ((g8519 a))
                                                              g8519)
                                                            (letrec ((g8520
                                                                      (letrec ((x8523
                                                                                (car
                                                                                 xs))
                                                                               (x8521
                                                                                (letrec ((x8522
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (foldr
                                                                                   f
                                                                                   a
                                                                                   x8522))))
                                                                        (f
                                                                         x8523
                                                                         x8521))))
                                                              g8520)))))
                                                g8517)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g8524
                                                        (ormap
                                                         (lambda (c)
                                                           (letrec ((g8525
                                                                     (block=?
                                                                      b
                                                                      c)))
                                                             g8525))
                                                         bs)))
                                                g8524)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8526
                                                        (andmap
                                                         (lambda (b)
                                                           (letrec ((g8527
                                                                     (blocks-contains?
                                                                      bs2
                                                                      b)))
                                                             g8527))
                                                         bs1)))
                                                g8526)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8528
                                                        (letrec ((x-cnd8529
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd8529
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g8528)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g8530
                                                        (filter
                                                         (lambda (b)
                                                           (letrec ((g8531
                                                                     (blocks-contains?
                                                                      bs2
                                                                      b)))
                                                             g8531))
                                                         bs1)))
                                                g8530)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g8532 (length bs)))
                                                g8532)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g8533
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8534
                                                                     (block-move
                                                                      dx
                                                                      dy
                                                                      b)))
                                                             g8534))
                                                         bs)))
                                                g8533)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g8535
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8536
                                                                     (block-rotate-ccw
                                                                      c
                                                                      b)))
                                                             g8536))
                                                         bs)))
                                                g8535)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g8537
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8538
                                                                     (block-rotate-cw
                                                                      c
                                                                      b)))
                                                             g8538))
                                                         bs)))
                                                g8537)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g8539
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8540
                                                                     (letrec ((x8542
                                                                               (block-x
                                                                                b))
                                                                              (x8541
                                                                               (block-y
                                                                                b)))
                                                                       (block
                                                                        x8542
                                                                        x8541
                                                                        c))))
                                                             g8540))
                                                         bs)))
                                                g8539)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g8543
                                                        (filter
                                                         (lambda (b)
                                                           (letrec ((g8544
                                                                     (letrec ((x8545
                                                                               (block-y
                                                                                b)))
                                                                       (=
                                                                        i
                                                                        x8545))))
                                                             g8544))
                                                         bs)))
                                                g8543)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g8546
                                                        (letrec ((x8547
                                                                  (letrec ((x8548
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x8548))))
                                                          (=
                                                           board-width
                                                           x8547))))
                                                g8546)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g8549
                                                        (ormap
                                                         (lambda (b)
                                                           (letrec ((g8550
                                                                     (letrec ((x8551
                                                                               (block-y
                                                                                b)))
                                                                       (<=
                                                                        x8551
                                                                        0))))
                                                             g8550))
                                                         bs)))
                                                g8549)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g8552
                                                        (foldr
                                                         (lambda (b bs)
                                                           (letrec ((g8553
                                                                     (letrec ((x-cnd8554
                                                                               (blocks-contains?
                                                                                bs
                                                                                b)))
                                                                       (if x-cnd8554
                                                                         (letrec ((g8555
                                                                                   bs))
                                                                           g8555)
                                                                         (letrec ((g8556
                                                                                   (cons
                                                                                    b
                                                                                    bs)))
                                                                           g8556)))))
                                                             g8553))
                                                         bs2
                                                         bs1)))
                                                g8552)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g8557
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8558
                                                                     (letrec ((x8559
                                                                               (block-y
                                                                                b)))
                                                                       (max
                                                                        x8559
                                                                        n))))
                                                             g8558))
                                                         0
                                                         bs)))
                                                g8557)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g8560
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8561
                                                                     (letrec ((x8562
                                                                               (block-x
                                                                                b)))
                                                                       (min
                                                                        x8562
                                                                        n))))
                                                             g8561))
                                                         board-width
                                                         bs)))
                                                g8560)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g8563
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8564
                                                                     (letrec ((x8565
                                                                               (block-x
                                                                                b)))
                                                                       (max
                                                                        x8565
                                                                        n))))
                                                             g8564))
                                                         0
                                                         bs)))
                                                g8563)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g8566
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g8566)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g8567
                                                        (letrec ((x-cnd8568
                                                                  (< i 0)))
                                                          (if x-cnd8568
                                                            (letrec ((g8569
                                                                      empty))
                                                              g8569)
                                                            (letrec ((x-cnd8570
                                                                      (full-row?
                                                                       bs
                                                                       i)))
                                                              (if x-cnd8570
                                                                (letrec ((g8571
                                                                          (letrec ((x8573
                                                                                    (sub1
                                                                                     i))
                                                                                   (x8572
                                                                                    (add1
                                                                                     offset)))
                                                                            (elim-row
                                                                             bs
                                                                             x8573
                                                                             x8572))))
                                                                  g8571)
                                                                (letrec ((g8574
                                                                          (letrec ((x8577
                                                                                    (letrec ((x8578
                                                                                              (sub1
                                                                                               i)))
                                                                                      (elim-row
                                                                                       bs
                                                                                       x8578
                                                                                       offset)))
                                                                                   (x8575
                                                                                    (letrec ((x8576
                                                                                              (blocks-row
                                                                                               bs
                                                                                               i)))
                                                                                      (blocks-move
                                                                                       0
                                                                                       offset
                                                                                       x8576))))
                                                                            (blocks-union
                                                                             x8577
                                                                             x8575))))
                                                                  g8574)))))))
                                                g8567)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g8579
                                                        (letrec ((x8582
                                                                  (letrec ((x8586
                                                                            (letrec ((x8587
                                                                                      (letrec ((x8588
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x8588))))
                                                                              (+
                                                                               dx
                                                                               x8587)))
                                                                           (x8583
                                                                            (letrec ((x8584
                                                                                      (letrec ((x8585
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x8585))))
                                                                              (+
                                                                               dy
                                                                               x8584))))
                                                                    (posn
                                                                     x8586
                                                                     x8583)))
                                                                 (x8580
                                                                  (letrec ((x8581
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x8581))))
                                                          (tetra
                                                           x8582
                                                           x8580))))
                                                g8579)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g8589
                                                        (letrec ((x8593
                                                                  (tetra-center
                                                                   t))
                                                                 (x8590
                                                                  (letrec ((x8592
                                                                            (tetra-center
                                                                             t))
                                                                           (x8591
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8592
                                                                     x8591))))
                                                          (tetra
                                                           x8593
                                                           x8590))))
                                                g8589)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8594
                                                        (letrec ((x8598
                                                                  (tetra-center
                                                                   t))
                                                                 (x8595
                                                                  (letrec ((x8597
                                                                            (tetra-center
                                                                             t))
                                                                           (x8596
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8597
                                                                     x8596))))
                                                          (tetra
                                                           x8598
                                                           x8595))))
                                                g8594)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8599
                                                        (letrec ((x8600
                                                                  (letrec ((x8601
                                                                            (letrec ((x8602
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8602
                                                                               bs))))
                                                                    (false?
                                                                     x8601))))
                                                          (false? x8600))))
                                                g8599)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8603
                                                        (letrec ((x8606
                                                                  (tetra-center
                                                                   t))
                                                                 (x8604
                                                                  (letrec ((x8605
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8605
                                                                     c))))
                                                          (tetra
                                                           x8606
                                                           x8604))))
                                                g8603)))
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
                                              (letrec ((g8607
                                                        (letrec ((x8608
                                                                  (letrec ((x8614
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8609
                                                                            (letrec ((x8613
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8612
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8611
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8610
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8613
                                                                               x8612
                                                                               x8611
                                                                               x8610))))
                                                                    (tetra
                                                                     x8614
                                                                     x8609))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8608))))
                                                g8607)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8615
                                                        (letrec ((x8621
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8616
                                                                  (letrec ((x8617
                                                                            (letrec ((x8619
                                                                                      (letrec ((x8620
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8620)))
                                                                                     (x8618
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8619
                                                                               x8618))))
                                                                    (eliminate-full-rows
                                                                     x8617))))
                                                          (world
                                                           x8621
                                                           x8616))))
                                                g8615)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8622
                                                        (letrec ((x-cnd8623
                                                                  (landed? w)))
                                                          (if x-cnd8623
                                                            (letrec ((g8624 w))
                                                              g8624)
                                                            (letrec ((g8625
                                                                      (letrec ((x8626
                                                                                (letrec ((x8628
                                                                                          (letrec ((x8629
                                                                                                    (world-tetra
                                                                                                     w)))
                                                                                            (tetra-move
                                                                                             0
                                                                                             1
                                                                                             x8629)))
                                                                                         (x8627
                                                                                          (world-blocks
                                                                                           w)))
                                                                                  (world
                                                                                   x8628
                                                                                   x8627))))
                                                                        (world-jump-down
                                                                         x8626))))
                                                              g8625)))))
                                                g8622)))
                                           (landed-on-blocks?
                                            (lambda (w)
                                              (letrec ((g8630
                                                        (letrec ((x8632
                                                                  (letrec ((x8633
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     0
                                                                     1
                                                                     x8633)))
                                                                 (x8631
                                                                  (world-blocks
                                                                   w)))
                                                          (tetra-overlaps-blocks?
                                                           x8632
                                                           x8631))))
                                                g8630)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8634
                                                        (letrec ((x8636
                                                                  (letrec ((x8637
                                                                            (letrec ((x8638
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8638))))
                                                                    (blocks-max-y
                                                                     x8637)))
                                                                 (x8635
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8636 x8635))))
                                                g8634)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8639
                                                        (letrec ((val7262
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8640
                                                                    (if val7262
                                                                      val7262
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8640))))
                                                g8639)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8641
                                                        (letrec ((x-cnd8642
                                                                  (landed? w)))
                                                          (if x-cnd8642
                                                            (letrec ((g8643
                                                                      (touchdown
                                                                       w
                                                                       tetras)))
                                                              g8643)
                                                            (letrec ((g8644
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
                                                              g8644)))))
                                                g8641)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8648
                                                        (letrec ((x-cnd8649
                                                                  (letrec ((val7263
                                                                            (letrec ((x8650
                                                                                      (letrec ((x8651
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-min-x
                                                                                         x8651))))
                                                                              (<
                                                                               x8650
                                                                               0))))
                                                                    (letrec ((g8652
                                                                              (if val7263
                                                                                val7263
                                                                                (letrec ((val7264
                                                                                          (letrec ((x8653
                                                                                                    (letrec ((x8654
                                                                                                              (tetra-blocks
                                                                                                               new-tetra)))
                                                                                                      (blocks-max-x
                                                                                                       x8654))))
                                                                                            (>=
                                                                                             x8653
                                                                                             board-width))))
                                                                                  (letrec ((g8655
                                                                                            (if val7264
                                                                                              val7264
                                                                                              (letrec ((x8656
                                                                                                        (world-blocks
                                                                                                         w)))
                                                                                                (tetra-overlaps-blocks?
                                                                                                 new-tetra
                                                                                                 x8656)))))
                                                                                    g8655)))))
                                                                      g8652))))
                                                          (if x-cnd8649
                                                            (letrec ((g8657 w))
                                                              g8657)
                                                            (letrec ((g8658
                                                                      (letrec ((x8659
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         new-tetra
                                                                         x8659))))
                                                              g8658)))))
                                                g8648)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8660
                                                        (letrec ((x8661
                                                                  (letrec ((x8662
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8662))))
                                                          (try-new-tetra
                                                           w
                                                           x8661))))
                                                g8660)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8663
                                                        (letrec ((x8664
                                                                  (letrec ((x8665
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8665))))
                                                          (try-new-tetra
                                                           w
                                                           x8664))))
                                                g8663)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8666
                                                        (letrec ((x8667
                                                                  (letrec ((x8668
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8668))))
                                                          (try-new-tetra
                                                           w
                                                           x8667))))
                                                g8666)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8669
                                                        (letrec ((x8670
                                                                  (letrec ((x8671
                                                                            (letrec ((x8672
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8672))))
                                                                    (tetra-change-color
                                                                     x8671
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8670))))
                                                g8669)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8673
                                                        (letrec ((x-cnd8674
                                                                  (equal?
                                                                   k
                                                                   "left")))
                                                          (if x-cnd8674
                                                            (letrec ((g8675
                                                                      (world-move
                                                                       neg-1
                                                                       0
                                                                       w)))
                                                              g8675)
                                                            (letrec ((x-cnd8676
                                                                      (equal?
                                                                       k
                                                                       "right")))
                                                              (if x-cnd8676
                                                                (letrec ((g8677
                                                                          (world-move
                                                                           1
                                                                           0
                                                                           w)))
                                                                  g8677)
                                                                (letrec ((x-cnd8678
                                                                          (equal?
                                                                           k
                                                                           "down")))
                                                                  (if x-cnd8678
                                                                    (letrec ((g8679
                                                                              (world-jump-down
                                                                               w)))
                                                                      g8679)
                                                                    (letrec ((x-cnd8680
                                                                              (equal?
                                                                               k
                                                                               "a")))
                                                                      (if x-cnd8680
                                                                        (letrec ((g8681
                                                                                  (world-rotate-ccw
                                                                                   w)))
                                                                          g8681)
                                                                        (letrec ((x-cnd8682
                                                                                  (equal?
                                                                                   k
                                                                                   "s")))
                                                                          (if x-cnd8682
                                                                            (letrec ((g8683
                                                                                      (world-rotate-cw
                                                                                       w)))
                                                                              g8683)
                                                                            (letrec ((g8684
                                                                                      w))
                                                                              g8684)))))))))))))
                                                g8673)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8685
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8685)))
                                           (image?
                                            (lambda (image7775)
                                              (letrec ((g8686
                                                        (letrec ((x8687
                                                                  (car
                                                                   image7775)))
                                                          (eq? x8687 'image))))
                                                g8686)))
                                           (image/c
                                            (lambda (j7427 k7428 v7426)
                                              (letrec ((g8688
                                                        (cons image '())))
                                                g8688)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8689 (image)))
                                                g8689)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8690 (image)))
                                                g8690)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8691 (image)))
                                                g8691)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8692 (image)))
                                                g8692)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8693 (image)))
                                                g8693)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8694
                                                        (letrec ((x-cnd8695
                                                                  (letrec ((x8696
                                                                            (cdr
                                                                             xs)))
                                                                    (null?
                                                                     x8696))))
                                                          (if x-cnd8695
                                                            (letrec ((g8697
                                                                      (car
                                                                       xs)))
                                                              g8697)
                                                            (letrec ((g8698
                                                                      (letrec ((x8699
                                                                                (cdr
                                                                                 xs)))
                                                                        (list-pick-random
                                                                         x8699))))
                                                              g8698)))))
                                                g8694)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8700
                                                        (letrec ((x8704
                                                                  (letrec ((x8705
                                                                            (letrec ((x8709
                                                                                      (letrec ((x8710
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8710)))
                                                                                     (x8706
                                                                                      (letrec ((x8708
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8707
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8708
                                                                                         x8707))))
                                                                              (append
                                                                               x8709
                                                                               x8706))))
                                                                    (blocks->image
                                                                     x8705)))
                                                                 (x8701
                                                                  (letrec ((x8703
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8702
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8703
                                                                     x8702))))
                                                          (place-image
                                                           x8704
                                                           0
                                                           0
                                                           x8701))))
                                                g8700)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8711
                                                        (letrec ((x8712
                                                                  (letrec ((x8715
                                                                            (letrec ((x8716
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8716)))
                                                                           (x8713
                                                                            (letrec ((x8714
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8714))))
                                                                    (empty-scene
                                                                     x8715
                                                                     x8713))))
                                                          (foldr
                                                           (lambda (b img)
                                                             (letrec ((g8717
                                                                       (letrec ((x-cnd8718
                                                                                 (letrec ((x8719
                                                                                           (block-y
                                                                                            b)))
                                                                                   (<=
                                                                                    0
                                                                                    x8719))))
                                                                         (if x-cnd8718
                                                                           (letrec ((g8720
                                                                                     (place-block
                                                                                      b
                                                                                      img)))
                                                                             g8720)
                                                                           (letrec ((g8721
                                                                                     img))
                                                                             g8721)))))
                                                               g8717))
                                                           x8712
                                                           bs))))
                                                g8711)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8722
                                                        (letrec ((x8726
                                                                  (letrec ((x8729
                                                                            (add1
                                                                             block-size))
                                                                           (x8728
                                                                            (add1
                                                                             block-size))
                                                                           (x8727
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8729
                                                                     x8728
                                                                     'solid
                                                                     x8727)))
                                                                 (x8723
                                                                  (letrec ((x8725
                                                                            (add1
                                                                             block-size))
                                                                           (x8724
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8725
                                                                     x8724
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8726
                                                           x8723))))
                                                g8722)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8730
                                                        (letrec ((x8739
                                                                  (block->image
                                                                   b))
                                                                 (x8735
                                                                  (letrec ((x8737
                                                                            (letrec ((x8738
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8738
                                                                               block-size)))
                                                                           (x8736
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8737
                                                                     x8736)))
                                                                 (x8731
                                                                  (letrec ((x8733
                                                                            (letrec ((x8734
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8734
                                                                               block-size)))
                                                                           (x8732
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8733
                                                                     x8732))))
                                                          (place-image
                                                           x8739
                                                           x8735
                                                           x8731
                                                           scene))))
                                                g8730)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8740
                                                        (letrec ((x8741
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8741 null))))
                                                g8740))))
                                    (letrec ((g8742
                                              (parallel
                                               (parallel
                                                (letrec ((x8753
                                                          (letrec ((xj7430
                                                                    (loc
                                                                     'module))
                                                                   (xk7431
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8754
                                                                      ((lambda (j7434
                                                                                k7435
                                                                                f7436)
                                                                         (letrec ((g8755
                                                                                   (lambda (g7432
                                                                                            g7433)
                                                                                     (letrec ((g8756
                                                                                               (letrec ((x8757
                                                                                                         (letrec ((x8759
                                                                                                                   (POSN/C
                                                                                                                    j7434
                                                                                                                    k7435
                                                                                                                    g7432))
                                                                                                                  (x8758
                                                                                                                   (POSN/C
                                                                                                                    j7434
                                                                                                                    k7435
                                                                                                                    g7433)))
                                                                                                           (f7436
                                                                                                            x8759
                                                                                                            x8758))))
                                                                                                 (boolean?/c
                                                                                                  j7434
                                                                                                  k7435
                                                                                                  x8757))))
                                                                                       g8756))))
                                                                           g8755))
                                                                       xj7430
                                                                       xk7431
                                                                       posn=?)))
                                                              g8754)))
                                                         (x8748
                                                          (letrec ((x8749
                                                                    (letrec ((x8752
                                                                              (input))
                                                                             (x8750
                                                                              (letrec ((x8751
                                                                                        (input)))
                                                                                (cons
                                                                                 x8751
                                                                                 '()))))
                                                                      (cons
                                                                       x8752
                                                                       x8750))))
                                                            (cons
                                                             'posn
                                                             x8749)))
                                                         (x8743
                                                          (letrec ((x8744
                                                                    (letrec ((x8747
                                                                              (input))
                                                                             (x8745
                                                                              (letrec ((x8746
                                                                                        (input)))
                                                                                (cons
                                                                                 x8746
                                                                                 '()))))
                                                                      (cons
                                                                       x8747
                                                                       x8745))))
                                                            (cons
                                                             'posn
                                                             x8744))))
                                                  (x8753 x8748 x8743))
                                                (letrec ((xj7437 (loc 'module))
                                                         (xk7438
                                                          (loc 'importer)))
                                                  (letrec ((g8760
                                                            (any/c
                                                             xj7437
                                                             xk7438
                                                             COLOR/C)))
                                                    g8760))
                                                (letrec ((xj7439 (loc 'module))
                                                         (xk7440
                                                          (loc 'importer)))
                                                  (letrec ((g8761
                                                            (any/c
                                                             xj7439
                                                             xk7440
                                                             POSN/C)))
                                                    g8761))
                                                (letrec ((xj7441 (loc 'module))
                                                         (xk7442
                                                          (loc 'importer)))
                                                  (letrec ((g8762
                                                            (any/c
                                                             xj7441
                                                             xk7442
                                                             BLOCK/C)))
                                                    g8762))
                                                (letrec ((xj7443 (loc 'module))
                                                         (xk7444
                                                          (loc 'importer)))
                                                  (letrec ((g8763
                                                            (any/c
                                                             xj7443
                                                             xk7444
                                                             TETRA/C)))
                                                    g8763))
                                                (letrec ((xj7445 (loc 'module))
                                                         (xk7446
                                                          (loc 'importer)))
                                                  (letrec ((g8764
                                                            (any/c
                                                             xj7445
                                                             xk7446
                                                             WORLD/C)))
                                                    g8764))
                                                (letrec ((xj7447 (loc 'module))
                                                         (xk7448
                                                          (loc 'importer)))
                                                  (letrec ((g8765
                                                            (any/c
                                                             xj7447
                                                             xk7448
                                                             BSET/C)))
                                                    g8765))
                                                (letrec ((xj7449 (loc 'module))
                                                         (xk7450
                                                          (loc 'importer)))
                                                  (letrec ((g8766
                                                            (integer?/c
                                                             xj7449
                                                             xk7450
                                                             block-size)))
                                                    g8766))
                                                (letrec ((xj7451 (loc 'module))
                                                         (xk7452
                                                          (loc 'importer)))
                                                  (letrec ((g8767
                                                            (integer?/c
                                                             xj7451
                                                             xk7452
                                                             board-width)))
                                                    g8767))
                                                (letrec ((xj7453 (loc 'module))
                                                         (xk7454
                                                          (loc 'importer)))
                                                  (letrec ((g8768
                                                            (integer?/c
                                                             xj7453
                                                             xk7454
                                                             board-height)))
                                                    g8768))
                                                (letrec ((x8781
                                                          (letrec ((xj7455
                                                                    (loc
                                                                     'module))
                                                                   (xk7456
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8782
                                                                      ((lambda (j7459
                                                                                k7460
                                                                                f7461)
                                                                         (letrec ((g8783
                                                                                   (lambda (g7457
                                                                                            g7458)
                                                                                     (letrec ((g8784
                                                                                               (letrec ((x8785
                                                                                                         (letrec ((x8787
                                                                                                                   (POSN/C
                                                                                                                    j7459
                                                                                                                    k7460
                                                                                                                    g7457))
                                                                                                                  (x8786
                                                                                                                   (BLOCK/C
                                                                                                                    j7459
                                                                                                                    k7460
                                                                                                                    g7458)))
                                                                                                           (f7461
                                                                                                            x8787
                                                                                                            x8786))))
                                                                                                 (BLOCK/C
                                                                                                  j7459
                                                                                                  k7460
                                                                                                  x8785))))
                                                                                       g8784))))
                                                                           g8783))
                                                                       xj7455
                                                                       xk7456
                                                                       block-rotate-ccw)))
                                                              g8782)))
                                                         (x8776
                                                          (letrec ((x8777
                                                                    (letrec ((x8780
                                                                              (input))
                                                                             (x8778
                                                                              (letrec ((x8779
                                                                                        (input)))
                                                                                (cons
                                                                                 x8779
                                                                                 '()))))
                                                                      (cons
                                                                       x8780
                                                                       x8778))))
                                                            (cons
                                                             'posn
                                                             x8777)))
                                                         (x8769
                                                          (letrec ((x8770
                                                                    (letrec ((x8775
                                                                              (input))
                                                                             (x8771
                                                                              (letrec ((x8774
                                                                                        (input))
                                                                                       (x8772
                                                                                        (letrec ((x8773
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8773
                                                                                           '()))))
                                                                                (cons
                                                                                 x8774
                                                                                 x8772))))
                                                                      (cons
                                                                       x8775
                                                                       x8771))))
                                                            (cons
                                                             'block
                                                             x8770))))
                                                  (x8781 x8776 x8769))
                                                (letrec ((x8800
                                                          (letrec ((xj7462
                                                                    (loc
                                                                     'module))
                                                                   (xk7463
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8801
                                                                      ((lambda (j7466
                                                                                k7467
                                                                                f7468)
                                                                         (letrec ((g8802
                                                                                   (lambda (g7464
                                                                                            g7465)
                                                                                     (letrec ((g8803
                                                                                               (letrec ((x8804
                                                                                                         (letrec ((x8806
                                                                                                                   (POSN/C
                                                                                                                    j7466
                                                                                                                    k7467
                                                                                                                    g7464))
                                                                                                                  (x8805
                                                                                                                   (BLOCK/C
                                                                                                                    j7466
                                                                                                                    k7467
                                                                                                                    g7465)))
                                                                                                           (f7468
                                                                                                            x8806
                                                                                                            x8805))))
                                                                                                 (BLOCK/C
                                                                                                  j7466
                                                                                                  k7467
                                                                                                  x8804))))
                                                                                       g8803))))
                                                                           g8802))
                                                                       xj7462
                                                                       xk7463
                                                                       block-rotate-cw)))
                                                              g8801)))
                                                         (x8795
                                                          (letrec ((x8796
                                                                    (letrec ((x8799
                                                                              (input))
                                                                             (x8797
                                                                              (letrec ((x8798
                                                                                        (input)))
                                                                                (cons
                                                                                 x8798
                                                                                 '()))))
                                                                      (cons
                                                                       x8799
                                                                       x8797))))
                                                            (cons
                                                             'posn
                                                             x8796)))
                                                         (x8788
                                                          (letrec ((x8789
                                                                    (letrec ((x8794
                                                                              (input))
                                                                             (x8790
                                                                              (letrec ((x8793
                                                                                        (input))
                                                                                       (x8791
                                                                                        (letrec ((x8792
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8792
                                                                                           '()))))
                                                                                (cons
                                                                                 x8793
                                                                                 x8791))))
                                                                      (cons
                                                                       x8794
                                                                       x8790))))
                                                            (cons
                                                             'block
                                                             x8789))))
                                                  (x8800 x8795 x8788))
                                                (letrec ((x8821
                                                          (letrec ((xj7469
                                                                    (loc
                                                                     'module))
                                                                   (xk7470
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8822
                                                                      ((lambda (j7473
                                                                                k7474
                                                                                f7475)
                                                                         (letrec ((g8823
                                                                                   (lambda (g7471
                                                                                            g7472)
                                                                                     (letrec ((g8824
                                                                                               (letrec ((x8825
                                                                                                         (letrec ((x8827
                                                                                                                   (BLOCK/C
                                                                                                                    j7473
                                                                                                                    k7474
                                                                                                                    g7471))
                                                                                                                  (x8826
                                                                                                                   (BLOCK/C
                                                                                                                    j7473
                                                                                                                    k7474
                                                                                                                    g7472)))
                                                                                                           (f7475
                                                                                                            x8827
                                                                                                            x8826))))
                                                                                                 (boolean?/c
                                                                                                  j7473
                                                                                                  k7474
                                                                                                  x8825))))
                                                                                       g8824))))
                                                                           g8823))
                                                                       xj7469
                                                                       xk7470
                                                                       block=?)))
                                                              g8822)))
                                                         (x8814
                                                          (letrec ((x8815
                                                                    (letrec ((x8820
                                                                              (input))
                                                                             (x8816
                                                                              (letrec ((x8819
                                                                                        (input))
                                                                                       (x8817
                                                                                        (letrec ((x8818
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8818
                                                                                           '()))))
                                                                                (cons
                                                                                 x8819
                                                                                 x8817))))
                                                                      (cons
                                                                       x8820
                                                                       x8816))))
                                                            (cons
                                                             'block
                                                             x8815)))
                                                         (x8807
                                                          (letrec ((x8808
                                                                    (letrec ((x8813
                                                                              (input))
                                                                             (x8809
                                                                              (letrec ((x8812
                                                                                        (input))
                                                                                       (x8810
                                                                                        (letrec ((x8811
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8811
                                                                                           '()))))
                                                                                (cons
                                                                                 x8812
                                                                                 x8810))))
                                                                      (cons
                                                                       x8813
                                                                       x8809))))
                                                            (cons
                                                             'block
                                                             x8808))))
                                                  (x8821 x8814 x8807))
                                                (letrec ((x8837
                                                          (letrec ((xj7476
                                                                    (loc
                                                                     'module))
                                                                   (xk7477
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8838
                                                                      ((lambda (j7481
                                                                                k7482
                                                                                f7483)
                                                                         (letrec ((g8839
                                                                                   (lambda (g7478
                                                                                            g7479
                                                                                            g7480)
                                                                                     (letrec ((g8840
                                                                                               (letrec ((x8841
                                                                                                         (letrec ((x8844
                                                                                                                   (real?/c
                                                                                                                    j7481
                                                                                                                    k7482
                                                                                                                    g7478))
                                                                                                                  (x8843
                                                                                                                   (real?/c
                                                                                                                    j7481
                                                                                                                    k7482
                                                                                                                    g7479))
                                                                                                                  (x8842
                                                                                                                   (BLOCK/C
                                                                                                                    j7481
                                                                                                                    k7482
                                                                                                                    g7480)))
                                                                                                           (f7483
                                                                                                            x8844
                                                                                                            x8843
                                                                                                            x8842))))
                                                                                                 (BLOCK/C
                                                                                                  j7481
                                                                                                  k7482
                                                                                                  x8841))))
                                                                                       g8840))))
                                                                           g8839))
                                                                       xj7476
                                                                       xk7477
                                                                       block-move)))
                                                              g8838)))
                                                         (x8836 (input))
                                                         (x8835 (input))
                                                         (x8828
                                                          (letrec ((x8829
                                                                    (letrec ((x8834
                                                                              (input))
                                                                             (x8830
                                                                              (letrec ((x8833
                                                                                        (input))
                                                                                       (x8831
                                                                                        (letrec ((x8832
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8832
                                                                                           '()))))
                                                                                (cons
                                                                                 x8833
                                                                                 x8831))))
                                                                      (cons
                                                                       x8834
                                                                       x8830))))
                                                            (cons
                                                             'block
                                                             x8829))))
                                                  (x8837 x8836 x8835 x8828))
                                                (letrec ((x8853
                                                          (letrec ((xj7484
                                                                    (loc
                                                                     'module))
                                                                   (xk7485
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8854
                                                                      ((lambda (j7488
                                                                                k7489
                                                                                f7490)
                                                                         (letrec ((g8855
                                                                                   (lambda (g7486
                                                                                            g7487)
                                                                                     (letrec ((g8856
                                                                                               (letrec ((x8857
                                                                                                         (letrec ((x8859
                                                                                                                   (BSET/C
                                                                                                                    j7488
                                                                                                                    k7489
                                                                                                                    g7486))
                                                                                                                  (x8858
                                                                                                                   (BLOCK/C
                                                                                                                    j7488
                                                                                                                    k7489
                                                                                                                    g7487)))
                                                                                                           (f7490
                                                                                                            x8859
                                                                                                            x8858))))
                                                                                                 (boolean?/c
                                                                                                  j7488
                                                                                                  k7489
                                                                                                  x8857))))
                                                                                       g8856))))
                                                                           g8855))
                                                                       xj7484
                                                                       xk7485
                                                                       blocks-contains?)))
                                                              g8854)))
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
                                                  (x8853 x8852 x8845))
                                                (letrec ((x8862
                                                          (letrec ((xj7491
                                                                    (loc
                                                                     'module))
                                                                   (xk7492
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8863
                                                                      ((lambda (j7495
                                                                                k7496
                                                                                f7497)
                                                                         (letrec ((g8864
                                                                                   (lambda (g7493
                                                                                            g7494)
                                                                                     (letrec ((g8865
                                                                                               (letrec ((x8866
                                                                                                         (letrec ((x8868
                                                                                                                   (BSET/C
                                                                                                                    j7495
                                                                                                                    k7496
                                                                                                                    g7493))
                                                                                                                  (x8867
                                                                                                                   (BSET/C
                                                                                                                    j7495
                                                                                                                    k7496
                                                                                                                    g7494)))
                                                                                                           (f7497
                                                                                                            x8868
                                                                                                            x8867))))
                                                                                                 (boolean?/c
                                                                                                  j7495
                                                                                                  k7496
                                                                                                  x8866))))
                                                                                       g8865))))
                                                                           g8864))
                                                                       xj7491
                                                                       xk7492
                                                                       blocks=?)))
                                                              g8863)))
                                                         (x8861 (input))
                                                         (x8860 (input)))
                                                  (x8862 x8861 x8860))
                                                (letrec ((x8871
                                                          (letrec ((xj7498
                                                                    (loc
                                                                     'module))
                                                                   (xk7499
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8872
                                                                      ((lambda (j7502
                                                                                k7503
                                                                                f7504)
                                                                         (letrec ((g8873
                                                                                   (lambda (g7500
                                                                                            g7501)
                                                                                     (letrec ((g8874
                                                                                               (letrec ((x8875
                                                                                                         (letrec ((x8877
                                                                                                                   (BSET/C
                                                                                                                    j7502
                                                                                                                    k7503
                                                                                                                    g7500))
                                                                                                                  (x8876
                                                                                                                   (BSET/C
                                                                                                                    j7502
                                                                                                                    k7503
                                                                                                                    g7501)))
                                                                                                           (f7504
                                                                                                            x8877
                                                                                                            x8876))))
                                                                                                 (boolean?/c
                                                                                                  j7502
                                                                                                  k7503
                                                                                                  x8875))))
                                                                                       g8874))))
                                                                           g8873))
                                                                       xj7498
                                                                       xk7499
                                                                       blocks-subset?)))
                                                              g8872)))
                                                         (x8870 (input))
                                                         (x8869 (input)))
                                                  (x8871 x8870 x8869))
                                                (letrec ((x8880
                                                          (letrec ((xj7505
                                                                    (loc
                                                                     'module))
                                                                   (xk7506
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8881
                                                                      ((lambda (j7509
                                                                                k7510
                                                                                f7511)
                                                                         (letrec ((g8882
                                                                                   (lambda (g7507
                                                                                            g7508)
                                                                                     (letrec ((g8883
                                                                                               (letrec ((x8884
                                                                                                         (letrec ((x8886
                                                                                                                   (BSET/C
                                                                                                                    j7509
                                                                                                                    k7510
                                                                                                                    g7507))
                                                                                                                  (x8885
                                                                                                                   (BSET/C
                                                                                                                    j7509
                                                                                                                    k7510
                                                                                                                    g7508)))
                                                                                                           (f7511
                                                                                                            x8886
                                                                                                            x8885))))
                                                                                                 (BSET/C
                                                                                                  j7509
                                                                                                  k7510
                                                                                                  x8884))))
                                                                                       g8883))))
                                                                           g8882))
                                                                       xj7505
                                                                       xk7506
                                                                       blocks-intersect)))
                                                              g8881)))
                                                         (x8879 (input))
                                                         (x8878 (input)))
                                                  (x8880 x8879 x8878))
                                                (letrec ((x8888
                                                          (letrec ((xj7512
                                                                    (loc
                                                                     'module))
                                                                   (xk7513
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8889
                                                                      ((lambda (j7515
                                                                                k7516
                                                                                f7517)
                                                                         (letrec ((g8890
                                                                                   (lambda (g7514)
                                                                                     (letrec ((g8891
                                                                                               (letrec ((x8892
                                                                                                         (letrec ((x8893
                                                                                                                   (BSET/C
                                                                                                                    j7515
                                                                                                                    k7516
                                                                                                                    g7514)))
                                                                                                           (f7517
                                                                                                            x8893))))
                                                                                                 (real?/c
                                                                                                  j7515
                                                                                                  k7516
                                                                                                  x8892))))
                                                                                       g8891))))
                                                                           g8890))
                                                                       xj7512
                                                                       xk7513
                                                                       blocks-count)))
                                                              g8889)))
                                                         (x8887 (input)))
                                                  (x8888 x8887))
                                                (letrec ((x8895
                                                          (letrec ((xj7518
                                                                    (loc
                                                                     'module))
                                                                   (xk7519
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8896
                                                                      ((lambda (j7521
                                                                                k7522
                                                                                f7523)
                                                                         (letrec ((g8897
                                                                                   (lambda (g7520)
                                                                                     (letrec ((g8898
                                                                                               (letrec ((x8899
                                                                                                         (letrec ((x8900
                                                                                                                   (BSET/C
                                                                                                                    j7521
                                                                                                                    k7522
                                                                                                                    g7520)))
                                                                                                           (f7523
                                                                                                            x8900))))
                                                                                                 (boolean?/c
                                                                                                  j7521
                                                                                                  k7522
                                                                                                  x8899))))
                                                                                       g8898))))
                                                                           g8897))
                                                                       xj7518
                                                                       xk7519
                                                                       blocks-overflow?)))
                                                              g8896)))
                                                         (x8894 (input)))
                                                  (x8895 x8894))
                                                (letrec ((x8904
                                                          (letrec ((xj7524
                                                                    (loc
                                                                     'module))
                                                                   (xk7525
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8905
                                                                      ((lambda (j7529
                                                                                k7530
                                                                                f7531)
                                                                         (letrec ((g8906
                                                                                   (lambda (g7526
                                                                                            g7527
                                                                                            g7528)
                                                                                     (letrec ((g8907
                                                                                               (letrec ((x8908
                                                                                                         (letrec ((x8911
                                                                                                                   (real?/c
                                                                                                                    j7529
                                                                                                                    k7530
                                                                                                                    g7526))
                                                                                                                  (x8910
                                                                                                                   (real?/c
                                                                                                                    j7529
                                                                                                                    k7530
                                                                                                                    g7527))
                                                                                                                  (x8909
                                                                                                                   (BSET/C
                                                                                                                    j7529
                                                                                                                    k7530
                                                                                                                    g7528)))
                                                                                                           (f7531
                                                                                                            x8911
                                                                                                            x8910
                                                                                                            x8909))))
                                                                                                 (BSET/C
                                                                                                  j7529
                                                                                                  k7530
                                                                                                  x8908))))
                                                                                       g8907))))
                                                                           g8906))
                                                                       xj7524
                                                                       xk7525
                                                                       blocks-move)))
                                                              g8905)))
                                                         (x8903 (input))
                                                         (x8902 (input))
                                                         (x8901 (input)))
                                                  (x8904 x8903 x8902 x8901))
                                                (letrec ((x8918
                                                          (letrec ((xj7532
                                                                    (loc
                                                                     'module))
                                                                   (xk7533
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8919
                                                                      ((lambda (j7536
                                                                                k7537
                                                                                f7538)
                                                                         (letrec ((g8920
                                                                                   (lambda (g7534
                                                                                            g7535)
                                                                                     (letrec ((g8921
                                                                                               (letrec ((x8922
                                                                                                         (letrec ((x8924
                                                                                                                   (POSN/C
                                                                                                                    j7536
                                                                                                                    k7537
                                                                                                                    g7534))
                                                                                                                  (x8923
                                                                                                                   (BSET/C
                                                                                                                    j7536
                                                                                                                    k7537
                                                                                                                    g7535)))
                                                                                                           (f7538
                                                                                                            x8924
                                                                                                            x8923))))
                                                                                                 (BSET/C
                                                                                                  j7536
                                                                                                  k7537
                                                                                                  x8922))))
                                                                                       g8921))))
                                                                           g8920))
                                                                       xj7532
                                                                       xk7533
                                                                       blocks-rotate-cw)))
                                                              g8919)))
                                                         (x8913
                                                          (letrec ((x8914
                                                                    (letrec ((x8917
                                                                              (input))
                                                                             (x8915
                                                                              (letrec ((x8916
                                                                                        (input)))
                                                                                (cons
                                                                                 x8916
                                                                                 '()))))
                                                                      (cons
                                                                       x8917
                                                                       x8915))))
                                                            (cons
                                                             'posn
                                                             x8914)))
                                                         (x8912 (input)))
                                                  (x8918 x8913 x8912))
                                                (letrec ((x8931
                                                          (letrec ((xj7539
                                                                    (loc
                                                                     'module))
                                                                   (xk7540
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8932
                                                                      ((lambda (j7543
                                                                                k7544
                                                                                f7545)
                                                                         (letrec ((g8933
                                                                                   (lambda (g7541
                                                                                            g7542)
                                                                                     (letrec ((g8934
                                                                                               (letrec ((x8935
                                                                                                         (letrec ((x8937
                                                                                                                   (POSN/C
                                                                                                                    j7543
                                                                                                                    k7544
                                                                                                                    g7541))
                                                                                                                  (x8936
                                                                                                                   (BSET/C
                                                                                                                    j7543
                                                                                                                    k7544
                                                                                                                    g7542)))
                                                                                                           (f7545
                                                                                                            x8937
                                                                                                            x8936))))
                                                                                                 (BSET/C
                                                                                                  j7543
                                                                                                  k7544
                                                                                                  x8935))))
                                                                                       g8934))))
                                                                           g8933))
                                                                       xj7539
                                                                       xk7540
                                                                       blocks-rotate-ccw)))
                                                              g8932)))
                                                         (x8926
                                                          (letrec ((x8927
                                                                    (letrec ((x8930
                                                                              (input))
                                                                             (x8928
                                                                              (letrec ((x8929
                                                                                        (input)))
                                                                                (cons
                                                                                 x8929
                                                                                 '()))))
                                                                      (cons
                                                                       x8930
                                                                       x8928))))
                                                            (cons
                                                             'posn
                                                             x8927)))
                                                         (x8925 (input)))
                                                  (x8931 x8926 x8925))
                                                (letrec ((x8940
                                                          (letrec ((xj7546
                                                                    (loc
                                                                     'module))
                                                                   (xk7547
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8941
                                                                      ((lambda (j7550
                                                                                k7551
                                                                                f7552)
                                                                         (letrec ((g8942
                                                                                   (lambda (g7548
                                                                                            g7549)
                                                                                     (letrec ((g8943
                                                                                               (letrec ((x8944
                                                                                                         (letrec ((x8946
                                                                                                                   (BSET/C
                                                                                                                    j7550
                                                                                                                    k7551
                                                                                                                    g7548))
                                                                                                                  (x8945
                                                                                                                   (COLOR/C
                                                                                                                    j7550
                                                                                                                    k7551
                                                                                                                    g7549)))
                                                                                                           (f7552
                                                                                                            x8946
                                                                                                            x8945))))
                                                                                                 (BSET/C
                                                                                                  j7550
                                                                                                  k7551
                                                                                                  x8944))))
                                                                                       g8943))))
                                                                           g8942))
                                                                       xj7546
                                                                       xk7547
                                                                       blocks-change-color)))
                                                              g8941)))
                                                         (x8939 (input))
                                                         (x8938 (input)))
                                                  (x8940 x8939 x8938))
                                                (letrec ((x8949
                                                          (letrec ((xj7553
                                                                    (loc
                                                                     'module))
                                                                   (xk7554
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8950
                                                                      ((lambda (j7557
                                                                                k7558
                                                                                f7559)
                                                                         (letrec ((g8951
                                                                                   (lambda (g7555
                                                                                            g7556)
                                                                                     (letrec ((g8952
                                                                                               (letrec ((x8953
                                                                                                         (letrec ((x8955
                                                                                                                   (BSET/C
                                                                                                                    j7557
                                                                                                                    k7558
                                                                                                                    g7555))
                                                                                                                  (x8954
                                                                                                                   (real?/c
                                                                                                                    j7557
                                                                                                                    k7558
                                                                                                                    g7556)))
                                                                                                           (f7559
                                                                                                            x8955
                                                                                                            x8954))))
                                                                                                 (BSET/C
                                                                                                  j7557
                                                                                                  k7558
                                                                                                  x8953))))
                                                                                       g8952))))
                                                                           g8951))
                                                                       xj7553
                                                                       xk7554
                                                                       blocks-row)))
                                                              g8950)))
                                                         (x8948 (input))
                                                         (x8947 (input)))
                                                  (x8949 x8948 x8947))
                                                (letrec ((x8958
                                                          (letrec ((xj7560
                                                                    (loc
                                                                     'module))
                                                                   (xk7561
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8959
                                                                      ((lambda (j7564
                                                                                k7565
                                                                                f7566)
                                                                         (letrec ((g8960
                                                                                   (lambda (g7562
                                                                                            g7563)
                                                                                     (letrec ((g8961
                                                                                               (letrec ((x8962
                                                                                                         (letrec ((x8964
                                                                                                                   (BSET/C
                                                                                                                    j7564
                                                                                                                    k7565
                                                                                                                    g7562))
                                                                                                                  (x8963
                                                                                                                   (real?/c
                                                                                                                    j7564
                                                                                                                    k7565
                                                                                                                    g7563)))
                                                                                                           (f7566
                                                                                                            x8964
                                                                                                            x8963))))
                                                                                                 (boolean?/c
                                                                                                  j7564
                                                                                                  k7565
                                                                                                  x8962))))
                                                                                       g8961))))
                                                                           g8960))
                                                                       xj7560
                                                                       xk7561
                                                                       full-row?)))
                                                              g8959)))
                                                         (x8957 (input))
                                                         (x8956 (input)))
                                                  (x8958 x8957 x8956))
                                                (letrec ((x8967
                                                          (letrec ((xj7567
                                                                    (loc
                                                                     'module))
                                                                   (xk7568
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8968
                                                                      ((lambda (j7571
                                                                                k7572
                                                                                f7573)
                                                                         (letrec ((g8969
                                                                                   (lambda (g7569
                                                                                            g7570)
                                                                                     (letrec ((g8970
                                                                                               (letrec ((x8971
                                                                                                         (letrec ((x8973
                                                                                                                   (BSET/C
                                                                                                                    j7571
                                                                                                                    k7572
                                                                                                                    g7569))
                                                                                                                  (x8972
                                                                                                                   (BSET/C
                                                                                                                    j7571
                                                                                                                    k7572
                                                                                                                    g7570)))
                                                                                                           (f7573
                                                                                                            x8973
                                                                                                            x8972))))
                                                                                                 (BSET/C
                                                                                                  j7571
                                                                                                  k7572
                                                                                                  x8971))))
                                                                                       g8970))))
                                                                           g8969))
                                                                       xj7567
                                                                       xk7568
                                                                       blocks-union)))
                                                              g8968)))
                                                         (x8966 (input))
                                                         (x8965 (input)))
                                                  (x8967 x8966 x8965))
                                                (letrec ((x8975
                                                          (letrec ((xj7574
                                                                    (loc
                                                                     'module))
                                                                   (xk7575
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8976
                                                                      ((lambda (j7577
                                                                                k7578
                                                                                f7579)
                                                                         (letrec ((g8977
                                                                                   (lambda (g7576)
                                                                                     (letrec ((g8978
                                                                                               (letrec ((x8979
                                                                                                         (letrec ((x8980
                                                                                                                   (BSET/C
                                                                                                                    j7577
                                                                                                                    k7578
                                                                                                                    g7576)))
                                                                                                           (f7579
                                                                                                            x8980))))
                                                                                                 (real?/c
                                                                                                  j7577
                                                                                                  k7578
                                                                                                  x8979))))
                                                                                       g8978))))
                                                                           g8977))
                                                                       xj7574
                                                                       xk7575
                                                                       blocks-max-x)))
                                                              g8976)))
                                                         (x8974 (input)))
                                                  (x8975 x8974))
                                                (letrec ((x8982
                                                          (letrec ((xj7580
                                                                    (loc
                                                                     'module))
                                                                   (xk7581
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8983
                                                                      ((lambda (j7583
                                                                                k7584
                                                                                f7585)
                                                                         (letrec ((g8984
                                                                                   (lambda (g7582)
                                                                                     (letrec ((g8985
                                                                                               (letrec ((x8986
                                                                                                         (letrec ((x8987
                                                                                                                   (BSET/C
                                                                                                                    j7583
                                                                                                                    k7584
                                                                                                                    g7582)))
                                                                                                           (f7585
                                                                                                            x8987))))
                                                                                                 (real?/c
                                                                                                  j7583
                                                                                                  k7584
                                                                                                  x8986))))
                                                                                       g8985))))
                                                                           g8984))
                                                                       xj7580
                                                                       xk7581
                                                                       blocks-min-x)))
                                                              g8983)))
                                                         (x8981 (input)))
                                                  (x8982 x8981))
                                                (letrec ((x8989
                                                          (letrec ((xj7586
                                                                    (loc
                                                                     'module))
                                                                   (xk7587
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8990
                                                                      ((lambda (j7589
                                                                                k7590
                                                                                f7591)
                                                                         (letrec ((g8991
                                                                                   (lambda (g7588)
                                                                                     (letrec ((g8992
                                                                                               (letrec ((x8993
                                                                                                         (letrec ((x8994
                                                                                                                   (BSET/C
                                                                                                                    j7589
                                                                                                                    k7590
                                                                                                                    g7588)))
                                                                                                           (f7591
                                                                                                            x8994))))
                                                                                                 (real?/c
                                                                                                  j7589
                                                                                                  k7590
                                                                                                  x8993))))
                                                                                       g8992))))
                                                                           g8991))
                                                                       xj7586
                                                                       xk7587
                                                                       blocks-max-y)))
                                                              g8990)))
                                                         (x8988 (input)))
                                                  (x8989 x8988))
                                                (letrec ((x8996
                                                          (letrec ((xj7592
                                                                    (loc
                                                                     'module))
                                                                   (xk7593
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8997
                                                                      ((lambda (j7595
                                                                                k7596
                                                                                f7597)
                                                                         (letrec ((g8998
                                                                                   (lambda (g7594)
                                                                                     (letrec ((g8999
                                                                                               (letrec ((x9000
                                                                                                         (letrec ((x9001
                                                                                                                   (BSET/C
                                                                                                                    j7595
                                                                                                                    k7596
                                                                                                                    g7594)))
                                                                                                           (f7597
                                                                                                            x9001))))
                                                                                                 (BSET/C
                                                                                                  j7595
                                                                                                  k7596
                                                                                                  x9000))))
                                                                                       g8999))))
                                                                           g8998))
                                                                       xj7592
                                                                       xk7593
                                                                       eliminate-full-rows)))
                                                              g8997)))
                                                         (x8995 (input)))
                                                  (x8996 x8995))
                                                (letrec ((x9013
                                                          (letrec ((xj7598
                                                                    (loc
                                                                     'module))
                                                                   (xk7599
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9014
                                                                      ((lambda (j7603
                                                                                k7604
                                                                                f7605)
                                                                         (letrec ((g9015
                                                                                   (lambda (g7600
                                                                                            g7601
                                                                                            g7602)
                                                                                     (letrec ((g9016
                                                                                               (letrec ((x9017
                                                                                                         (letrec ((x9020
                                                                                                                   (integer?/c
                                                                                                                    j7603
                                                                                                                    k7604
                                                                                                                    g7600))
                                                                                                                  (x9019
                                                                                                                   (integer?/c
                                                                                                                    j7603
                                                                                                                    k7604
                                                                                                                    g7601))
                                                                                                                  (x9018
                                                                                                                   (TETRA/C
                                                                                                                    j7603
                                                                                                                    k7604
                                                                                                                    g7602)))
                                                                                                           (f7605
                                                                                                            x9020
                                                                                                            x9019
                                                                                                            x9018))))
                                                                                                 (TETRA/C
                                                                                                  j7603
                                                                                                  k7604
                                                                                                  x9017))))
                                                                                       g9016))))
                                                                           g9015))
                                                                       xj7598
                                                                       xk7599
                                                                       tetra-move)))
                                                              g9014)))
                                                         (x9012 (input))
                                                         (x9011 (input))
                                                         (x9002
                                                          (letrec ((x9003
                                                                    (letrec ((x9006
                                                                              (letrec ((x9007
                                                                                        (letrec ((x9010
                                                                                                  (input))
                                                                                                 (x9008
                                                                                                  (letrec ((x9009
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9009
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9010
                                                                                           x9008))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9007)))
                                                                             (x9004
                                                                              (letrec ((x9005
                                                                                        (input)))
                                                                                (cons
                                                                                 x9005
                                                                                 '()))))
                                                                      (cons
                                                                       x9006
                                                                       x9004))))
                                                            (cons
                                                             'tetra
                                                             x9003))))
                                                  (x9013 x9012 x9011 x9002))
                                                (letrec ((x9030
                                                          (letrec ((xj7606
                                                                    (loc
                                                                     'module))
                                                                   (xk7607
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9031
                                                                      ((lambda (j7609
                                                                                k7610
                                                                                f7611)
                                                                         (letrec ((g9032
                                                                                   (lambda (g7608)
                                                                                     (letrec ((g9033
                                                                                               (letrec ((x9034
                                                                                                         (letrec ((x9035
                                                                                                                   (TETRA/C
                                                                                                                    j7609
                                                                                                                    k7610
                                                                                                                    g7608)))
                                                                                                           (f7611
                                                                                                            x9035))))
                                                                                                 (TETRA/C
                                                                                                  j7609
                                                                                                  k7610
                                                                                                  x9034))))
                                                                                       g9033))))
                                                                           g9032))
                                                                       xj7606
                                                                       xk7607
                                                                       tetra-rotate-ccw)))
                                                              g9031)))
                                                         (x9021
                                                          (letrec ((x9022
                                                                    (letrec ((x9025
                                                                              (letrec ((x9026
                                                                                        (letrec ((x9029
                                                                                                  (input))
                                                                                                 (x9027
                                                                                                  (letrec ((x9028
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9028
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9029
                                                                                           x9027))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9026)))
                                                                             (x9023
                                                                              (letrec ((x9024
                                                                                        (input)))
                                                                                (cons
                                                                                 x9024
                                                                                 '()))))
                                                                      (cons
                                                                       x9025
                                                                       x9023))))
                                                            (cons
                                                             'tetra
                                                             x9022))))
                                                  (x9030 x9021))
                                                (letrec ((x9045
                                                          (letrec ((xj7612
                                                                    (loc
                                                                     'module))
                                                                   (xk7613
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9046
                                                                      ((lambda (j7615
                                                                                k7616
                                                                                f7617)
                                                                         (letrec ((g9047
                                                                                   (lambda (g7614)
                                                                                     (letrec ((g9048
                                                                                               (letrec ((x9049
                                                                                                         (letrec ((x9050
                                                                                                                   (TETRA/C
                                                                                                                    j7615
                                                                                                                    k7616
                                                                                                                    g7614)))
                                                                                                           (f7617
                                                                                                            x9050))))
                                                                                                 (TETRA/C
                                                                                                  j7615
                                                                                                  k7616
                                                                                                  x9049))))
                                                                                       g9048))))
                                                                           g9047))
                                                                       xj7612
                                                                       xk7613
                                                                       tetra-rotate-cw)))
                                                              g9046)))
                                                         (x9036
                                                          (letrec ((x9037
                                                                    (letrec ((x9040
                                                                              (letrec ((x9041
                                                                                        (letrec ((x9044
                                                                                                  (input))
                                                                                                 (x9042
                                                                                                  (letrec ((x9043
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9043
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9044
                                                                                           x9042))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9041)))
                                                                             (x9038
                                                                              (letrec ((x9039
                                                                                        (input)))
                                                                                (cons
                                                                                 x9039
                                                                                 '()))))
                                                                      (cons
                                                                       x9040
                                                                       x9038))))
                                                            (cons
                                                             'tetra
                                                             x9037))))
                                                  (x9045 x9036))
                                                (letrec ((x9061
                                                          (letrec ((xj7618
                                                                    (loc
                                                                     'module))
                                                                   (xk7619
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9062
                                                                      ((lambda (j7622
                                                                                k7623
                                                                                f7624)
                                                                         (letrec ((g9063
                                                                                   (lambda (g7620
                                                                                            g7621)
                                                                                     (letrec ((g9064
                                                                                               (letrec ((x9065
                                                                                                         (letrec ((x9067
                                                                                                                   (TETRA/C
                                                                                                                    j7622
                                                                                                                    k7623
                                                                                                                    g7620))
                                                                                                                  (x9066
                                                                                                                   (BSET/C
                                                                                                                    j7622
                                                                                                                    k7623
                                                                                                                    g7621)))
                                                                                                           (f7624
                                                                                                            x9067
                                                                                                            x9066))))
                                                                                                 (boolean?/c
                                                                                                  j7622
                                                                                                  k7623
                                                                                                  x9065))))
                                                                                       g9064))))
                                                                           g9063))
                                                                       xj7618
                                                                       xk7619
                                                                       tetra-overlaps-blocks?)))
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
                                                             x9053)))
                                                         (x9051 (input)))
                                                  (x9061 x9052 x9051))
                                                (letrec ((x9079
                                                          (letrec ((xj7625
                                                                    (loc
                                                                     'module))
                                                                   (xk7626
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9080
                                                                      ((lambda (j7638
                                                                                k7639
                                                                                f7640)
                                                                         (letrec ((g9081
                                                                                   (lambda (g7627
                                                                                            g7628
                                                                                            g7629
                                                                                            g7630
                                                                                            g7631
                                                                                            g7632
                                                                                            g7633
                                                                                            g7634
                                                                                            g7635
                                                                                            g7636
                                                                                            g7637)
                                                                                     (letrec ((g9082
                                                                                               (letrec ((x9083
                                                                                                         (letrec ((x9094
                                                                                                                   (COLOR/C
                                                                                                                    j7638
                                                                                                                    k7639
                                                                                                                    g7627))
                                                                                                                  (x9093
                                                                                                                   (real?/c
                                                                                                                    j7638
                                                                                                                    k7639
                                                                                                                    g7628))
                                                                                                                  (x9092
                                                                                                                   (real?/c
                                                                                                                    j7638
                                                                                                                    k7639
                                                                                                                    g7629))
                                                                                                                  (x9091
                                                                                                                   (integer?/c
                                                                                                                    j7638
                                                                                                                    k7639
                                                                                                                    g7630))
                                                                                                                  (x9090
                                                                                                                   (integer?/c
                                                                                                                    j7638
                                                                                                                    k7639
                                                                                                                    g7631))
                                                                                                                  (x9089
                                                                                                                   (integer?/c
                                                                                                                    j7638
                                                                                                                    k7639
                                                                                                                    g7632))
                                                                                                                  (x9088
                                                                                                                   (integer?/c
                                                                                                                    j7638
                                                                                                                    k7639
                                                                                                                    g7633))
                                                                                                                  (x9087
                                                                                                                   (integer?/c
                                                                                                                    j7638
                                                                                                                    k7639
                                                                                                                    g7634))
                                                                                                                  (x9086
                                                                                                                   (integer?/c
                                                                                                                    j7638
                                                                                                                    k7639
                                                                                                                    g7635))
                                                                                                                  (x9085
                                                                                                                   (integer?/c
                                                                                                                    j7638
                                                                                                                    k7639
                                                                                                                    g7636))
                                                                                                                  (x9084
                                                                                                                   (integer?/c
                                                                                                                    j7638
                                                                                                                    k7639
                                                                                                                    g7637)))
                                                                                                           (f7640
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
                                                                                                            x9084))))
                                                                                                 (TETRA/C
                                                                                                  j7638
                                                                                                  k7639
                                                                                                  x9083))))
                                                                                       g9082))))
                                                                           g9081))
                                                                       xj7625
                                                                       xk7626
                                                                       build-tetra-blocks)))
                                                              g9080)))
                                                         (x9078 (input))
                                                         (x9077 (input))
                                                         (x9076 (input))
                                                         (x9075 (input))
                                                         (x9074 (input))
                                                         (x9073 (input))
                                                         (x9072 (input))
                                                         (x9071 (input))
                                                         (x9070 (input))
                                                         (x9069 (input))
                                                         (x9068 (input)))
                                                  (x9079
                                                   x9078
                                                   x9077
                                                   x9076
                                                   x9075
                                                   x9074
                                                   x9073
                                                   x9072
                                                   x9071
                                                   x9070
                                                   x9069
                                                   x9068))
                                                (letrec ((x9105
                                                          (letrec ((xj7641
                                                                    (loc
                                                                     'module))
                                                                   (xk7642
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9106
                                                                      ((lambda (j7645
                                                                                k7646
                                                                                f7647)
                                                                         (letrec ((g9107
                                                                                   (lambda (g7643
                                                                                            g7644)
                                                                                     (letrec ((g9108
                                                                                               (letrec ((x9109
                                                                                                         (letrec ((x9111
                                                                                                                   (TETRA/C
                                                                                                                    j7645
                                                                                                                    k7646
                                                                                                                    g7643))
                                                                                                                  (x9110
                                                                                                                   (COLOR/C
                                                                                                                    j7645
                                                                                                                    k7646
                                                                                                                    g7644)))
                                                                                                           (f7647
                                                                                                            x9111
                                                                                                            x9110))))
                                                                                                 (TETRA/C
                                                                                                  j7645
                                                                                                  k7646
                                                                                                  x9109))))
                                                                                       g9108))))
                                                                           g9107))
                                                                       xj7641
                                                                       xk7642
                                                                       tetra-change-color)))
                                                              g9106)))
                                                         (x9096
                                                          (letrec ((x9097
                                                                    (letrec ((x9100
                                                                              (letrec ((x9101
                                                                                        (letrec ((x9104
                                                                                                  (input))
                                                                                                 (x9102
                                                                                                  (letrec ((x9103
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9103
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9104
                                                                                           x9102))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9101)))
                                                                             (x9098
                                                                              (letrec ((x9099
                                                                                        (input)))
                                                                                (cons
                                                                                 x9099
                                                                                 '()))))
                                                                      (cons
                                                                       x9100
                                                                       x9098))))
                                                            (cons
                                                             'tetra
                                                             x9097)))
                                                         (x9095 (input)))
                                                  (x9105 x9096 x9095))
                                                (letrec ((x9126
                                                          (letrec ((xj7648
                                                                    (loc
                                                                     'module))
                                                                   (xk7649
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9127
                                                                      ((lambda (j7652
                                                                                k7653
                                                                                f7654)
                                                                         (letrec ((g9128
                                                                                   (lambda (g7650
                                                                                            g7651)
                                                                                     (letrec ((g9129
                                                                                               (letrec ((x9130
                                                                                                         (letrec ((x9132
                                                                                                                   (WORLD/C
                                                                                                                    j7652
                                                                                                                    k7653
                                                                                                                    g7650))
                                                                                                                  (x9131
                                                                                                                   (string?/c
                                                                                                                    j7652
                                                                                                                    k7653
                                                                                                                    g7651)))
                                                                                                           (f7654
                                                                                                            x9132
                                                                                                            x9131))))
                                                                                                 (WORLD/C
                                                                                                  j7652
                                                                                                  k7653
                                                                                                  x9130))))
                                                                                       g9129))))
                                                                           g9128))
                                                                       xj7648
                                                                       xk7649
                                                                       world-key-move)))
                                                              g9127)))
                                                         (x9113
                                                          (letrec ((x9114
                                                                    (letrec ((x9117
                                                                              (letrec ((x9118
                                                                                        (letrec ((x9121
                                                                                                  (letrec ((x9122
                                                                                                            (letrec ((x9125
                                                                                                                      (input))
                                                                                                                     (x9123
                                                                                                                      (letrec ((x9124
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9124
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9125
                                                                                                               x9123))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9122)))
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
                                                                                 'tetra
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
                                                             'world
                                                             x9114)))
                                                         (x9112 (input)))
                                                  (x9126 x9113 x9112))
                                                (letrec ((x9147
                                                          (letrec ((xj7655
                                                                    (loc
                                                                     'module))
                                                                   (xk7656
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9148
                                                                      ((lambda (j7659
                                                                                k7660
                                                                                f7661)
                                                                         (letrec ((g9149
                                                                                   (lambda (g7657
                                                                                            g7658)
                                                                                     (letrec ((g9150
                                                                                               (letrec ((x9151
                                                                                                         (letrec ((x9155
                                                                                                                   (WORLD/C
                                                                                                                    j7659
                                                                                                                    k7660
                                                                                                                    g7657))
                                                                                                                  (x9152
                                                                                                                   (letrec ((x9153
                                                                                                                             (letrec ((x9154
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9154))))
                                                                                                                     (x9153
                                                                                                                      j7659
                                                                                                                      k7660
                                                                                                                      g7658))))
                                                                                                           (f7661
                                                                                                            x9155
                                                                                                            x9152))))
                                                                                                 (WORLD/C
                                                                                                  j7659
                                                                                                  k7660
                                                                                                  x9151))))
                                                                                       g9150))))
                                                                           g9149))
                                                                       xj7655
                                                                       xk7656
                                                                       next-world)))
                                                              g9148)))
                                                         (x9134
                                                          (letrec ((x9135
                                                                    (letrec ((x9138
                                                                              (letrec ((x9139
                                                                                        (letrec ((x9142
                                                                                                  (letrec ((x9143
                                                                                                            (letrec ((x9146
                                                                                                                      (input))
                                                                                                                     (x9144
                                                                                                                      (letrec ((x9145
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9145
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9146
                                                                                                               x9144))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9143)))
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
                                                                                 'tetra
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
                                                             'world
                                                             x9135)))
                                                         (x9133 (input)))
                                                  (x9147 x9134 x9133))
                                                (letrec ((x9169
                                                          (letrec ((xj7662
                                                                    (loc
                                                                     'module))
                                                                   (xk7663
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9170
                                                                      ((lambda (j7665
                                                                                k7666
                                                                                f7667)
                                                                         (letrec ((g9171
                                                                                   (lambda (g7664)
                                                                                     (letrec ((g9172
                                                                                               (letrec ((x9173
                                                                                                         (letrec ((x9174
                                                                                                                   (WORLD/C
                                                                                                                    j7665
                                                                                                                    k7666
                                                                                                                    g7664)))
                                                                                                           (f7667
                                                                                                            x9174))))
                                                                                                 (BSET/C
                                                                                                  j7665
                                                                                                  k7666
                                                                                                  x9173))))
                                                                                       g9172))))
                                                                           g9171))
                                                                       xj7662
                                                                       xk7663
                                                                       ghost-blocks)))
                                                              g9170)))
                                                         (x9156
                                                          (letrec ((x9157
                                                                    (letrec ((x9160
                                                                              (letrec ((x9161
                                                                                        (letrec ((x9164
                                                                                                  (letrec ((x9165
                                                                                                            (letrec ((x9168
                                                                                                                      (input))
                                                                                                                     (x9166
                                                                                                                      (letrec ((x9167
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9167
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9168
                                                                                                               x9166))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9165)))
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
                                                                                 'tetra
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
                                                             'world
                                                             x9157))))
                                                  (x9169 x9156))
                                                (letrec ((x9176
                                                          (letrec ((xj7668
                                                                    (loc
                                                                     'module))
                                                                   (xk7669
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9177
                                                                      ((lambda (j7671
                                                                                k7672
                                                                                f7673)
                                                                         (letrec ((g9178
                                                                                   (lambda (g7670)
                                                                                     (letrec ((g9179
                                                                                               (letrec ((x9180
                                                                                                         (letrec ((x9181
                                                                                                                   (any/c
                                                                                                                    j7671
                                                                                                                    k7672
                                                                                                                    g7670)))
                                                                                                           (f7673
                                                                                                            x9181))))
                                                                                                 (boolean?/c
                                                                                                  j7671
                                                                                                  k7672
                                                                                                  x9180))))
                                                                                       g9179))))
                                                                           g9178))
                                                                       xj7668
                                                                       xk7669
                                                                       image?)))
                                                              g9177)))
                                                         (x9175 (input)))
                                                  (x9176 x9175))
                                                (letrec ((x9184
                                                          (letrec ((xj7674
                                                                    (loc
                                                                     'module))
                                                                   (xk7675
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9185
                                                                      ((lambda (j7678
                                                                                k7679
                                                                                f7680)
                                                                         (letrec ((g9186
                                                                                   (lambda (g7676
                                                                                            g7677)
                                                                                     (letrec ((g9187
                                                                                               (letrec ((x9188
                                                                                                         (letrec ((x9190
                                                                                                                   (image?
                                                                                                                    j7678
                                                                                                                    k7679
                                                                                                                    g7676))
                                                                                                                  (x9189
                                                                                                                   (image?
                                                                                                                    j7678
                                                                                                                    k7679
                                                                                                                    g7677)))
                                                                                                           (f7680
                                                                                                            x9190
                                                                                                            x9189))))
                                                                                                 (image?
                                                                                                  j7678
                                                                                                  k7679
                                                                                                  x9188))))
                                                                                       g9187))))
                                                                           g9186))
                                                                       xj7674
                                                                       xk7675
                                                                       overlay)))
                                                              g9185)))
                                                         (x9183 (input))
                                                         (x9182 (input)))
                                                  (x9184 x9183 x9182))
                                                (letrec ((x9194
                                                          (letrec ((xj7681
                                                                    (loc
                                                                     'module))
                                                                   (xk7682
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9195
                                                                      ((lambda (j7686
                                                                                k7687
                                                                                f7688)
                                                                         (letrec ((g9196
                                                                                   (lambda (g7683
                                                                                            g7684
                                                                                            g7685)
                                                                                     (letrec ((g9197
                                                                                               (letrec ((x9198
                                                                                                         (letrec ((x9201
                                                                                                                   (real?/c
                                                                                                                    j7686
                                                                                                                    k7687
                                                                                                                    g7683))
                                                                                                                  (x9200
                                                                                                                   (real?/c
                                                                                                                    j7686
                                                                                                                    k7687
                                                                                                                    g7684))
                                                                                                                  (x9199
                                                                                                                   (string?/c
                                                                                                                    j7686
                                                                                                                    k7687
                                                                                                                    g7685)))
                                                                                                           (f7688
                                                                                                            x9201
                                                                                                            x9200
                                                                                                            x9199))))
                                                                                                 (image?
                                                                                                  j7686
                                                                                                  k7687
                                                                                                  x9198))))
                                                                                       g9197))))
                                                                           g9196))
                                                                       xj7681
                                                                       xk7682
                                                                       circle)))
                                                              g9195)))
                                                         (x9193 (input))
                                                         (x9192 (input))
                                                         (x9191 (input)))
                                                  (x9194 x9193 x9192 x9191))
                                                (letrec ((x9206
                                                          (letrec ((xj7689
                                                                    (loc
                                                                     'module))
                                                                   (xk7690
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9207
                                                                      ((lambda (j7695
                                                                                k7696
                                                                                f7697)
                                                                         (letrec ((g9208
                                                                                   (lambda (g7691
                                                                                            g7692
                                                                                            g7693
                                                                                            g7694)
                                                                                     (letrec ((g9209
                                                                                               (letrec ((x9210
                                                                                                         (letrec ((x9214
                                                                                                                   (real?/c
                                                                                                                    j7695
                                                                                                                    k7696
                                                                                                                    g7691))
                                                                                                                  (x9213
                                                                                                                   (real?/c
                                                                                                                    j7695
                                                                                                                    k7696
                                                                                                                    g7692))
                                                                                                                  (x9212
                                                                                                                   (COLOR/C
                                                                                                                    j7695
                                                                                                                    k7696
                                                                                                                    g7693))
                                                                                                                  (x9211
                                                                                                                   (COLOR/C
                                                                                                                    j7695
                                                                                                                    k7696
                                                                                                                    g7694)))
                                                                                                           (f7697
                                                                                                            x9214
                                                                                                            x9213
                                                                                                            x9212
                                                                                                            x9211))))
                                                                                                 (image?
                                                                                                  j7695
                                                                                                  k7696
                                                                                                  x9210))))
                                                                                       g9209))))
                                                                           g9208))
                                                                       xj7689
                                                                       xk7690
                                                                       rectangle)))
                                                              g9207)))
                                                         (x9205 (input))
                                                         (x9204 (input))
                                                         (x9203 (input))
                                                         (x9202 (input)))
                                                  (x9206
                                                   x9205
                                                   x9204
                                                   x9203
                                                   x9202))
                                                (letrec ((x9219
                                                          (letrec ((xj7698
                                                                    (loc
                                                                     'module))
                                                                   (xk7699
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9220
                                                                      ((lambda (j7704
                                                                                k7705
                                                                                f7706)
                                                                         (letrec ((g9221
                                                                                   (lambda (g7700
                                                                                            g7701
                                                                                            g7702
                                                                                            g7703)
                                                                                     (letrec ((g9222
                                                                                               (letrec ((x9223
                                                                                                         (letrec ((x9227
                                                                                                                   (image/c
                                                                                                                    j7704
                                                                                                                    k7705
                                                                                                                    g7700))
                                                                                                                  (x9226
                                                                                                                   (real?/c
                                                                                                                    j7704
                                                                                                                    k7705
                                                                                                                    g7701))
                                                                                                                  (x9225
                                                                                                                   (real?/c
                                                                                                                    j7704
                                                                                                                    k7705
                                                                                                                    g7702))
                                                                                                                  (x9224
                                                                                                                   (image/c
                                                                                                                    j7704
                                                                                                                    k7705
                                                                                                                    g7703)))
                                                                                                           (f7706
                                                                                                            x9227
                                                                                                            x9226
                                                                                                            x9225
                                                                                                            x9224))))
                                                                                                 (image/c
                                                                                                  j7704
                                                                                                  k7705
                                                                                                  x9223))))
                                                                                       g9222))))
                                                                           g9221))
                                                                       xj7698
                                                                       xk7699
                                                                       place-image)))
                                                              g9220)))
                                                         (x9218
                                                          (cons 'image '()))
                                                         (x9217 (input))
                                                         (x9216 (input))
                                                         (x9215
                                                          (cons 'image '())))
                                                  (x9219
                                                   x9218
                                                   x9217
                                                   x9216
                                                   x9215))
                                                (letrec ((x9230
                                                          (letrec ((xj7707
                                                                    (loc
                                                                     'module))
                                                                   (xk7708
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9231
                                                                      ((lambda (j7711
                                                                                k7712
                                                                                f7713)
                                                                         (letrec ((g9232
                                                                                   (lambda (g7709
                                                                                            g7710)
                                                                                     (letrec ((g9233
                                                                                               (letrec ((x9234
                                                                                                         (letrec ((x9236
                                                                                                                   (real?/c
                                                                                                                    j7711
                                                                                                                    k7712
                                                                                                                    g7709))
                                                                                                                  (x9235
                                                                                                                   (real?/c
                                                                                                                    j7711
                                                                                                                    k7712
                                                                                                                    g7710)))
                                                                                                           (f7713
                                                                                                            x9236
                                                                                                            x9235))))
                                                                                                 (image?
                                                                                                  j7711
                                                                                                  k7712
                                                                                                  x9234))))
                                                                                       g9233))))
                                                                           g9232))
                                                                       xj7707
                                                                       xk7708
                                                                       empty-scene)))
                                                              g9231)))
                                                         (x9229 (input))
                                                         (x9228 (input)))
                                                  (x9230 x9229 x9228))
                                                (letrec ((x9238
                                                          (letrec ((xj7714
                                                                    (loc
                                                                     'module))
                                                                   (xk7715
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9239
                                                                      ((lambda (j7717
                                                                                k7718
                                                                                f7719)
                                                                         (letrec ((g9240
                                                                                   (lambda (g7716)
                                                                                     (letrec ((g9241
                                                                                               (letrec ((x9242
                                                                                                         (letrec ((x9243
                                                                                                                   (letrec ((x9244
                                                                                                                             (letrec ((x9245
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9245))))
                                                                                                                     (x9244
                                                                                                                      j7717
                                                                                                                      k7718
                                                                                                                      g7716))))
                                                                                                           (f7719
                                                                                                            x9243))))
                                                                                                 (TETRA/C
                                                                                                  j7717
                                                                                                  k7718
                                                                                                  x9242))))
                                                                                       g9241))))
                                                                           g9240))
                                                                       xj7714
                                                                       xk7715
                                                                       list-pick-random)))
                                                              g9239)))
                                                         (x9237 (input)))
                                                  (x9238 x9237))
                                                (letrec ((xj7720 (loc 'module))
                                                         (xk7721
                                                          (loc 'importer)))
                                                  (letrec ((g9246
                                                            (integer?/c
                                                             xj7720
                                                             xk7721
                                                             neg-1)))
                                                    g9246))
                                                (letrec ((x9260
                                                          (letrec ((xj7722
                                                                    (loc
                                                                     'module))
                                                                   (xk7723
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9261
                                                                      ((lambda (j7725
                                                                                k7726
                                                                                f7727)
                                                                         (letrec ((g9262
                                                                                   (lambda (g7724)
                                                                                     (letrec ((g9263
                                                                                               (letrec ((x9264
                                                                                                         (letrec ((x9265
                                                                                                                   (WORLD/C
                                                                                                                    j7725
                                                                                                                    k7726
                                                                                                                    g7724)))
                                                                                                           (f7727
                                                                                                            x9265))))
                                                                                                 (image/c
                                                                                                  j7725
                                                                                                  k7726
                                                                                                  x9264))))
                                                                                       g9263))))
                                                                           g9262))
                                                                       xj7722
                                                                       xk7723
                                                                       world->image)))
                                                              g9261)))
                                                         (x9247
                                                          (letrec ((x9248
                                                                    (letrec ((x9251
                                                                              (letrec ((x9252
                                                                                        (letrec ((x9255
                                                                                                  (letrec ((x9256
                                                                                                            (letrec ((x9259
                                                                                                                      (input))
                                                                                                                     (x9257
                                                                                                                      (letrec ((x9258
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9258
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9259
                                                                                                               x9257))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9256)))
                                                                                                 (x9253
                                                                                                  (letrec ((x9254
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9254
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9255
                                                                                           x9253))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9252)))
                                                                             (x9249
                                                                              (letrec ((x9250
                                                                                        (input)))
                                                                                (cons
                                                                                 x9250
                                                                                 '()))))
                                                                      (cons
                                                                       x9251
                                                                       x9249))))
                                                            (cons
                                                             'world
                                                             x9248))))
                                                  (x9260 x9247))
                                                (letrec ((x9267
                                                          (letrec ((xj7728
                                                                    (loc
                                                                     'module))
                                                                   (xk7729
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9268
                                                                      ((lambda (j7731
                                                                                k7732
                                                                                f7733)
                                                                         (letrec ((g9269
                                                                                   (lambda (g7730)
                                                                                     (letrec ((g9270
                                                                                               (letrec ((x9271
                                                                                                         (letrec ((x9272
                                                                                                                   (BSET/C
                                                                                                                    j7731
                                                                                                                    k7732
                                                                                                                    g7730)))
                                                                                                           (f7733
                                                                                                            x9272))))
                                                                                                 (image/c
                                                                                                  j7731
                                                                                                  k7732
                                                                                                  x9271))))
                                                                                       g9270))))
                                                                           g9269))
                                                                       xj7728
                                                                       xk7729
                                                                       blocks->image)))
                                                              g9268)))
                                                         (x9266 (input)))
                                                  (x9267 x9266))
                                                (letrec ((x9280
                                                          (letrec ((xj7734
                                                                    (loc
                                                                     'module))
                                                                   (xk7735
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9281
                                                                      ((lambda (j7737
                                                                                k7738
                                                                                f7739)
                                                                         (letrec ((g9282
                                                                                   (lambda (g7736)
                                                                                     (letrec ((g9283
                                                                                               (letrec ((x9284
                                                                                                         (letrec ((x9285
                                                                                                                   (BLOCK/C
                                                                                                                    j7737
                                                                                                                    k7738
                                                                                                                    g7736)))
                                                                                                           (f7739
                                                                                                            x9285))))
                                                                                                 (image/c
                                                                                                  j7737
                                                                                                  k7738
                                                                                                  x9284))))
                                                                                       g9283))))
                                                                           g9282))
                                                                       xj7734
                                                                       xk7735
                                                                       block->image)))
                                                              g9281)))
                                                         (x9273
                                                          (letrec ((x9274
                                                                    (letrec ((x9279
                                                                              (input))
                                                                             (x9275
                                                                              (letrec ((x9278
                                                                                        (input))
                                                                                       (x9276
                                                                                        (letrec ((x9277
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9277
                                                                                           '()))))
                                                                                (cons
                                                                                 x9278
                                                                                 x9276))))
                                                                      (cons
                                                                       x9279
                                                                       x9275))))
                                                            (cons
                                                             'block
                                                             x9274))))
                                                  (x9280 x9273))
                                                (letrec ((x9294
                                                          (letrec ((xj7740
                                                                    (loc
                                                                     'module))
                                                                   (xk7741
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9295
                                                                      ((lambda (j7744
                                                                                k7745
                                                                                f7746)
                                                                         (letrec ((g9296
                                                                                   (lambda (g7742
                                                                                            g7743)
                                                                                     (letrec ((g9297
                                                                                               (letrec ((x9298
                                                                                                         (letrec ((x9300
                                                                                                                   (BLOCK/C
                                                                                                                    j7744
                                                                                                                    k7745
                                                                                                                    g7742))
                                                                                                                  (x9299
                                                                                                                   (image/c
                                                                                                                    j7744
                                                                                                                    k7745
                                                                                                                    g7743)))
                                                                                                           (f7746
                                                                                                            x9300
                                                                                                            x9299))))
                                                                                                 (image/c
                                                                                                  j7744
                                                                                                  k7745
                                                                                                  x9298))))
                                                                                       g9297))))
                                                                           g9296))
                                                                       xj7740
                                                                       xk7741
                                                                       place-block)))
                                                              g9295)))
                                                         (x9287
                                                          (letrec ((x9288
                                                                    (letrec ((x9293
                                                                              (input))
                                                                             (x9289
                                                                              (letrec ((x9292
                                                                                        (input))
                                                                                       (x9290
                                                                                        (letrec ((x9291
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9291
                                                                                           '()))))
                                                                                (cons
                                                                                 x9292
                                                                                 x9290))))
                                                                      (cons
                                                                       x9293
                                                                       x9289))))
                                                            (cons
                                                             'block
                                                             x9288)))
                                                         (x9286
                                                          (cons 'image '())))
                                                  (x9294 x9287 x9286))
                                                (letrec ((x9302
                                                          (letrec ((xj7747
                                                                    (loc
                                                                     'module))
                                                                   (xk7748
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9303
                                                                      ((lambda (j7750
                                                                                k7751
                                                                                f7752)
                                                                         (letrec ((g9304
                                                                                   (lambda (g7749)
                                                                                     (letrec ((g9305
                                                                                               (letrec ((x9306
                                                                                                         (letrec ((x9307
                                                                                                                   (letrec ((x9308
                                                                                                                             (letrec ((x9309
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9309))))
                                                                                                                     (x9308
                                                                                                                      j7750
                                                                                                                      k7751
                                                                                                                      g7749))))
                                                                                                           (f7752
                                                                                                            x9307))))
                                                                                                 (WORLD/C
                                                                                                  j7750
                                                                                                  k7751
                                                                                                  x9306))))
                                                                                       g9305))))
                                                                           g9304))
                                                                       xj7747
                                                                       xk7748
                                                                       world0)))
                                                              g9303)))
                                                         (x9301 (input)))
                                                  (x9302 x9301))))))
                                      g8742))))
                          g7804))))
              g7787)))
    g7786))
