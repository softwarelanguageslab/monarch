(letrec ((any? (lambda (v) (letrec ((g7770 #t)) g7770)))
         (meta (lambda (v) (letrec ((g7771 v)) g7771)))
         (member
          (lambda (v lst)
            (letrec ((g7772
                      (letrec ((g7773
                                (letrec ((x-e7774 lst))
                                  (match
                                   x-e7774
                                   ((() #f)
                                    ((pair v1 vs)
                                     (letrec ((x-cnd7775 (eq? v v1)))
                                       (if x-cnd7775 #t (member v vs)))))))))
                        g7773)))
              g7772)))
         (unconstrained/c #f)
         (actor?
          (lambda (k j)
            (letrec ((g7776 (lambda (v) (letrec ((g7777 v)) g7777)))) g7776)))
         (nonzero?
          (lambda (v)
            (letrec ((g7778 (letrec ((x7779 (= v 0))) (not x7779)))) g7778))))
  (letrec ((g7780
            (letrec ((g7781
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
                        (letrec ((g7782 '())
                                 (g7783
                                  (letrec ((empty '())
                                           (listof
                                            (lambda (contract)
                                              (letrec ((g7784
                                                        (lambda (k j lst)
                                                          (letrec ((g7785
                                                                    (map
                                                                     (lambda (v)
                                                                       (letrec ((g7786
                                                                                 (contract
                                                                                  k
                                                                                  j
                                                                                  v)))
                                                                         g7786))
                                                                     lst)))
                                                            g7785))))
                                                g7784)))
                                           (real?/c
                                            (lambda (g7262 g7263 g7264)
                                              (letrec ((g7787
                                                        (letrec ((x-cnd7788
                                                                  (real?
                                                                   g7264)))
                                                          (if x-cnd7788
                                                            g7264
                                                            (blame
                                                             g7262
                                                             'real?)))))
                                                g7787)))
                                           (boolean?/c
                                            (lambda (g7265 g7266 g7267)
                                              (letrec ((g7789
                                                        (letrec ((x-cnd7790
                                                                  (boolean?
                                                                   g7267)))
                                                          (if x-cnd7790
                                                            g7267
                                                            (blame
                                                             g7265
                                                             'boolean?)))))
                                                g7789)))
                                           (number?/c
                                            (lambda (g7268 g7269 g7270)
                                              (letrec ((g7791
                                                        (letrec ((x-cnd7792
                                                                  (number?
                                                                   g7270)))
                                                          (if x-cnd7792
                                                            g7270
                                                            (blame
                                                             g7268
                                                             'number?)))))
                                                g7791)))
                                           (any/c
                                            (lambda (g7271 g7272 g7273)
                                              (letrec ((g7793
                                                        (letrec ((x-cnd7794
                                                                  ((lambda (v)
                                                                     (letrec ((g7795
                                                                               #t))
                                                                       g7795))
                                                                   g7273)))
                                                          (if x-cnd7794
                                                            g7273
                                                            (blame
                                                             g7271
                                                             '(lambda (v)
                                                                #t))))))
                                                g7793)))
                                           (any?/c
                                            (lambda (g7274 g7275 g7276)
                                              (letrec ((g7796
                                                        (letrec ((x-cnd7797
                                                                  ((lambda (v)
                                                                     (letrec ((g7798
                                                                               #t))
                                                                       g7798))
                                                                   g7276)))
                                                          (if x-cnd7797
                                                            g7276
                                                            (blame
                                                             g7274
                                                             '(lambda (v)
                                                                #t))))))
                                                g7796)))
                                           (cons?/c
                                            (lambda (g7277 g7278 g7279)
                                              (letrec ((g7799
                                                        (letrec ((x-cnd7800
                                                                  (pair?
                                                                   g7279)))
                                                          (if x-cnd7800
                                                            g7279
                                                            (blame
                                                             g7277
                                                             'pair?)))))
                                                g7799)))
                                           (cons/c cons?/c)
                                           (pair?/c
                                            (lambda (g7280 g7281 g7282)
                                              (letrec ((g7801
                                                        (letrec ((x-cnd7802
                                                                  (pair?
                                                                   g7282)))
                                                          (if x-cnd7802
                                                            g7282
                                                            (blame
                                                             g7280
                                                             'pair?)))))
                                                g7801)))
                                           (integer?/c
                                            (lambda (g7283 g7284 g7285)
                                              (letrec ((g7803
                                                        (letrec ((x-cnd7804
                                                                  (integer?
                                                                   g7285)))
                                                          (if x-cnd7804
                                                            g7285
                                                            (blame
                                                             g7283
                                                             'integer?)))))
                                                g7803)))
                                           (symbol?/c
                                            (lambda (g7286 g7287 g7288)
                                              (letrec ((g7805
                                                        (letrec ((x-cnd7806
                                                                  (symbol?
                                                                   g7288)))
                                                          (if x-cnd7806
                                                            g7288
                                                            (blame
                                                             g7286
                                                             'symbol?)))))
                                                g7805)))
                                           (and/c
                                            (lambda (c1 c2)
                                              (letrec ((g7807
                                                        (lambda (k j v)
                                                          (letrec ((g7808
                                                                    (letrec ((x-cnd7809
                                                                              (c1
                                                                               k
                                                                               j
                                                                               v)))
                                                                      (if x-cnd7809
                                                                        (c2
                                                                         k
                                                                         j
                                                                         v)
                                                                        #f))))
                                                            g7808))))
                                                g7807)))
                                           (list-of
                                            (lambda (contract)
                                              (letrec ((g7810
                                                        (lambda (k j v)
                                                          (letrec ((g7811
                                                                    (letrec ((x-cnd7812
                                                                              (null?
                                                                               v)))
                                                                      (if x-cnd7812
                                                                        '()
                                                                        (letrec ((x7816
                                                                                  (letrec ((x7817
                                                                                            (car
                                                                                             v)))
                                                                                    (contract
                                                                                     k
                                                                                     j
                                                                                     x7817)))
                                                                                 (x7813
                                                                                  (letrec ((x7815
                                                                                            (list-of
                                                                                             contract))
                                                                                           (x7814
                                                                                            (cdr
                                                                                             v)))
                                                                                    (x7815
                                                                                     k
                                                                                     j
                                                                                     x7814))))
                                                                          (orig-cons
                                                                           x7816
                                                                           x7813))))))
                                                            g7811))))
                                                g7810)))
                                           (any?
                                            (lambda (v)
                                              (letrec ((g7818 #t)) g7818)))
                                           (nonzero?
                                            (lambda (v)
                                              (letrec ((g7819
                                                        (letrec ((x7820
                                                                  (= v 0)))
                                                          (not x7820))))
                                                g7819)))
                                           (nonzero?/c
                                            (lambda (g7289 g7290 g7291)
                                              (letrec ((g7821
                                                        (letrec ((x-cnd7822
                                                                  ((lambda (v)
                                                                     (letrec ((g7823
                                                                               (letrec ((x7824
                                                                                         (=
                                                                                          v
                                                                                          0)))
                                                                                 (not
                                                                                  x7824))))
                                                                       g7823))
                                                                   g7291)))
                                                          (if x-cnd7822
                                                            g7291
                                                            (blame
                                                             g7289
                                                             '(lambda (v)
                                                                (not
                                                                 (= v 0))))))))
                                                g7821)))
                                           (>=/c
                                            (lambda (n)
                                              (letrec ((g7825
                                                        (lambda (g7292
                                                                 g7293
                                                                 g7294)
                                                          (letrec ((g7826
                                                                    (letrec ((x-cnd7827
                                                                              ((lambda (v)
                                                                                 (letrec ((g7828
                                                                                           (orig->=
                                                                                            v
                                                                                            n)))
                                                                                   g7828))
                                                                               g7294)))
                                                                      (if x-cnd7827
                                                                        g7294
                                                                        (blame
                                                                         g7292
                                                                         '(lambda (v)
                                                                            (orig->=
                                                                             v
                                                                             n)))))))
                                                            g7826))))
                                                g7825)))
                                           (>/c
                                            (lambda (n)
                                              (letrec ((g7829
                                                        (lambda (g7295
                                                                 g7296
                                                                 g7297)
                                                          (letrec ((g7830
                                                                    (letrec ((x-cnd7831
                                                                              ((lambda (v)
                                                                                 (letrec ((g7832
                                                                                           (orig->
                                                                                            v
                                                                                            n)))
                                                                                   g7832))
                                                                               g7297)))
                                                                      (if x-cnd7831
                                                                        g7297
                                                                        (blame
                                                                         g7295
                                                                         '(lambda (v)
                                                                            (orig->
                                                                             v
                                                                             n)))))))
                                                            g7830))))
                                                g7829)))
                                           (</c
                                            (lambda (n)
                                              (letrec ((g7833
                                                        (lambda (g7298
                                                                 g7299
                                                                 g7300)
                                                          (letrec ((g7834
                                                                    (letrec ((x-cnd7835
                                                                              ((lambda (v)
                                                                                 (letrec ((g7836
                                                                                           (orig-<
                                                                                            v
                                                                                            n)))
                                                                                   g7836))
                                                                               g7300)))
                                                                      (if x-cnd7835
                                                                        g7300
                                                                        (blame
                                                                         g7298
                                                                         '(lambda (v)
                                                                            (orig-<
                                                                             v
                                                                             n)))))))
                                                            g7834))))
                                                g7833)))
                                           (<=/c
                                            (lambda (n)
                                              (letrec ((g7837
                                                        (lambda (g7301
                                                                 g7302
                                                                 g7303)
                                                          (letrec ((g7838
                                                                    (letrec ((x-cnd7839
                                                                              ((lambda (v)
                                                                                 (letrec ((g7840
                                                                                           (orig-<=
                                                                                            v
                                                                                            n)))
                                                                                   g7840))
                                                                               g7303)))
                                                                      (if x-cnd7839
                                                                        g7303
                                                                        (blame
                                                                         g7301
                                                                         '(lambda (v)
                                                                            (orig-<=
                                                                             v
                                                                             n)))))))
                                                            g7838))))
                                                g7837)))
                                           (=/c
                                            (lambda (n)
                                              (letrec ((g7841
                                                        (lambda (g7304
                                                                 g7305
                                                                 g7306)
                                                          (letrec ((g7842
                                                                    (letrec ((x-cnd7843
                                                                              ((lambda (v)
                                                                                 (letrec ((g7844
                                                                                           (orig-=
                                                                                            v
                                                                                            n)))
                                                                                   g7844))
                                                                               g7306)))
                                                                      (if x-cnd7843
                                                                        g7306
                                                                        (blame
                                                                         g7304
                                                                         '(lambda (v)
                                                                            (orig-=
                                                                             v
                                                                             n)))))))
                                                            g7842))))
                                                g7841)))
                                           (meta
                                            (lambda (v)
                                              (letrec ((g7845 v)) g7845)))
                                           (+
                                            (letrec ((xj7307 'server)
                                                     (xk7308 'client))
                                              (letrec ((g7846
                                                        ((lambda (j7311
                                                                  k7312
                                                                  f7313)
                                                           (letrec ((g7848
                                                                     (lambda (g7309
                                                                              g7310)
                                                                       (letrec ((g7849
                                                                                 (letrec ((x7850
                                                                                           (letrec ((x7852
                                                                                                     (number?/c
                                                                                                      j7311
                                                                                                      k7312
                                                                                                      g7309))
                                                                                                    (x7851
                                                                                                     (number?/c
                                                                                                      j7311
                                                                                                      k7312
                                                                                                      g7310)))
                                                                                             (f7313
                                                                                              x7852
                                                                                              x7851))))
                                                                                   (number?/c
                                                                                    j7311
                                                                                    k7312
                                                                                    x7850))))
                                                                         g7849))))
                                                             g7848))
                                                         xj7307
                                                         xk7308
                                                         (lambda (a b)
                                                           (letrec ((g7847
                                                                     (orig-+
                                                                      a
                                                                      b)))
                                                             g7847)))))
                                                g7846)))
                                           (-
                                            (letrec ((xj7314 'server)
                                                     (xk7315 'client))
                                              (letrec ((g7853
                                                        ((lambda (j7318
                                                                  k7319
                                                                  f7320)
                                                           (letrec ((g7855
                                                                     (lambda (g7316
                                                                              g7317)
                                                                       (letrec ((g7856
                                                                                 (letrec ((x7857
                                                                                           (letrec ((x7859
                                                                                                     (number?/c
                                                                                                      j7318
                                                                                                      k7319
                                                                                                      g7316))
                                                                                                    (x7858
                                                                                                     (number?/c
                                                                                                      j7318
                                                                                                      k7319
                                                                                                      g7317)))
                                                                                             (f7320
                                                                                              x7859
                                                                                              x7858))))
                                                                                   (number?/c
                                                                                    j7318
                                                                                    k7319
                                                                                    x7857))))
                                                                         g7856))))
                                                             g7855))
                                                         xj7314
                                                         xk7315
                                                         (lambda (a b)
                                                           (letrec ((g7854
                                                                     (orig--
                                                                      a
                                                                      b)))
                                                             g7854)))))
                                                g7853)))
                                           (*
                                            (letrec ((xj7321 'server)
                                                     (xk7322 'client))
                                              (letrec ((g7860
                                                        ((lambda (j7325
                                                                  k7326
                                                                  f7327)
                                                           (letrec ((g7862
                                                                     (lambda (g7323
                                                                              g7324)
                                                                       (letrec ((g7863
                                                                                 (letrec ((x7864
                                                                                           (letrec ((x7866
                                                                                                     (number?/c
                                                                                                      j7325
                                                                                                      k7326
                                                                                                      g7323))
                                                                                                    (x7865
                                                                                                     (number?/c
                                                                                                      j7325
                                                                                                      k7326
                                                                                                      g7324)))
                                                                                             (f7327
                                                                                              x7866
                                                                                              x7865))))
                                                                                   (number?/c
                                                                                    j7325
                                                                                    k7326
                                                                                    x7864))))
                                                                         g7863))))
                                                             g7862))
                                                         xj7321
                                                         xk7322
                                                         (lambda (a b)
                                                           (letrec ((g7861
                                                                     (orig-*
                                                                      a
                                                                      b)))
                                                             g7861)))))
                                                g7860)))
                                           (<
                                            (letrec ((xj7328 'server)
                                                     (xk7329 'client))
                                              (letrec ((g7867
                                                        ((lambda (j7332
                                                                  k7333
                                                                  f7334)
                                                           (letrec ((g7869
                                                                     (lambda (g7330
                                                                              g7331)
                                                                       (letrec ((g7870
                                                                                 (letrec ((x7871
                                                                                           (letrec ((x7873
                                                                                                     (number?/c
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7330))
                                                                                                    (x7872
                                                                                                     (number?/c
                                                                                                      j7332
                                                                                                      k7333
                                                                                                      g7331)))
                                                                                             (f7334
                                                                                              x7873
                                                                                              x7872))))
                                                                                   (boolean?/c
                                                                                    j7332
                                                                                    k7333
                                                                                    x7871))))
                                                                         g7870))))
                                                             g7869))
                                                         xj7328
                                                         xk7329
                                                         (lambda (a b)
                                                           (letrec ((g7868
                                                                     (orig-<
                                                                      a
                                                                      b)))
                                                             g7868)))))
                                                g7867)))
                                           (>
                                            (letrec ((xj7335 'server)
                                                     (xk7336 'client))
                                              (letrec ((g7874
                                                        ((lambda (j7339
                                                                  k7340
                                                                  f7341)
                                                           (letrec ((g7876
                                                                     (lambda (g7337
                                                                              g7338)
                                                                       (letrec ((g7877
                                                                                 (letrec ((x7878
                                                                                           (letrec ((x7880
                                                                                                     (number?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7337))
                                                                                                    (x7879
                                                                                                     (number?/c
                                                                                                      j7339
                                                                                                      k7340
                                                                                                      g7338)))
                                                                                             (f7341
                                                                                              x7880
                                                                                              x7879))))
                                                                                   (boolean?/c
                                                                                    j7339
                                                                                    k7340
                                                                                    x7878))))
                                                                         g7877))))
                                                             g7876))
                                                         xj7335
                                                         xk7336
                                                         (lambda (a b)
                                                           (letrec ((g7875
                                                                     (orig->
                                                                      a
                                                                      b)))
                                                             g7875)))))
                                                g7874)))
                                           (<=
                                            (letrec ((xj7342 'server)
                                                     (xk7343 'client))
                                              (letrec ((g7881
                                                        ((lambda (j7346
                                                                  k7347
                                                                  f7348)
                                                           (letrec ((g7883
                                                                     (lambda (g7344
                                                                              g7345)
                                                                       (letrec ((g7884
                                                                                 (letrec ((x7885
                                                                                           (letrec ((x7887
                                                                                                     (number?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7344))
                                                                                                    (x7886
                                                                                                     (number?/c
                                                                                                      j7346
                                                                                                      k7347
                                                                                                      g7345)))
                                                                                             (f7348
                                                                                              x7887
                                                                                              x7886))))
                                                                                   (boolean?/c
                                                                                    j7346
                                                                                    k7347
                                                                                    x7885))))
                                                                         g7884))))
                                                             g7883))
                                                         xj7342
                                                         xk7343
                                                         (lambda (a b)
                                                           (letrec ((g7882
                                                                     (orig-<=
                                                                      a
                                                                      b)))
                                                             g7882)))))
                                                g7881)))
                                           (>=
                                            (letrec ((xj7349 'server)
                                                     (xk7350 'client))
                                              (letrec ((g7888
                                                        ((lambda (j7353
                                                                  k7354
                                                                  f7355)
                                                           (letrec ((g7890
                                                                     (lambda (g7351
                                                                              g7352)
                                                                       (letrec ((g7891
                                                                                 (letrec ((x7892
                                                                                           (letrec ((x7894
                                                                                                     (number?/c
                                                                                                      j7353
                                                                                                      k7354
                                                                                                      g7351))
                                                                                                    (x7893
                                                                                                     (number?/c
                                                                                                      j7353
                                                                                                      k7354
                                                                                                      g7352)))
                                                                                             (f7355
                                                                                              x7894
                                                                                              x7893))))
                                                                                   (boolean?/c
                                                                                    j7353
                                                                                    k7354
                                                                                    x7892))))
                                                                         g7891))))
                                                             g7890))
                                                         xj7349
                                                         xk7350
                                                         (lambda (a b)
                                                           (letrec ((g7889
                                                                     (orig->=
                                                                      a
                                                                      b)))
                                                             g7889)))))
                                                g7888)))
                                           (/
                                            (letrec ((xj7356 'server)
                                                     (xk7357 'client))
                                              (letrec ((g7895
                                                        ((lambda (j7360
                                                                  k7361
                                                                  f7362)
                                                           (letrec ((g7897
                                                                     (lambda (g7358
                                                                              g7359)
                                                                       (letrec ((g7898
                                                                                 (letrec ((x7899
                                                                                           (letrec ((x7901
                                                                                                     (number?/c
                                                                                                      j7360
                                                                                                      k7361
                                                                                                      g7358))
                                                                                                    (x7900
                                                                                                     (number?/c
                                                                                                      j7360
                                                                                                      k7361
                                                                                                      g7359)))
                                                                                             (f7362
                                                                                              x7901
                                                                                              x7900))))
                                                                                   (number?/c
                                                                                    j7360
                                                                                    k7361
                                                                                    x7899))))
                                                                         g7898))))
                                                             g7897))
                                                         xj7356
                                                         xk7357
                                                         (lambda (a b)
                                                           (letrec ((g7896
                                                                     (orig-/
                                                                      a
                                                                      b)))
                                                             g7896)))))
                                                g7895)))
                                           (car
                                            (letrec ((xj7363 'server)
                                                     (xk7364 'client))
                                              (letrec ((g7902
                                                        ((lambda (j7366
                                                                  k7367
                                                                  f7368)
                                                           (letrec ((g7904
                                                                     (lambda (g7365)
                                                                       (letrec ((g7905
                                                                                 (letrec ((x7906
                                                                                           (letrec ((x7907
                                                                                                     (pair?/c
                                                                                                      j7366
                                                                                                      k7367
                                                                                                      g7365)))
                                                                                             (f7368
                                                                                              x7907))))
                                                                                   (any/c
                                                                                    j7366
                                                                                    k7367
                                                                                    x7906))))
                                                                         g7905))))
                                                             g7904))
                                                         xj7363
                                                         xk7364
                                                         (lambda (p)
                                                           (letrec ((g7903
                                                                     (orig-car
                                                                      p)))
                                                             g7903)))))
                                                g7902)))
                                           (cdr
                                            (letrec ((xj7369 'server)
                                                     (xk7370 'client))
                                              (letrec ((g7908
                                                        ((lambda (j7372
                                                                  k7373
                                                                  f7374)
                                                           (letrec ((g7910
                                                                     (lambda (g7371)
                                                                       (letrec ((g7911
                                                                                 (letrec ((x7912
                                                                                           (letrec ((x7913
                                                                                                     (pair?/c
                                                                                                      j7372
                                                                                                      k7373
                                                                                                      g7371)))
                                                                                             (f7374
                                                                                              x7913))))
                                                                                   (any/c
                                                                                    j7372
                                                                                    k7373
                                                                                    x7912))))
                                                                         g7911))))
                                                             g7910))
                                                         xj7369
                                                         xk7370
                                                         (lambda (p)
                                                           (letrec ((g7909
                                                                     (orig-cdr
                                                                      p)))
                                                             g7909)))))
                                                g7908)))
                                           (cons
                                            (letrec ((xj7375 'server)
                                                     (xk7376 'client))
                                              (letrec ((g7914
                                                        ((lambda (j7379
                                                                  k7380
                                                                  f7381)
                                                           (letrec ((g7916
                                                                     (lambda (g7377
                                                                              g7378)
                                                                       (letrec ((g7917
                                                                                 (letrec ((x7918
                                                                                           (letrec ((x7920
                                                                                                     (any/c
                                                                                                      j7379
                                                                                                      k7380
                                                                                                      g7377))
                                                                                                    (x7919
                                                                                                     (any/c
                                                                                                      j7379
                                                                                                      k7380
                                                                                                      g7378)))
                                                                                             (f7381
                                                                                              x7920
                                                                                              x7919))))
                                                                                   (pair?/c
                                                                                    j7379
                                                                                    k7380
                                                                                    x7918))))
                                                                         g7917))))
                                                             g7916))
                                                         xj7375
                                                         xk7376
                                                         (lambda (a b)
                                                           (letrec ((g7915
                                                                     (orig-cons
                                                                      a
                                                                      b)))
                                                             g7915)))))
                                                g7914)))
                                           (vector-ref
                                            (letrec ((xj7382 'server)
                                                     (xk7383 'client))
                                              (letrec ((g7921
                                                        ((lambda (j7385
                                                                  k7386
                                                                  f7387)
                                                           (letrec ((g7923
                                                                     (lambda (g7384)
                                                                       (letrec ((g7924
                                                                                 (letrec ((x7925
                                                                                           (letrec ((x7926
                                                                                                     (vector?/c
                                                                                                      j7385
                                                                                                      k7386
                                                                                                      g7384)))
                                                                                             (f7387
                                                                                              x7926))))
                                                                                   (integer?/c
                                                                                    j7385
                                                                                    k7386
                                                                                    x7925))))
                                                                         g7924))))
                                                             g7923))
                                                         xj7382
                                                         xk7383
                                                         (lambda (v i)
                                                           (letrec ((g7922
                                                                     (orig-vector-ref
                                                                      v
                                                                      i)))
                                                             g7922)))))
                                                g7921)))
                                           (vector-set!
                                            (letrec ((xj7388 'server)
                                                     (xk7389 'client))
                                              (letrec ((g7927
                                                        ((lambda (j7392
                                                                  k7393
                                                                  f7394)
                                                           (letrec ((g7929
                                                                     (lambda (g7390
                                                                              g7391)
                                                                       (letrec ((g7930
                                                                                 (letrec ((x7931
                                                                                           (letrec ((x7933
                                                                                                     (vector?/c
                                                                                                      j7392
                                                                                                      k7393
                                                                                                      g7390))
                                                                                                    (x7932
                                                                                                     (integer?/c
                                                                                                      j7392
                                                                                                      k7393
                                                                                                      g7391)))
                                                                                             (f7394
                                                                                              x7933
                                                                                              x7932))))
                                                                                   (any/c
                                                                                    j7392
                                                                                    k7393
                                                                                    x7931))))
                                                                         g7930))))
                                                             g7929))
                                                         xj7388
                                                         xk7389
                                                         (lambda (vec i v)
                                                           (letrec ((g7928
                                                                     (orig-vector-set!
                                                                      vec
                                                                      i
                                                                      v)))
                                                             g7928)))))
                                                g7927)))
                                           (assert
                                            (lambda (cnd)
                                              (letrec ((g7934
                                                        (if cnd
                                                          '()
                                                          (error
                                                           "assertion failed"))))
                                                g7934)))
                                           (cdddr
                                            (lambda (x)
                                              (letrec ((g7935
                                                        (letrec ((x7936
                                                                  (letrec ((x7937
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7937))))
                                                          (cdr x7936))))
                                                g7935)))
                                           (__toplevel_set-car! set-car!)
                                           (map
                                            (lambda (f l)
                                              (letrec ((g7938
                                                        (letrec ((x7941
                                                                  (procedure?
                                                                   f)))
                                                          (assert x7941)))
                                                       (g7939
                                                        (letrec ((x7942
                                                                  (list? l)))
                                                          (assert x7942)))
                                                       (g7940
                                                        (letrec ((x-cnd7943
                                                                  (null? l)))
                                                          (if x-cnd7943
                                                            '()
                                                            (letrec ((x7946
                                                                      (letrec ((x7947
                                                                                (car
                                                                                 l)))
                                                                        (f
                                                                         x7947)))
                                                                     (x7944
                                                                      (letrec ((x7945
                                                                                (cdr
                                                                                 l)))
                                                                        (map
                                                                         f
                                                                         x7945))))
                                                              (cons
                                                               x7946
                                                               x7944))))))
                                                g7940)))
                                           (cdar
                                            (lambda (x)
                                              (letrec ((g7948
                                                        (letrec ((x7949
                                                                  (car x)))
                                                          (cdr x7949))))
                                                g7948)))
                                           (cadadr
                                            (lambda (x)
                                              (letrec ((g7950
                                                        (letrec ((x7951
                                                                  (letrec ((x7952
                                                                            (letrec ((x7953
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7953))))
                                                                    (cdr
                                                                     x7952))))
                                                          (car x7951))))
                                                g7950)))
                                           (cdadar
                                            (lambda (x)
                                              (letrec ((g7954
                                                        (letrec ((x7955
                                                                  (letrec ((x7956
                                                                            (letrec ((x7957
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7957))))
                                                                    (car
                                                                     x7956))))
                                                          (cdr x7955))))
                                                g7954)))
                                           (call-with-output-file
                                            (lambda (filename proc)
                                              (letrec ((g7958
                                                        (letrec ((x7961
                                                                  (string?
                                                                   filename)))
                                                          (assert x7961)))
                                                       (g7959
                                                        (letrec ((x7962
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x7962)))
                                                       (g7960
                                                        (letrec ((output-port
                                                                  (open-output-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   output-port)))
                                                          (letrec ((g7963
                                                                    (close-output-port
                                                                     output-port))
                                                                   (g7964 res))
                                                            g7964))))
                                                g7960)))
                                           (caddr
                                            (lambda (x)
                                              (letrec ((g7965
                                                        (letrec ((x7966
                                                                  (letrec ((x7967
                                                                            (cdr
                                                                             x)))
                                                                    (cdr
                                                                     x7967))))
                                                          (car x7966))))
                                                g7965)))
                                           (cdaadr
                                            (lambda (x)
                                              (letrec ((g7968
                                                        (letrec ((x7969
                                                                  (letrec ((x7970
                                                                            (letrec ((x7971
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x7971))))
                                                                    (car
                                                                     x7970))))
                                                          (cdr x7969))))
                                                g7968)))
                                           (assq
                                            (lambda (k l)
                                              (letrec ((g7972
                                                        (letrec ((x7974
                                                                  (list? l)))
                                                          (assert x7974)))
                                                       (g7973
                                                        (letrec ((x-cnd7975
                                                                  (null? l)))
                                                          (if x-cnd7975
                                                            #f
                                                            (letrec ((x-cnd7976
                                                                      (letrec ((x7977
                                                                                (caar
                                                                                 l)))
                                                                        (eq?
                                                                         x7977
                                                                         k))))
                                                              (if x-cnd7976
                                                                (car l)
                                                                (letrec ((x7978
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x7978))))))))
                                                g7973)))
                                           (even?
                                            (lambda (x)
                                              (letrec ((g7979
                                                        (letrec ((x7980
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 0 x7980))))
                                                g7979)))
                                           (list->string
                                            (lambda (l)
                                              (letrec ((g7981
                                                        (letrec ((x7983
                                                                  (list? l)))
                                                          (assert x7983)))
                                                       (g7982
                                                        (letrec ((x-cnd7984
                                                                  (null? l)))
                                                          (if x-cnd7984
                                                            ""
                                                            (letrec ((x7987
                                                                      (letrec ((x7988
                                                                                (car
                                                                                 l)))
                                                                        (char->string
                                                                         x7988)))
                                                                     (x7985
                                                                      (letrec ((x7986
                                                                                (cdr
                                                                                 l)))
                                                                        (list->string
                                                                         x7986))))
                                                              (string-append
                                                               x7987
                                                               x7985))))))
                                                g7982)))
                                           (char<=?
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
                                                        (letrec ((val7243
                                                                  (char<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g7994
                                                                    (if val7243
                                                                      val7243
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g7994))))
                                                g7991)))
                                           (cdddar
                                            (lambda (x)
                                              (letrec ((g7995
                                                        (letrec ((x7996
                                                                  (letrec ((x7997
                                                                            (letrec ((x7998
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x7998))))
                                                                    (cdr
                                                                     x7997))))
                                                          (cdr x7996))))
                                                g7995)))
                                           (list-tail
                                            (lambda (x k)
                                              (letrec ((g7999
                                                        (letrec ((x8002
                                                                  (list? l)))
                                                          (assert x8002)))
                                                       (g8000
                                                        (letrec ((x8003
                                                                  (number?)))
                                                          (assert x8003)))
                                                       (g8001
                                                        (letrec ((x-cnd8004
                                                                  (zero? k)))
                                                          (if x-cnd8004
                                                            x
                                                            (letrec ((x8006
                                                                      (cdr x))
                                                                     (x8005
                                                                      (- k 1)))
                                                              (list-tail
                                                               x8006
                                                               x8005))))))
                                                g8001)))
                                           (halt
                                            (lambda ()
                                              (letrec ((g8007 '())) g8007)))
                                           (char-alphabetic?
                                            (lambda (c)
                                              (letrec ((g8008
                                                        (letrec ((x-cnd8009
                                                                  (letrec ((x8010
                                                                            #\a))
                                                                    (char-ci>=?
                                                                     c
                                                                     x8010))))
                                                          (if x-cnd8009
                                                            (letrec ((x8011
                                                                      #\z))
                                                              (char-ci<=?
                                                               c
                                                               x8011))
                                                            #f))))
                                                g8008)))
                                           (<=
                                            (lambda (x y)
                                              (letrec ((g8012
                                                        (letrec ((x8014
                                                                  (number? x)))
                                                          (assert x8014)))
                                                       (g8013
                                                        (letrec ((val7244
                                                                  (< x y)))
                                                          (letrec ((g8015
                                                                    (if val7244
                                                                      val7244
                                                                      (letrec ((val7245
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g8016
                                                                                  (if val7245
                                                                                    val7245
                                                                                    #f)))
                                                                          g8016)))))
                                                            g8015))))
                                                g8013)))
                                           (char-whitespace?
                                            (lambda (c)
                                              (letrec ((g8017
                                                        (letrec ((val7246
                                                                  (letrec ((x8018
                                                                            (char->integer
                                                                             c)))
                                                                    (=
                                                                     x8018
                                                                     9))))
                                                          (letrec ((g8019
                                                                    (if val7246
                                                                      val7246
                                                                      (letrec ((val7247
                                                                                (letrec ((x8020
                                                                                          (char->integer
                                                                                           c)))
                                                                                  (=
                                                                                   x8020
                                                                                   10))))
                                                                        (letrec ((g8021
                                                                                  (if val7247
                                                                                    val7247
                                                                                    (letrec ((x8022
                                                                                              (char->integer
                                                                                               c)))
                                                                                      (=
                                                                                       x8022
                                                                                       32)))))
                                                                          g8021)))))
                                                            g8019))))
                                                g8017)))
                                           (cddar
                                            (lambda (x)
                                              (letrec ((g8023
                                                        (letrec ((x8024
                                                                  (letrec ((x8025
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8025))))
                                                          (cdr x8024))))
                                                g8023)))
                                           (positive?
                                            (lambda (x)
                                              (letrec ((g8026
                                                        (letrec ((x8028
                                                                  (number? x)))
                                                          (assert x8028)))
                                                       (g8027 (> x 0)))
                                                g8027)))
                                           ($pc '())
                                           (ref-set set-car!)
                                           (void
                                            (lambda ()
                                              (letrec ((g8029 #f)) g8029)))
                                           (cddr
                                            (lambda (x)
                                              (letrec ((g8030
                                                        (letrec ((x8031
                                                                  (cdr x)))
                                                          (cdr x8031))))
                                                g8030)))
                                           (truncate
                                            (lambda (x)
                                              (letrec ((g8032
                                                        (letrec ((x8034
                                                                  (number? x)))
                                                          (assert x8034)))
                                                       (g8033
                                                        (letrec ((x-cnd8035
                                                                  (< x 0)))
                                                          (if x-cnd8035
                                                            (ceiling x)
                                                            (floor x)))))
                                                g8033)))
                                           ($cmp '())
                                           (equal?
                                            (lambda (a b)
                                              (letrec ((g8036
                                                        (letrec ((val7248
                                                                  (eq? a b)))
                                                          (letrec ((g8037
                                                                    (if val7248
                                                                      val7248
                                                                      (letrec ((val7249
                                                                                (letrec ((x-cnd8038
                                                                                          (null?
                                                                                           a)))
                                                                                  (if x-cnd8038
                                                                                    (null?
                                                                                     b)
                                                                                    #f))))
                                                                        (letrec ((g8039
                                                                                  (if val7249
                                                                                    val7249
                                                                                    (letrec ((val7250
                                                                                              (letrec ((x-cnd8040
                                                                                                        (string?
                                                                                                         a)))
                                                                                                (if x-cnd8040
                                                                                                  (letrec ((x-cnd8041
                                                                                                            (string?
                                                                                                             b)))
                                                                                                    (if x-cnd8041
                                                                                                      (string=?
                                                                                                       a
                                                                                                       b)
                                                                                                      #f))
                                                                                                  #f))))
                                                                                      (letrec ((g8042
                                                                                                (if val7250
                                                                                                  val7250
                                                                                                  (letrec ((val7251
                                                                                                            (letrec ((x-cnd8043
                                                                                                                      (pair?
                                                                                                                       a)))
                                                                                                              (if x-cnd8043
                                                                                                                (letrec ((x-cnd8044
                                                                                                                          (pair?
                                                                                                                           b)))
                                                                                                                  (if x-cnd8044
                                                                                                                    (letrec ((x-cnd8045
                                                                                                                              (letrec ((x8047
                                                                                                                                        (car
                                                                                                                                         a))
                                                                                                                                       (x8046
                                                                                                                                        (car
                                                                                                                                         b)))
                                                                                                                                (equal?
                                                                                                                                 x8047
                                                                                                                                 x8046))))
                                                                                                                      (if x-cnd8045
                                                                                                                        (letrec ((x8049
                                                                                                                                  (cdr
                                                                                                                                   a))
                                                                                                                                 (x8048
                                                                                                                                  (cdr
                                                                                                                                   b)))
                                                                                                                          (equal?
                                                                                                                           x8049
                                                                                                                           x8048))
                                                                                                                        #f))
                                                                                                                    #f))
                                                                                                                #f))))
                                                                                                    (letrec ((g8050
                                                                                                              (if val7251
                                                                                                                val7251
                                                                                                                (letrec ((x-cnd8051
                                                                                                                          (vector?
                                                                                                                           a)))
                                                                                                                  (if x-cnd8051
                                                                                                                    (letrec ((x-cnd8052
                                                                                                                              (vector?
                                                                                                                               b)))
                                                                                                                      (if x-cnd8052
                                                                                                                        (letrec ((n
                                                                                                                                  (vector-length
                                                                                                                                   a)))
                                                                                                                          (letrec ((g8053
                                                                                                                                    (letrec ((x-cnd8054
                                                                                                                                              (letrec ((x8055
                                                                                                                                                        (vector-length
                                                                                                                                                         b)))
                                                                                                                                                (=
                                                                                                                                                 x8055
                                                                                                                                                 n))))
                                                                                                                                      (if x-cnd8054
                                                                                                                                        (letrec ((loop
                                                                                                                                                  (lambda (i)
                                                                                                                                                    (letrec ((g8056
                                                                                                                                                              (letrec ((val7252
                                                                                                                                                                        (=
                                                                                                                                                                         i
                                                                                                                                                                         n)))
                                                                                                                                                                (letrec ((g8057
                                                                                                                                                                          (if val7252
                                                                                                                                                                            val7252
                                                                                                                                                                            (letrec ((x-cnd8058
                                                                                                                                                                                      (letrec ((x8060
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 a
                                                                                                                                                                                                 i))
                                                                                                                                                                                               (x8059
                                                                                                                                                                                                (vector-ref
                                                                                                                                                                                                 b
                                                                                                                                                                                                 i)))
                                                                                                                                                                                        (equal?
                                                                                                                                                                                         x8060
                                                                                                                                                                                         x8059))))
                                                                                                                                                                              (if x-cnd8058
                                                                                                                                                                                (letrec ((x8061
                                                                                                                                                                                          (+
                                                                                                                                                                                           i
                                                                                                                                                                                           1)))
                                                                                                                                                                                  (loop
                                                                                                                                                                                   x8061))
                                                                                                                                                                                #f)))))
                                                                                                                                                                  g8057))))
                                                                                                                                                      g8056))))
                                                                                                                                          (letrec ((g8062
                                                                                                                                                    (loop
                                                                                                                                                     0)))
                                                                                                                                            g8062))
                                                                                                                                        #f))))
                                                                                                                            g8053))
                                                                                                                        #f))
                                                                                                                    #f)))))
                                                                                                      g8050)))))
                                                                                        g8042)))))
                                                                          g8039)))))
                                                            g8037))))
                                                g8036)))
                                           (cdaaar
                                            (lambda (x)
                                              (letrec ((g8063
                                                        (letrec ((x8064
                                                                  (letrec ((x8065
                                                                            (letrec ((x8066
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8066))))
                                                                    (car
                                                                     x8065))))
                                                          (cdr x8064))))
                                                g8063)))
                                           (caaddr
                                            (lambda (x)
                                              (letrec ((g8067
                                                        (letrec ((x8068
                                                                  (letrec ((x8069
                                                                            (letrec ((x8070
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8070))))
                                                                    (car
                                                                     x8069))))
                                                          (car x8068))))
                                                g8067)))
                                           (eqv?
                                            (lambda (x y)
                                              (letrec ((g8071 (eq? x y)))
                                                g8071)))
                                           (>=
                                            (lambda (x y)
                                              (letrec ((g8072
                                                        (letrec ((x8074
                                                                  (number? x)))
                                                          (assert x8074)))
                                                       (g8073
                                                        (letrec ((val7253
                                                                  (> x y)))
                                                          (letrec ((g8075
                                                                    (if val7253
                                                                      val7253
                                                                      (letrec ((val7254
                                                                                (=
                                                                                 x
                                                                                 y)))
                                                                        (letrec ((g8076
                                                                                  (if val7254
                                                                                    val7254
                                                                                    #f)))
                                                                          g8076)))))
                                                            g8075))))
                                                g8073)))
                                           (call-with-input-file
                                            (lambda (filename proc)
                                              (letrec ((g8077
                                                        (letrec ((x8080
                                                                  (string?
                                                                   filename)))
                                                          (assert x8080)))
                                                       (g8078
                                                        (letrec ((x8081
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8081)))
                                                       (g8079
                                                        (letrec ((input-port
                                                                  (open-input-file
                                                                   filename))
                                                                 (res
                                                                  (proc
                                                                   input-port)))
                                                          (letrec ((g8082
                                                                    (close-input-port
                                                                     input-port))
                                                                   (g8083 res))
                                                            g8083))))
                                                g8079)))
                                           (ref
                                            (lambda (x)
                                              (letrec ((g8084 (cons x '())))
                                                g8084)))
                                           (char>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8085
                                                        (letrec ((x8088
                                                                  (char? c1)))
                                                          (assert x8088)))
                                                       (g8086
                                                        (letrec ((x8089
                                                                  (char? c2)))
                                                          (assert x8089)))
                                                       (g8087
                                                        (letrec ((val7255
                                                                  (char>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8090
                                                                    (if val7255
                                                                      val7255
                                                                      (char=?
                                                                       c1
                                                                       c2))))
                                                            g8090))))
                                                g8087)))
                                           (cdaar
                                            (lambda (x)
                                              (letrec ((g8091
                                                        (letrec ((x8092
                                                                  (letrec ((x8093
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8093))))
                                                          (cdr x8092))))
                                                g8091)))
                                           (cdaddr
                                            (lambda (x)
                                              (letrec ((g8094
                                                        (letrec ((x8095
                                                                  (letrec ((x8096
                                                                            (letrec ((x8097
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8097))))
                                                                    (car
                                                                     x8096))))
                                                          (cdr x8095))))
                                                g8094)))
                                           (__toplevel_cdr cdr)
                                           (cadar
                                            (lambda (x)
                                              (letrec ((g8098
                                                        (letrec ((x8099
                                                                  (letrec ((x8100
                                                                            (car
                                                                             x)))
                                                                    (cdr
                                                                     x8100))))
                                                          (car x8099))))
                                                g8098)))
                                           (caadr
                                            (lambda (x)
                                              (letrec ((g8101
                                                        (letrec ((x8102
                                                                  (letrec ((x8103
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8103))))
                                                          (car x8102))))
                                                g8101)))
                                           (char-ci>?
                                            (lambda (c1 c2)
                                              (letrec ((g8104
                                                        (letrec ((x8107
                                                                  (char? c1)))
                                                          (assert x8107)))
                                                       (g8105
                                                        (letrec ((x8108
                                                                  (char? c2)))
                                                          (assert x8108)))
                                                       (g8106
                                                        (letrec ((x8109
                                                                  (char-ci<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8109))))
                                                g8106)))
                                           (__toplevel_set-cdr! set-cdr!)
                                           (caaaar
                                            (lambda (x)
                                              (letrec ((g8110
                                                        (letrec ((x8111
                                                                  (letrec ((x8112
                                                                            (letrec ((x8113
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8113))))
                                                                    (car
                                                                     x8112))))
                                                          (car x8111))))
                                                g8110)))
                                           (negative?
                                            (lambda (x)
                                              (letrec ((g8114
                                                        (letrec ((x8116
                                                                  (number? x)))
                                                          (assert x8116)))
                                                       (g8115 (< x 0)))
                                                g8115)))
                                           (memv
                                            (lambda (e l)
                                              (letrec ((g8117 (memq e l)))
                                                g8117)))
                                           (caaar
                                            (lambda (x)
                                              (letrec ((g8118
                                                        (letrec ((x8119
                                                                  (letrec ((x8120
                                                                            (car
                                                                             x)))
                                                                    (car
                                                                     x8120))))
                                                          (car x8119))))
                                                g8118)))
                                           (debug
                                            (lambda (e)
                                              (letrec ((g8121 '())) g8121)))
                                           (reverse
                                            (lambda (l)
                                              (letrec ((g8122
                                                        (letrec ((x8124
                                                                  (list? l)))
                                                          (assert x8124)))
                                                       (g8123
                                                        (letrec ((x-cnd8125
                                                                  (null? l)))
                                                          (if x-cnd8125
                                                            '()
                                                            (letrec ((x8128
                                                                      (letrec ((x8129
                                                                                (cdr
                                                                                 l)))
                                                                        (reverse
                                                                         x8129)))
                                                                     (x8126
                                                                      (letrec ((x8127
                                                                                (car
                                                                                 l)))
                                                                        (list
                                                                         x8127))))
                                                              (append
                                                               x8128
                                                               x8126))))))
                                                g8123)))
                                           (caaadr
                                            (lambda (x)
                                              (letrec ((g8130
                                                        (letrec ((x8131
                                                                  (letrec ((x8132
                                                                            (letrec ((x8133
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8133))))
                                                                    (car
                                                                     x8132))))
                                                          (car x8131))))
                                                g8130)))
                                           (cddadr
                                            (lambda (x)
                                              (letrec ((g8134
                                                        (letrec ((x8135
                                                                  (letrec ((x8136
                                                                            (letrec ((x8137
                                                                                      (cdr
                                                                                       x)))
                                                                              (car
                                                                               x8137))))
                                                                    (cdr
                                                                     x8136))))
                                                          (cdr x8135))))
                                                g8134)))
                                           (odd?
                                            (lambda (x)
                                              (letrec ((g8138
                                                        (letrec ((x8140
                                                                  (number? x)))
                                                          (assert x8140)))
                                                       (g8139
                                                        (letrec ((x8141
                                                                  (modulo
                                                                   x
                                                                   2)))
                                                          (= 1 x8141))))
                                                g8139)))
                                           (caadar
                                            (lambda (x)
                                              (letrec ((g8142
                                                        (letrec ((x8143
                                                                  (letrec ((x8144
                                                                            (letrec ((x8145
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8145))))
                                                                    (car
                                                                     x8144))))
                                                          (car x8143))))
                                                g8142)))
                                           (apply
                                            (lambda (proc args)
                                              (letrec ((g8146
                                                        (letrec ((x8149
                                                                  (procedure?
                                                                   proc)))
                                                          (assert x8149)))
                                                       (g8147
                                                        (letrec ((x8150
                                                                  (list?
                                                                   args)))
                                                          (assert x8150)))
                                                       (g8148
                                                        (letrec ((x-cnd8151
                                                                  (null?
                                                                   args)))
                                                          (if x-cnd8151
                                                            (letrec ((g8152
                                                                      (proc)))
                                                              g8152)
                                                            (letrec ((x-cnd8153
                                                                      (letrec ((x8154
                                                                                (cdr
                                                                                 args)))
                                                                        (null?
                                                                         x8154))))
                                                              (if x-cnd8153
                                                                (letrec ((g8155
                                                                          (letrec ((x8156
                                                                                    (car
                                                                                     args)))
                                                                            (proc
                                                                             x8156))))
                                                                  g8155)
                                                                (letrec ((x-cnd8157
                                                                          (letrec ((x8158
                                                                                    (cddr
                                                                                     args)))
                                                                            (null?
                                                                             x8158))))
                                                                  (if x-cnd8157
                                                                    (letrec ((g8159
                                                                              (letrec ((x8161
                                                                                        (car
                                                                                         args))
                                                                                       (x8160
                                                                                        (cadr
                                                                                         args)))
                                                                                (proc
                                                                                 x8161
                                                                                 x8160))))
                                                                      g8159)
                                                                    (letrec ((x-cnd8162
                                                                              (letrec ((x8163
                                                                                        (cdddr
                                                                                         args)))
                                                                                (null?
                                                                                 x8163))))
                                                                      (if x-cnd8162
                                                                        (letrec ((g8164
                                                                                  (letrec ((x8167
                                                                                            (car
                                                                                             args))
                                                                                           (x8166
                                                                                            (cadr
                                                                                             args))
                                                                                           (x8165
                                                                                            (caddr
                                                                                             args)))
                                                                                    (proc
                                                                                     x8167
                                                                                     x8166
                                                                                     x8165))))
                                                                          g8164)
                                                                        (letrec ((x-cnd8168
                                                                                  (letrec ((x8169
                                                                                            (cddddr
                                                                                             args)))
                                                                                    (null?
                                                                                     x8169))))
                                                                          (if x-cnd8168
                                                                            (letrec ((g8170
                                                                                      (letrec ((x8174
                                                                                                (car
                                                                                                 args))
                                                                                               (x8173
                                                                                                (cadr
                                                                                                 args))
                                                                                               (x8172
                                                                                                (caddr
                                                                                                 args))
                                                                                               (x8171
                                                                                                (cadddr
                                                                                                 args)))
                                                                                        (proc
                                                                                         x8174
                                                                                         x8173
                                                                                         x8172
                                                                                         x8171))))
                                                                              g8170)
                                                                            (letrec ((x-cnd8175
                                                                                      (letrec ((x8176
                                                                                                (letrec ((x8177
                                                                                                          (cddddr
                                                                                                           args)))
                                                                                                  (cdr
                                                                                                   x8177))))
                                                                                        (null?
                                                                                         x8176))))
                                                                              (if x-cnd8175
                                                                                (letrec ((g8178
                                                                                          (letrec ((x8184
                                                                                                    (car
                                                                                                     args))
                                                                                                   (x8183
                                                                                                    (cadr
                                                                                                     args))
                                                                                                   (x8182
                                                                                                    (caddr
                                                                                                     args))
                                                                                                   (x8181
                                                                                                    (cadddr
                                                                                                     args))
                                                                                                   (x8179
                                                                                                    (letrec ((x8180
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (car
                                                                                                       x8180))))
                                                                                            (proc
                                                                                             x8184
                                                                                             x8183
                                                                                             x8182
                                                                                             x8181
                                                                                             x8179))))
                                                                                  g8178)
                                                                                (letrec ((x-cnd8185
                                                                                          (letrec ((x8186
                                                                                                    (letrec ((x8187
                                                                                                              (cddddr
                                                                                                               args)))
                                                                                                      (cddr
                                                                                                       x8187))))
                                                                                            (null?
                                                                                             x8186))))
                                                                                  (if x-cnd8185
                                                                                    (letrec ((g8188
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
                                                                                                           x8192)))
                                                                                                       (x8189
                                                                                                        (letrec ((x8190
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cadr
                                                                                                           x8190))))
                                                                                                (proc
                                                                                                 x8196
                                                                                                 x8195
                                                                                                 x8194
                                                                                                 x8193
                                                                                                 x8191
                                                                                                 x8189))))
                                                                                      g8188)
                                                                                    (letrec ((x-cnd8197
                                                                                              (letrec ((x8198
                                                                                                        (letrec ((x8199
                                                                                                                  (cddddr
                                                                                                                   args)))
                                                                                                          (cdddr
                                                                                                           x8199))))
                                                                                                (null?
                                                                                                 x8198))))
                                                                                      (if x-cnd8197
                                                                                        (letrec ((g8200
                                                                                                  (letrec ((x8210
                                                                                                            (car
                                                                                                             args))
                                                                                                           (x8209
                                                                                                            (cadr
                                                                                                             args))
                                                                                                           (x8208
                                                                                                            (caddr
                                                                                                             args))
                                                                                                           (x8207
                                                                                                            (cadddr
                                                                                                             args))
                                                                                                           (x8205
                                                                                                            (letrec ((x8206
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (car
                                                                                                               x8206)))
                                                                                                           (x8203
                                                                                                            (letrec ((x8204
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (cadr
                                                                                                               x8204)))
                                                                                                           (x8201
                                                                                                            (letrec ((x8202
                                                                                                                      (cddddr
                                                                                                                       args)))
                                                                                                              (caddr
                                                                                                               x8202))))
                                                                                                    (proc
                                                                                                     x8210
                                                                                                     x8209
                                                                                                     x8208
                                                                                                     x8207
                                                                                                     x8205
                                                                                                     x8203
                                                                                                     x8201))))
                                                                                          g8200)
                                                                                        (letrec ((g8211
                                                                                                  (error
                                                                                                   "Unsupported call.")))
                                                                                          g8211)))))))))))))))))))
                                                g8148)))
                                           (member
                                            (lambda (e l)
                                              (letrec ((g8212
                                                        (letrec ((x8214
                                                                  (list? l)))
                                                          (assert x8214)))
                                                       (g8213
                                                        (letrec ((x-cnd8215
                                                                  (null? l)))
                                                          (if x-cnd8215
                                                            #f
                                                            (letrec ((x-cnd8216
                                                                      (letrec ((x8217
                                                                                (car
                                                                                 l)))
                                                                        (equal?
                                                                         x8217
                                                                         e))))
                                                              (if x-cnd8216
                                                                l
                                                                (letrec ((x8218
                                                                          (cdr
                                                                           l)))
                                                                  (member
                                                                   e
                                                                   x8218))))))))
                                                g8213)))
                                           (cddddr
                                            (lambda (x)
                                              (letrec ((g8219
                                                        (letrec ((x8220
                                                                  (letrec ((x8221
                                                                            (letrec ((x8222
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8222))))
                                                                    (cdr
                                                                     x8221))))
                                                          (cdr x8220))))
                                                g8219)))
                                           (cadddr
                                            (lambda (x)
                                              (letrec ((g8223
                                                        (letrec ((x8224
                                                                  (letrec ((x8225
                                                                            (letrec ((x8226
                                                                                      (cdr
                                                                                       x)))
                                                                              (cdr
                                                                               x8226))))
                                                                    (cdr
                                                                     x8225))))
                                                          (car x8224))))
                                                g8223)))
                                           (int-top
                                            (lambda ()
                                              (letrec ((g8227 (random 42)))
                                                g8227)))
                                           (zero?
                                            (lambda (x)
                                              (letrec ((g8228
                                                        (letrec ((x8230
                                                                  (number? x)))
                                                          (assert x8230)))
                                                       (g8229 (= x 0)))
                                                g8229)))
                                           (string>=?
                                            (lambda (s1 s2)
                                              (letrec ((g8231
                                                        (letrec ((val7256
                                                                  (string>?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8232
                                                                    (if val7256
                                                                      val7256
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8232))))
                                                g8231)))
                                           (cadr
                                            (lambda (x)
                                              (letrec ((g8233
                                                        (letrec ((x8234
                                                                  (cdr x)))
                                                          (car x8234))))
                                                g8233)))
                                           (__toplevel_car car)
                                           (list?
                                            (lambda (l)
                                              (letrec ((g8235
                                                        (letrec ((val7257
                                                                  (letrec ((x-cnd8236
                                                                            (pair?
                                                                             l)))
                                                                    (if x-cnd8236
                                                                      (letrec ((x8237
                                                                                (cdr
                                                                                 l)))
                                                                        (list?
                                                                         x8237))
                                                                      #f))))
                                                          (letrec ((g8238
                                                                    (if val7257
                                                                      val7257
                                                                      (null?
                                                                       l))))
                                                            g8238))))
                                                g8235)))
                                           (cddaar
                                            (lambda (x)
                                              (letrec ((g8239
                                                        (letrec ((x8240
                                                                  (letrec ((x8241
                                                                            (letrec ((x8242
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8242))))
                                                                    (cdr
                                                                     x8241))))
                                                          (cdr x8240))))
                                                g8239)))
                                           (char-numeric?
                                            (lambda (c)
                                              (letrec ((g8243
                                                        (letrec ((x-cnd8244
                                                                  (letrec ((x8245
                                                                            #\0))
                                                                    (char<=?
                                                                     x8245
                                                                     c))))
                                                          (if x-cnd8244
                                                            (letrec ((x8246
                                                                      #\9))
                                                              (char<=?
                                                               c
                                                               x8246))
                                                            #f))))
                                                g8243)))
                                           (__toplevel_cons cons)
                                           (assv
                                            (lambda (k l)
                                              (letrec ((g8247
                                                        (letrec ((x8249
                                                                  (list? l)))
                                                          (assert x8249)))
                                                       (g8248
                                                        (letrec ((x-cnd8250
                                                                  (null? l)))
                                                          (if x-cnd8250
                                                            #f
                                                            (letrec ((x-cnd8251
                                                                      (letrec ((x8252
                                                                                (caar
                                                                                 l)))
                                                                        (eqv?
                                                                         x8252
                                                                         k))))
                                                              (if x-cnd8251
                                                                (car l)
                                                                (letrec ((x8253
                                                                          (cdr
                                                                           l)))
                                                                  (assq
                                                                   k
                                                                   x8253))))))))
                                                g8248)))
                                           (not
                                            (lambda (x)
                                              (letrec ((g8254 (if x #f #t)))
                                                g8254)))
                                           (__toplevel_append
                                            (lambda (l1 l2)
                                              (letrec ((g8255 (append l1 l2)))
                                                g8255)))
                                           (memq
                                            (lambda (e l)
                                              (letrec ((g8256
                                                        (letrec ((x8258
                                                                  (list? l)))
                                                          (assert x8258)))
                                                       (g8257
                                                        (letrec ((x-cnd8259
                                                                  (null? l)))
                                                          (if x-cnd8259
                                                            #f
                                                            (letrec ((x-cnd8260
                                                                      (letrec ((x8261
                                                                                (car
                                                                                 l)))
                                                                        (eq?
                                                                         x8261
                                                                         e))))
                                                              (if x-cnd8260
                                                                l
                                                                (letrec ((x8262
                                                                          (cdr
                                                                           l)))
                                                                  (memq
                                                                   e
                                                                   x8262))))))))
                                                g8257)))
                                           (cadaar
                                            (lambda (x)
                                              (letrec ((g8263
                                                        (letrec ((x8264
                                                                  (letrec ((x8265
                                                                            (letrec ((x8266
                                                                                      (car
                                                                                       x)))
                                                                              (car
                                                                               x8266))))
                                                                    (cdr
                                                                     x8265))))
                                                          (car x8264))))
                                                g8263)))
                                           (length
                                            (lambda (l)
                                              (letrec ((g8267
                                                        (letrec ((x8269
                                                                  (list? l)))
                                                          (assert x8269)))
                                                       (g8268
                                                        (letrec ((rec
                                                                  (lambda (l)
                                                                    (letrec ((g8270
                                                                              (letrec ((x-cnd8271
                                                                                        (null?
                                                                                         l)))
                                                                                (if x-cnd8271
                                                                                  0
                                                                                  (letrec ((x8272
                                                                                            (letrec ((x8273
                                                                                                      (cdr
                                                                                                       l)))
                                                                                              (rec
                                                                                               x8273))))
                                                                                    (+
                                                                                     1
                                                                                     x8272))))))
                                                                      g8270))))
                                                          (letrec ((g8274
                                                                    (rec l)))
                                                            g8274))))
                                                g8268)))
                                           (char-ci<=?
                                            (lambda (c1 c2)
                                              (letrec ((g8275
                                                        (letrec ((x8278
                                                                  (char? c1)))
                                                          (assert x8278)))
                                                       (g8276
                                                        (letrec ((x8279
                                                                  (char? c2)))
                                                          (assert x8279)))
                                                       (g8277
                                                        (letrec ((val7258
                                                                  (char-ci<?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8280
                                                                    (if val7258
                                                                      val7258
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8280))))
                                                g8277)))
                                           (string>?
                                            (lambda (s1 s2)
                                              (letrec ((g8281
                                                        (letrec ((x8282
                                                                  (string<=?
                                                                   s1
                                                                   s2)))
                                                          (not x8282))))
                                                g8281)))
                                           (cdadr
                                            (lambda (x)
                                              (letrec ((g8283
                                                        (letrec ((x8284
                                                                  (letrec ((x8285
                                                                            (cdr
                                                                             x)))
                                                                    (car
                                                                     x8285))))
                                                          (cdr x8284))))
                                                g8283)))
                                           (assoc
                                            (lambda (k l)
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
                                                                                (caar
                                                                                 l)))
                                                                        (equal?
                                                                         x8291
                                                                         k))))
                                                              (if x-cnd8290
                                                                (car l)
                                                                (letrec ((x8292
                                                                          (cdr
                                                                           l)))
                                                                  (assoc
                                                                   k
                                                                   x8292))))))))
                                                g8287)))
                                           (caar
                                            (lambda (x)
                                              (letrec ((g8293
                                                        (letrec ((x8294
                                                                  (car x)))
                                                          (car x8294))))
                                                g8293)))
                                           (char>?
                                            (lambda (c1 c2)
                                              (letrec ((g8295
                                                        (letrec ((x8298
                                                                  (char? c1)))
                                                          (assert x8298)))
                                                       (g8296
                                                        (letrec ((x8299
                                                                  (char? c2)))
                                                          (assert x8299)))
                                                       (g8297
                                                        (letrec ((x8300
                                                                  (char<=?
                                                                   c1
                                                                   c2)))
                                                          (not x8300))))
                                                g8297)))
                                           (string<=?
                                            (lambda (s1 s2)
                                              (letrec ((g8301
                                                        (letrec ((val7259
                                                                  (string<?
                                                                   s1
                                                                   s2)))
                                                          (letrec ((g8302
                                                                    (if val7259
                                                                      val7259
                                                                      (string=?
                                                                       s1
                                                                       s2))))
                                                            g8302))))
                                                g8301)))
                                           (for-each
                                            (lambda (f l)
                                              (letrec ((g8303
                                                        (letrec ((x8306
                                                                  (procedure?
                                                                   f)))
                                                          (assert x8306)))
                                                       (g8304
                                                        (letrec ((x8307
                                                                  (list? l)))
                                                          (assert x8307)))
                                                       (g8305
                                                        (letrec ((x-cnd8308
                                                                  (null? l)))
                                                          (if x-cnd8308
                                                            #t
                                                            (letrec ((x-cnd8309
                                                                      (pair?
                                                                       l)))
                                                              (if x-cnd8309
                                                                (letrec ((g8310
                                                                          (letrec ((x8312
                                                                                    (car
                                                                                     l)))
                                                                            (f
                                                                             x8312)))
                                                                         (g8311
                                                                          (letrec ((x8313
                                                                                    (cdr
                                                                                     l)))
                                                                            (for-each
                                                                             f
                                                                             x8313))))
                                                                  g8311)
                                                                '()))))))
                                                g8305)))
                                           (abs
                                            (lambda (x)
                                              (letrec ((g8314
                                                        (letrec ((x8316
                                                                  (number? x)))
                                                          (assert x8316)))
                                                       (g8315
                                                        (letrec ((x-cnd8317
                                                                  (< x 0)))
                                                          (if x-cnd8317
                                                            (- 0 x)
                                                            x))))
                                                g8315)))
                                           (char-ci>=?
                                            (lambda (c1 c2)
                                              (letrec ((g8318
                                                        (letrec ((x8321
                                                                  (char? c1)))
                                                          (assert x8321)))
                                                       (g8319
                                                        (letrec ((x8322
                                                                  (char? c2)))
                                                          (assert x8322)))
                                                       (g8320
                                                        (letrec ((val7260
                                                                  (char-ci>?
                                                                   c1
                                                                   c2)))
                                                          (letrec ((g8323
                                                                    (if val7260
                                                                      val7260
                                                                      (char-ci=?
                                                                       c1
                                                                       c2))))
                                                            g8323))))
                                                g8320)))
                                           (caddar
                                            (lambda (x)
                                              (letrec ((g8324
                                                        (letrec ((x8325
                                                                  (letrec ((x8326
                                                                            (letrec ((x8327
                                                                                      (car
                                                                                       x)))
                                                                              (cdr
                                                                               x8327))))
                                                                    (cdr
                                                                     x8326))))
                                                          (car x8325))))
                                                g8324)))
                                           (newline
                                            (lambda ()
                                              (letrec ((g8328 #f)) g8328)))
                                           (lcm
                                            (lambda (m n)
                                              (letrec ((g8329
                                                        (letrec ((x8331
                                                                  (letrec ((x8332
                                                                            (*
                                                                             m
                                                                             n)))
                                                                    (abs
                                                                     x8332)))
                                                                 (x8330
                                                                  (gcd m n)))
                                                          (/ x8331 x8330))))
                                                g8329)))
                                           (deref car)
                                           (>
                                            (lambda (x y)
                                              (letrec ((g8333
                                                        (letrec ((x8335
                                                                  (number? x)))
                                                          (assert x8335)))
                                                       (g8334
                                                        (letrec ((x8336
                                                                  (<= x y)))
                                                          (not x8336))))
                                                g8334)))
                                           (list-ref
                                            (lambda (l index)
                                              (letrec ((g8337
                                                        (letrec ((x8341
                                                                  (list? l)))
                                                          (assert x8341)))
                                                       (g8338
                                                        (letrec ((x8342
                                                                  (number?
                                                                   index)))
                                                          (assert x8342)))
                                                       (g8339
                                                        (letrec ((x8343
                                                                  (letrec ((x8344
                                                                            (length
                                                                             l)))
                                                                    (<
                                                                     index
                                                                     x8344))))
                                                          (assert x8343)))
                                                       (g8340
                                                        (letrec ((x-cnd8345
                                                                  (= index 0)))
                                                          (if x-cnd8345
                                                            (car l)
                                                            (letrec ((x8347
                                                                      (cdr l))
                                                                     (x8346
                                                                      (-
                                                                       index
                                                                       1)))
                                                              (list-ref
                                                               x8347
                                                               x8346))))))
                                                g8340)))
                                           (gcd
                                            (lambda (a b)
                                              (letrec ((g8348
                                                        (letrec ((x-cnd8349
                                                                  (= b 0)))
                                                          (if x-cnd8349
                                                            a
                                                            (letrec ((x8350
                                                                      (modulo
                                                                       a
                                                                       b)))
                                                              (gcd
                                                               b
                                                               x8350))))))
                                                g8348)))
                                           (block
                                            (lambda (x7748 y7749 color7750)
                                              (letrec ((g8351
                                                        (letrec ((x8352
                                                                  (letrec ((x8353
                                                                            (letrec ((x8354
                                                                                      (orig-cons
                                                                                       color7750
                                                                                       '())))
                                                                              (orig-cons
                                                                               y7749
                                                                               x8354))))
                                                                    (orig-cons
                                                                     x7748
                                                                     x8353))))
                                                          (orig-cons
                                                           'block
                                                           x8352))))
                                                g8351)))
                                           (block?
                                            (lambda (block7747)
                                              (letrec ((g8355
                                                        (letrec ((x8356
                                                                  (car
                                                                   block7747)))
                                                          (eq? x8356 'block))))
                                                g8355)))
                                           (block-x
                                            (lambda (block)
                                              (letrec ((g8357
                                                        (letrec ((x8358
                                                                  (orig-cdr
                                                                   block)))
                                                          (orig-car x8358))))
                                                g8357)))
                                           (block-y
                                            (lambda (block)
                                              (letrec ((g8359
                                                        (letrec ((x8360
                                                                  (letrec ((x8361
                                                                            (orig-cdr
                                                                             block)))
                                                                    (orig-cdr
                                                                     x8361))))
                                                          (orig-car x8360))))
                                                g8359)))
                                           (block-color
                                            (lambda (block)
                                              (letrec ((g8362
                                                        (letrec ((x8363
                                                                  (letrec ((x8364
                                                                            (letrec ((x8365
                                                                                      (orig-cdr
                                                                                       block)))
                                                                              (orig-cdr
                                                                               x8365))))
                                                                    (orig-cdr
                                                                     x8364))))
                                                          (orig-car x8363))))
                                                g8362)))
                                           (tetra
                                            (lambda (center7755 blocks7756)
                                              (letrec ((g8366
                                                        (letrec ((x8367
                                                                  (letrec ((x8368
                                                                            (orig-cons
                                                                             blocks7756
                                                                             '())))
                                                                    (orig-cons
                                                                     center7755
                                                                     x8368))))
                                                          (orig-cons
                                                           'tetra
                                                           x8367))))
                                                g8366)))
                                           (tetra?
                                            (lambda (tetra7754)
                                              (letrec ((g8369
                                                        (letrec ((x8370
                                                                  (car
                                                                   tetra7754)))
                                                          (eq? x8370 'tetra))))
                                                g8369)))
                                           (tetra-center
                                            (lambda (tetra)
                                              (letrec ((g8371
                                                        (letrec ((x8372
                                                                  (orig-cdr
                                                                   tetra)))
                                                          (orig-car x8372))))
                                                g8371)))
                                           (tetra-blocks
                                            (lambda (tetra)
                                              (letrec ((g8373
                                                        (letrec ((x8374
                                                                  (letrec ((x8375
                                                                            (orig-cdr
                                                                             tetra)))
                                                                    (orig-cdr
                                                                     x8375))))
                                                          (orig-car x8374))))
                                                g8373)))
                                           (world
                                            (lambda (tetra7760 blocks7761)
                                              (letrec ((g8376
                                                        (letrec ((x8377
                                                                  (letrec ((x8378
                                                                            (orig-cons
                                                                             blocks7761
                                                                             '())))
                                                                    (orig-cons
                                                                     tetra7760
                                                                     x8378))))
                                                          (orig-cons
                                                           'world
                                                           x8377))))
                                                g8376)))
                                           (world?
                                            (lambda (world7759)
                                              (letrec ((g8379
                                                        (letrec ((x8380
                                                                  (car
                                                                   world7759)))
                                                          (eq? x8380 'world))))
                                                g8379)))
                                           (world-tetra
                                            (lambda (world)
                                              (letrec ((g8381
                                                        (letrec ((x8382
                                                                  (orig-cdr
                                                                   world)))
                                                          (orig-car x8382))))
                                                g8381)))
                                           (world-blocks
                                            (lambda (world)
                                              (letrec ((g8383
                                                        (letrec ((x8384
                                                                  (letrec ((x8385
                                                                            (orig-cdr
                                                                             world)))
                                                                    (orig-cdr
                                                                     x8385))))
                                                          (orig-car x8384))))
                                                g8383)))
                                           (posn
                                            (lambda (x7765 y7766)
                                              (letrec ((g8386
                                                        (letrec ((x8387
                                                                  (letrec ((x8388
                                                                            (orig-cons
                                                                             y7766
                                                                             '())))
                                                                    (orig-cons
                                                                     x7765
                                                                     x8388))))
                                                          (orig-cons
                                                           'posn
                                                           x8387))))
                                                g8386)))
                                           (posn?
                                            (lambda (posn7764)
                                              (letrec ((g8389
                                                        (letrec ((x8390
                                                                  (car
                                                                   posn7764)))
                                                          (eq? x8390 'posn))))
                                                g8389)))
                                           (posn-x
                                            (lambda (posn)
                                              (letrec ((g8391
                                                        (letrec ((x8392
                                                                  (orig-cdr
                                                                   posn)))
                                                          (orig-car x8392))))
                                                g8391)))
                                           (posn-y
                                            (lambda (posn)
                                              (letrec ((g8393
                                                        (letrec ((x8394
                                                                  (letrec ((x8395
                                                                            (orig-cdr
                                                                             posn)))
                                                                    (orig-cdr
                                                                     x8395))))
                                                          (orig-car x8394))))
                                                g8393)))
                                           (COLOR/C symbol?/c)
                                           (POSN/C
                                            (lambda (j7396 k7397 v7395)
                                              (letrec ((g8396
                                                        (letrec ((checked7398
                                                                  (letrec ((x8397
                                                                            (letrec ((x8398
                                                                                      (orig-cdr
                                                                                       v7395)))
                                                                              (orig-car
                                                                               x8398))))
                                                                    (real?/c
                                                                     j7396
                                                                     k7397
                                                                     x8397))))
                                                          (letrec ((g8399
                                                                    (letrec ((checked7399
                                                                              (letrec ((x8400
                                                                                        (letrec ((x8401
                                                                                                  (letrec ((x8402
                                                                                                            (orig-cdr
                                                                                                             v7395)))
                                                                                                    (orig-cdr
                                                                                                     x8402))))
                                                                                          (orig-car
                                                                                           x8401))))
                                                                                (real?/c
                                                                                 j7396
                                                                                 k7397
                                                                                 x8400))))
                                                                      (letrec ((g8403
                                                                                (letrec ((x8404
                                                                                          (letrec ((x8405
                                                                                                    (cons
                                                                                                     checked7399
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7398
                                                                                             x8405))))
                                                                                  (cons
                                                                                   posn
                                                                                   x8404))))
                                                                        g8403))))
                                                            g8399))))
                                                g8396)))
                                           (BLOCK/C
                                            (lambda (j7402 k7403 v7401)
                                              (letrec ((g8406
                                                        (letrec ((checked7404
                                                                  (letrec ((x8407
                                                                            (letrec ((x8408
                                                                                      (orig-cdr
                                                                                       v7401)))
                                                                              (orig-car
                                                                               x8408))))
                                                                    (real?/c
                                                                     j7402
                                                                     k7403
                                                                     x8407))))
                                                          (letrec ((g8409
                                                                    (letrec ((checked7405
                                                                              (letrec ((x8410
                                                                                        (letrec ((x8411
                                                                                                  (letrec ((x8412
                                                                                                            (orig-cdr
                                                                                                             v7401)))
                                                                                                    (orig-cdr
                                                                                                     x8412))))
                                                                                          (orig-car
                                                                                           x8411))))
                                                                                (real?/c
                                                                                 j7402
                                                                                 k7403
                                                                                 x8410))))
                                                                      (letrec ((g8413
                                                                                (letrec ((checked7406
                                                                                          (letrec ((x8414
                                                                                                    (letrec ((x8415
                                                                                                              (letrec ((x8416
                                                                                                                        (letrec ((x8417
                                                                                                                                  (orig-cdr
                                                                                                                                   v7401)))
                                                                                                                          (orig-cdr
                                                                                                                           x8417))))
                                                                                                                (orig-cdr
                                                                                                                 x8416))))
                                                                                                      (orig-car
                                                                                                       x8415))))
                                                                                            (COLOR/C
                                                                                             j7402
                                                                                             k7403
                                                                                             x8414))))
                                                                                  (letrec ((g8418
                                                                                            (letrec ((x8419
                                                                                                      (letrec ((x8420
                                                                                                                (letrec ((x8421
                                                                                                                          (cons
                                                                                                                           checked7406
                                                                                                                           '())))
                                                                                                                  (cons
                                                                                                                   checked7405
                                                                                                                   x8421))))
                                                                                                        (cons
                                                                                                         checked7404
                                                                                                         x8420))))
                                                                                              (cons
                                                                                               block
                                                                                               x8419))))
                                                                                    g8418))))
                                                                        g8413))))
                                                            g8409))))
                                                g8406)))
                                           (BSET/C (listof BLOCK/C))
                                           (TETRA/C
                                            (lambda (j7409 k7410 v7408)
                                              (letrec ((g8422
                                                        (letrec ((checked7411
                                                                  (letrec ((x8423
                                                                            (letrec ((x8424
                                                                                      (orig-cdr
                                                                                       v7408)))
                                                                              (orig-car
                                                                               x8424))))
                                                                    (POSN/C
                                                                     j7409
                                                                     k7410
                                                                     x8423))))
                                                          (letrec ((g8425
                                                                    (letrec ((checked7412
                                                                              (letrec ((x8426
                                                                                        (letrec ((x8427
                                                                                                  (letrec ((x8428
                                                                                                            (orig-cdr
                                                                                                             v7408)))
                                                                                                    (orig-cdr
                                                                                                     x8428))))
                                                                                          (orig-car
                                                                                           x8427))))
                                                                                (BSET/C
                                                                                 j7409
                                                                                 k7410
                                                                                 x8426))))
                                                                      (letrec ((g8429
                                                                                (letrec ((x8430
                                                                                          (letrec ((x8431
                                                                                                    (cons
                                                                                                     checked7412
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7411
                                                                                             x8431))))
                                                                                  (cons
                                                                                   tetra
                                                                                   x8430))))
                                                                        g8429))))
                                                            g8425))))
                                                g8422)))
                                           (WORLD/C
                                            (lambda (j7415 k7416 v7414)
                                              (letrec ((g8432
                                                        (letrec ((checked7417
                                                                  (letrec ((x8433
                                                                            (letrec ((x8434
                                                                                      (orig-cdr
                                                                                       v7414)))
                                                                              (orig-car
                                                                               x8434))))
                                                                    (TETRA/C
                                                                     j7415
                                                                     k7416
                                                                     x8433))))
                                                          (letrec ((g8435
                                                                    (letrec ((checked7418
                                                                              (letrec ((x8436
                                                                                        (letrec ((x8437
                                                                                                  (letrec ((x8438
                                                                                                            (orig-cdr
                                                                                                             v7414)))
                                                                                                    (orig-cdr
                                                                                                     x8438))))
                                                                                          (orig-car
                                                                                           x8437))))
                                                                                (BSET/C
                                                                                 j7415
                                                                                 k7416
                                                                                 x8436))))
                                                                      (letrec ((g8439
                                                                                (letrec ((x8440
                                                                                          (letrec ((x8441
                                                                                                    (cons
                                                                                                     checked7418
                                                                                                     '())))
                                                                                            (cons
                                                                                             checked7417
                                                                                             x8441))))
                                                                                  (cons
                                                                                   world
                                                                                   x8440))))
                                                                        g8439))))
                                                            g8435))))
                                                g8432)))
                                           (posn=?
                                            (lambda (p1 p2)
                                              (letrec ((g8442
                                                        (letrec ((x-cnd8443
                                                                  (letrec ((x8445
                                                                            (posn-x
                                                                             p1))
                                                                           (x8444
                                                                            (posn-x
                                                                             p2)))
                                                                    (=
                                                                     x8445
                                                                     x8444))))
                                                          (if x-cnd8443
                                                            (letrec ((x8447
                                                                      (posn-y
                                                                       p1))
                                                                     (x8446
                                                                      (posn-y
                                                                       p2)))
                                                              (= x8447 x8446))
                                                            #f))))
                                                g8442)))
                                           (block-size 20)
                                           (board-height 20)
                                           (board-width 10)
                                           (block=?
                                            (lambda (b1 b2)
                                              (letrec ((g8448
                                                        (letrec ((x-cnd8449
                                                                  (letrec ((x8451
                                                                            (block-x
                                                                             b1))
                                                                           (x8450
                                                                            (block-x
                                                                             b2)))
                                                                    (=
                                                                     x8451
                                                                     x8450))))
                                                          (if x-cnd8449
                                                            (letrec ((x8453
                                                                      (block-y
                                                                       b1))
                                                                     (x8452
                                                                      (block-y
                                                                       b2)))
                                                              (= x8453 x8452))
                                                            #f))))
                                                g8448)))
                                           (block-move
                                            (lambda (dx dy b)
                                              (letrec ((g8454
                                                        (letrec ((x8458
                                                                  (letrec ((x8459
                                                                            (block-x
                                                                             b)))
                                                                    (+
                                                                     dx
                                                                     x8459)))
                                                                 (x8456
                                                                  (letrec ((x8457
                                                                            (block-y
                                                                             b)))
                                                                    (+
                                                                     dy
                                                                     x8457)))
                                                                 (x8455
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8458
                                                           x8456
                                                           x8455))))
                                                g8454)))
                                           (block-rotate-ccw
                                            (lambda (c b)
                                              (letrec ((g8460
                                                        (letrec ((x8467
                                                                  (letrec ((x8471
                                                                            (posn-x
                                                                             c))
                                                                           (x8468
                                                                            (letrec ((x8470
                                                                                      (posn-y
                                                                                       c))
                                                                                     (x8469
                                                                                      (block-y
                                                                                       b)))
                                                                              (-
                                                                               x8470
                                                                               x8469))))
                                                                    (+
                                                                     x8471
                                                                     x8468)))
                                                                 (x8462
                                                                  (letrec ((x8466
                                                                            (posn-y
                                                                             c))
                                                                           (x8463
                                                                            (letrec ((x8465
                                                                                      (block-x
                                                                                       b))
                                                                                     (x8464
                                                                                      (posn-x
                                                                                       c)))
                                                                              (-
                                                                               x8465
                                                                               x8464))))
                                                                    (+
                                                                     x8466
                                                                     x8463)))
                                                                 (x8461
                                                                  (block-color
                                                                   b)))
                                                          (block
                                                           x8467
                                                           x8462
                                                           x8461))))
                                                g8460)))
                                           (block-rotate-cw
                                            (lambda (c b)
                                              (letrec ((g8472
                                                        (letrec ((x8473
                                                                  (letrec ((x8474
                                                                            (block-rotate-ccw
                                                                             c
                                                                             b)))
                                                                    (block-rotate-ccw
                                                                     c
                                                                     x8474))))
                                                          (block-rotate-ccw
                                                           c
                                                           x8473))))
                                                g8472)))
                                           (ormap
                                            (lambda (p? xs)
                                              (letrec ((g8475
                                                        (letrec ((x-cnd8476
                                                                  (null? xs)))
                                                          (if x-cnd8476
                                                            (letrec ((g8477
                                                                      #f))
                                                              g8477)
                                                            (letrec ((g8478
                                                                      (letrec ((x8481
                                                                                (letrec ((x8482
                                                                                          (car
                                                                                           xs)))
                                                                                  (p?
                                                                                   x8482)))
                                                                               (x8479
                                                                                (letrec ((x8480
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (ormap
                                                                                   p?
                                                                                   x8480))))
                                                                        (or x8481
                                                                            x8479))))
                                                              g8478)))))
                                                g8475)))
                                           (andmap
                                            (lambda (p? xs)
                                              (letrec ((g8483
                                                        (letrec ((x-cnd8484
                                                                  (null? xs)))
                                                          (if x-cnd8484
                                                            (letrec ((g8485
                                                                      #t))
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
                                                                                  (andmap
                                                                                   p?
                                                                                   x8488))))
                                                                        (and x8489
                                                                             x8487))))
                                                              g8486)))))
                                                g8483)))
                                           (filter
                                            (lambda (p? xs)
                                              (letrec ((g8491
                                                        (letrec ((x-cnd8492
                                                                  (null? xs)))
                                                          (if x-cnd8492
                                                            (letrec ((g8493
                                                                      null))
                                                              g8493)
                                                            (letrec ((x-cnd8494
                                                                      (letrec ((x8495
                                                                                (car
                                                                                 xs)))
                                                                        (p?
                                                                         x8495))))
                                                              (if x-cnd8494
                                                                (letrec ((g8496
                                                                          (letrec ((x8499
                                                                                    (car
                                                                                     xs))
                                                                                   (x8497
                                                                                    (letrec ((x8498
                                                                                              (cdr
                                                                                               xs)))
                                                                                      (filter
                                                                                       p?
                                                                                       x8498))))
                                                                            (cons
                                                                             x8499
                                                                             x8497))))
                                                                  g8496)
                                                                (letrec ((g8500
                                                                          (letrec ((x8501
                                                                                    (cdr
                                                                                     xs)))
                                                                            (filter
                                                                             p?
                                                                             x8501))))
                                                                  g8500)))))))
                                                g8491)))
                                           (append
                                            (lambda (l r)
                                              (letrec ((g8502
                                                        (letrec ((x-cnd8503
                                                                  (null? l)))
                                                          (if x-cnd8503
                                                            (letrec ((g8504 r))
                                                              g8504)
                                                            (letrec ((g8505
                                                                      (letrec ((x8508
                                                                                (car
                                                                                 l))
                                                                               (x8506
                                                                                (letrec ((x8507
                                                                                          (cdr
                                                                                           l)))
                                                                                  (append
                                                                                   x8507
                                                                                   r))))
                                                                        (cons
                                                                         x8508
                                                                         x8506))))
                                                              g8505)))))
                                                g8502)))
                                           (foldr
                                            (lambda (f a xs)
                                              (letrec ((g8509
                                                        (letrec ((x-cnd8510
                                                                  (null? xs)))
                                                          (if x-cnd8510
                                                            (letrec ((g8511 a))
                                                              g8511)
                                                            (letrec ((g8512
                                                                      (letrec ((x8515
                                                                                (car
                                                                                 xs))
                                                                               (x8513
                                                                                (letrec ((x8514
                                                                                          (cdr
                                                                                           xs)))
                                                                                  (foldr
                                                                                   f
                                                                                   a
                                                                                   x8514))))
                                                                        (f
                                                                         x8515
                                                                         x8513))))
                                                              g8512)))))
                                                g8509)))
                                           (blocks-contains?
                                            (lambda (bs b)
                                              (letrec ((g8516
                                                        (ormap
                                                         (lambda (c)
                                                           (letrec ((g8517
                                                                     (block=?
                                                                      b
                                                                      c)))
                                                             g8517))
                                                         bs)))
                                                g8516)))
                                           (blocks-subset?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8518
                                                        (andmap
                                                         (lambda (b)
                                                           (letrec ((g8519
                                                                     (blocks-contains?
                                                                      bs2
                                                                      b)))
                                                             g8519))
                                                         bs1)))
                                                g8518)))
                                           (blocks=?
                                            (lambda (bs1 bs2)
                                              (letrec ((g8520
                                                        (letrec ((x-cnd8521
                                                                  (blocks-subset?
                                                                   bs1
                                                                   bs2)))
                                                          (if x-cnd8521
                                                            (blocks-subset?
                                                             bs2
                                                             bs1)
                                                            #f))))
                                                g8520)))
                                           (blocks-intersect
                                            (lambda (bs1 bs2)
                                              (letrec ((g8522
                                                        (filter
                                                         (lambda (b)
                                                           (letrec ((g8523
                                                                     (blocks-contains?
                                                                      bs2
                                                                      b)))
                                                             g8523))
                                                         bs1)))
                                                g8522)))
                                           (blocks-count
                                            (lambda (bs)
                                              (letrec ((g8524 (length bs)))
                                                g8524)))
                                           (blocks-move
                                            (lambda (dx dy bs)
                                              (letrec ((g8525
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8526
                                                                     (block-move
                                                                      dx
                                                                      dy
                                                                      b)))
                                                             g8526))
                                                         bs)))
                                                g8525)))
                                           (blocks-rotate-ccw
                                            (lambda (c bs)
                                              (letrec ((g8527
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8528
                                                                     (block-rotate-ccw
                                                                      c
                                                                      b)))
                                                             g8528))
                                                         bs)))
                                                g8527)))
                                           (blocks-rotate-cw
                                            (lambda (c bs)
                                              (letrec ((g8529
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8530
                                                                     (block-rotate-cw
                                                                      c
                                                                      b)))
                                                             g8530))
                                                         bs)))
                                                g8529)))
                                           (blocks-change-color
                                            (lambda (bs c)
                                              (letrec ((g8531
                                                        (map
                                                         (lambda (b)
                                                           (letrec ((g8532
                                                                     (letrec ((x8534
                                                                               (block-x
                                                                                b))
                                                                              (x8533
                                                                               (block-y
                                                                                b)))
                                                                       (block
                                                                        x8534
                                                                        x8533
                                                                        c))))
                                                             g8532))
                                                         bs)))
                                                g8531)))
                                           (blocks-row
                                            (lambda (bs i)
                                              (letrec ((g8535
                                                        (filter
                                                         (lambda (b)
                                                           (letrec ((g8536
                                                                     (letrec ((x8537
                                                                               (block-y
                                                                                b)))
                                                                       (=
                                                                        i
                                                                        x8537))))
                                                             g8536))
                                                         bs)))
                                                g8535)))
                                           (full-row?
                                            (lambda (bs i)
                                              (letrec ((g8538
                                                        (letrec ((x8539
                                                                  (letrec ((x8540
                                                                            (blocks-row
                                                                             bs
                                                                             i)))
                                                                    (blocks-count
                                                                     x8540))))
                                                          (=
                                                           board-width
                                                           x8539))))
                                                g8538)))
                                           (blocks-overflow?
                                            (lambda (bs)
                                              (letrec ((g8541
                                                        (ormap
                                                         (lambda (b)
                                                           (letrec ((g8542
                                                                     (letrec ((x8543
                                                                               (block-y
                                                                                b)))
                                                                       (<=
                                                                        x8543
                                                                        0))))
                                                             g8542))
                                                         bs)))
                                                g8541)))
                                           (blocks-union
                                            (lambda (bs1 bs2)
                                              (letrec ((g8544
                                                        (foldr
                                                         (lambda (b bs)
                                                           (letrec ((g8545
                                                                     (letrec ((x-cnd8546
                                                                               (blocks-contains?
                                                                                bs
                                                                                b)))
                                                                       (if x-cnd8546
                                                                         (letrec ((g8547
                                                                                   bs))
                                                                           g8547)
                                                                         (letrec ((g8548
                                                                                   (cons
                                                                                    b
                                                                                    bs)))
                                                                           g8548)))))
                                                             g8545))
                                                         bs2
                                                         bs1)))
                                                g8544)))
                                           (blocks-max-y
                                            (lambda (bs)
                                              (letrec ((g8549
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8550
                                                                     (letrec ((x8551
                                                                               (block-y
                                                                                b)))
                                                                       (max
                                                                        x8551
                                                                        n))))
                                                             g8550))
                                                         0
                                                         bs)))
                                                g8549)))
                                           (blocks-min-x
                                            (lambda (bs)
                                              (letrec ((g8552
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8553
                                                                     (letrec ((x8554
                                                                               (block-x
                                                                                b)))
                                                                       (min
                                                                        x8554
                                                                        n))))
                                                             g8553))
                                                         board-width
                                                         bs)))
                                                g8552)))
                                           (blocks-max-x
                                            (lambda (bs)
                                              (letrec ((g8555
                                                        (foldr
                                                         (lambda (b n)
                                                           (letrec ((g8556
                                                                     (letrec ((x8557
                                                                               (block-x
                                                                                b)))
                                                                       (max
                                                                        x8557
                                                                        n))))
                                                             g8556))
                                                         0
                                                         bs)))
                                                g8555)))
                                           (eliminate-full-rows
                                            (lambda (bs)
                                              (letrec ((g8558
                                                        (elim-row
                                                         bs
                                                         board-height
                                                         0)))
                                                g8558)))
                                           (elim-row
                                            (lambda (bs i offset)
                                              (letrec ((g8559
                                                        (letrec ((x-cnd8560
                                                                  (< i 0)))
                                                          (if x-cnd8560
                                                            (letrec ((g8561
                                                                      empty))
                                                              g8561)
                                                            (letrec ((x-cnd8562
                                                                      (full-row?
                                                                       bs
                                                                       i)))
                                                              (if x-cnd8562
                                                                (letrec ((g8563
                                                                          (letrec ((x8565
                                                                                    (sub1
                                                                                     i))
                                                                                   (x8564
                                                                                    (add1
                                                                                     offset)))
                                                                            (elim-row
                                                                             bs
                                                                             x8565
                                                                             x8564))))
                                                                  g8563)
                                                                (letrec ((g8566
                                                                          (letrec ((x8569
                                                                                    (letrec ((x8570
                                                                                              (sub1
                                                                                               i)))
                                                                                      (elim-row
                                                                                       bs
                                                                                       x8570
                                                                                       offset)))
                                                                                   (x8567
                                                                                    (letrec ((x8568
                                                                                              (blocks-row
                                                                                               bs
                                                                                               i)))
                                                                                      (blocks-move
                                                                                       0
                                                                                       offset
                                                                                       x8568))))
                                                                            (blocks-union
                                                                             x8569
                                                                             x8567))))
                                                                  g8566)))))))
                                                g8559)))
                                           (tetra-move
                                            (lambda (dx dy t)
                                              (letrec ((g8571
                                                        (letrec ((x8574
                                                                  (letrec ((x8578
                                                                            (letrec ((x8579
                                                                                      (letrec ((x8580
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-x
                                                                                         x8580))))
                                                                              (+
                                                                               dx
                                                                               x8579)))
                                                                           (x8575
                                                                            (letrec ((x8576
                                                                                      (letrec ((x8577
                                                                                                (tetra-center
                                                                                                 t)))
                                                                                        (posn-y
                                                                                         x8577))))
                                                                              (+
                                                                               dy
                                                                               x8576))))
                                                                    (posn
                                                                     x8578
                                                                     x8575)))
                                                                 (x8572
                                                                  (letrec ((x8573
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-move
                                                                     dx
                                                                     dy
                                                                     x8573))))
                                                          (tetra
                                                           x8574
                                                           x8572))))
                                                g8571)))
                                           (tetra-rotate-ccw
                                            (lambda (t)
                                              (letrec ((g8581
                                                        (letrec ((x8585
                                                                  (tetra-center
                                                                   t))
                                                                 (x8582
                                                                  (letrec ((x8584
                                                                            (tetra-center
                                                                             t))
                                                                           (x8583
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-ccw
                                                                     x8584
                                                                     x8583))))
                                                          (tetra
                                                           x8585
                                                           x8582))))
                                                g8581)))
                                           (tetra-rotate-cw
                                            (lambda (t)
                                              (letrec ((g8586
                                                        (letrec ((x8590
                                                                  (tetra-center
                                                                   t))
                                                                 (x8587
                                                                  (letrec ((x8589
                                                                            (tetra-center
                                                                             t))
                                                                           (x8588
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-rotate-cw
                                                                     x8589
                                                                     x8588))))
                                                          (tetra
                                                           x8590
                                                           x8587))))
                                                g8586)))
                                           (tetra-overlaps-blocks?
                                            (lambda (t bs)
                                              (letrec ((g8591
                                                        (letrec ((x8592
                                                                  (letrec ((x8593
                                                                            (letrec ((x8594
                                                                                      (tetra-blocks
                                                                                       t)))
                                                                              (blocks-intersect
                                                                               x8594
                                                                               bs))))
                                                                    (false?
                                                                     x8593))))
                                                          (false? x8592))))
                                                g8591)))
                                           (tetra-change-color
                                            (lambda (t c)
                                              (letrec ((g8595
                                                        (letrec ((x8598
                                                                  (tetra-center
                                                                   t))
                                                                 (x8596
                                                                  (letrec ((x8597
                                                                            (tetra-blocks
                                                                             t)))
                                                                    (blocks-change-color
                                                                     x8597
                                                                     c))))
                                                          (tetra
                                                           x8598
                                                           x8596))))
                                                g8595)))
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
                                              (letrec ((g8599
                                                        (letrec ((x8600
                                                                  (letrec ((x8606
                                                                            (posn
                                                                             xc
                                                                             yc))
                                                                           (x8601
                                                                            (letrec ((x8605
                                                                                      (block
                                                                                       x1
                                                                                       y1
                                                                                       color))
                                                                                     (x8604
                                                                                      (block
                                                                                       x2
                                                                                       y2
                                                                                       color))
                                                                                     (x8603
                                                                                      (block
                                                                                       x3
                                                                                       y3
                                                                                       color))
                                                                                     (x8602
                                                                                      (block
                                                                                       x4
                                                                                       y4
                                                                                       color)))
                                                                              (list
                                                                               x8605
                                                                               x8604
                                                                               x8603
                                                                               x8602))))
                                                                    (tetra
                                                                     x8606
                                                                     x8601))))
                                                          (tetra-move
                                                           3
                                                           0
                                                           x8600))))
                                                g8599)))
                                           (touchdown
                                            (lambda (w tetras)
                                              (letrec ((g8607
                                                        (letrec ((x8613
                                                                  (list-pick-random
                                                                   tetras))
                                                                 (x8608
                                                                  (letrec ((x8609
                                                                            (letrec ((x8611
                                                                                      (letrec ((x8612
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8612)))
                                                                                     (x8610
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (blocks-union
                                                                               x8611
                                                                               x8610))))
                                                                    (eliminate-full-rows
                                                                     x8609))))
                                                          (world
                                                           x8613
                                                           x8608))))
                                                g8607)))
                                           (world-jump-down
                                            (lambda (w)
                                              (letrec ((g8614
                                                        (letrec ((x-cnd8615
                                                                  (landed? w)))
                                                          (if x-cnd8615
                                                            (letrec ((g8616 w))
                                                              g8616)
                                                            (letrec ((g8617
                                                                      (letrec ((x8618
                                                                                (letrec ((x8620
                                                                                          (letrec ((x8621
                                                                                                    (world-tetra
                                                                                                     w)))
                                                                                            (tetra-move
                                                                                             0
                                                                                             1
                                                                                             x8621)))
                                                                                         (x8619
                                                                                          (world-blocks
                                                                                           w)))
                                                                                  (world
                                                                                   x8620
                                                                                   x8619))))
                                                                        (world-jump-down
                                                                         x8618))))
                                                              g8617)))))
                                                g8614)))
                                           (landed-on-blocks?
                                            (lambda (w)
                                              (letrec ((g8622
                                                        (letrec ((x8624
                                                                  (letrec ((x8625
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     0
                                                                     1
                                                                     x8625)))
                                                                 (x8623
                                                                  (world-blocks
                                                                   w)))
                                                          (tetra-overlaps-blocks?
                                                           x8624
                                                           x8623))))
                                                g8622)))
                                           (landed-on-floor?
                                            (lambda (w)
                                              (letrec ((g8626
                                                        (letrec ((x8628
                                                                  (letrec ((x8629
                                                                            (letrec ((x8630
                                                                                      (world-tetra
                                                                                       w)))
                                                                              (tetra-blocks
                                                                               x8630))))
                                                                    (blocks-max-y
                                                                     x8629)))
                                                                 (x8627
                                                                  (sub1
                                                                   board-height)))
                                                          (= x8628 x8627))))
                                                g8626)))
                                           (landed?
                                            (lambda (w)
                                              (letrec ((g8631
                                                        (letrec ((val7261
                                                                  (landed-on-blocks?
                                                                   w)))
                                                          (letrec ((g8632
                                                                    (if val7261
                                                                      val7261
                                                                      (landed-on-floor?
                                                                       w))))
                                                            g8632))))
                                                g8631)))
                                           (next-world
                                            (lambda (w tetras)
                                              (letrec ((g8633
                                                        (letrec ((x-cnd8634
                                                                  (landed? w)))
                                                          (if x-cnd8634
                                                            (letrec ((g8635
                                                                      (touchdown
                                                                       w
                                                                       tetras)))
                                                              g8635)
                                                            (letrec ((g8636
                                                                      (letrec ((x8638
                                                                                (letrec ((x8639
                                                                                          (world-tetra
                                                                                           w)))
                                                                                  (tetra-move
                                                                                   0
                                                                                   1
                                                                                   x8639)))
                                                                               (x8637
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         x8638
                                                                         x8637))))
                                                              g8636)))))
                                                g8633)))
                                           (try-new-tetra
                                            (lambda (w new-tetra)
                                              (letrec ((g8640
                                                        (letrec ((x-cnd8641
                                                                  (letrec ((x8647
                                                                            (letrec ((x8648
                                                                                      (letrec ((x8649
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-min-x
                                                                                         x8649))))
                                                                              (<
                                                                               x8648
                                                                               0)))
                                                                           (x8644
                                                                            (letrec ((x8645
                                                                                      (letrec ((x8646
                                                                                                (tetra-blocks
                                                                                                 new-tetra)))
                                                                                        (blocks-max-x
                                                                                         x8646))))
                                                                              (>=
                                                                               x8645
                                                                               board-width)))
                                                                           (x8642
                                                                            (letrec ((x8643
                                                                                      (world-blocks
                                                                                       w)))
                                                                              (tetra-overlaps-blocks?
                                                                               new-tetra
                                                                               x8643))))
                                                                    (or x8647
                                                                        x8644
                                                                        x8642))))
                                                          (if x-cnd8641
                                                            (letrec ((g8650 w))
                                                              g8650)
                                                            (letrec ((g8651
                                                                      (letrec ((x8652
                                                                                (world-blocks
                                                                                 w)))
                                                                        (world
                                                                         new-tetra
                                                                         x8652))))
                                                              g8651)))))
                                                g8640)))
                                           (world-move
                                            (lambda (dx dy w)
                                              (letrec ((g8653
                                                        (letrec ((x8654
                                                                  (letrec ((x8655
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-move
                                                                     dx
                                                                     dy
                                                                     x8655))))
                                                          (try-new-tetra
                                                           w
                                                           x8654))))
                                                g8653)))
                                           (world-rotate-ccw
                                            (lambda (w)
                                              (letrec ((g8656
                                                        (letrec ((x8657
                                                                  (letrec ((x8658
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-ccw
                                                                     x8658))))
                                                          (try-new-tetra
                                                           w
                                                           x8657))))
                                                g8656)))
                                           (world-rotate-cw
                                            (lambda (w)
                                              (letrec ((g8659
                                                        (letrec ((x8660
                                                                  (letrec ((x8661
                                                                            (world-tetra
                                                                             w)))
                                                                    (tetra-rotate-cw
                                                                     x8661))))
                                                          (try-new-tetra
                                                           w
                                                           x8660))))
                                                g8659)))
                                           (ghost-blocks
                                            (lambda (w)
                                              (letrec ((g8662
                                                        (letrec ((x8663
                                                                  (letrec ((x8664
                                                                            (letrec ((x8665
                                                                                      (world-jump-down
                                                                                       w)))
                                                                              (world-tetra
                                                                               x8665))))
                                                                    (tetra-change-color
                                                                     x8664
                                                                     'gray))))
                                                          (tetra-blocks
                                                           x8663))))
                                                g8662)))
                                           (world-key-move
                                            (lambda (w k)
                                              (letrec ((g8666
                                                        (letrec ((x-cnd8667
                                                                  (equal?
                                                                   k
                                                                   "left")))
                                                          (if x-cnd8667
                                                            (letrec ((g8668
                                                                      (world-move
                                                                       neg-1
                                                                       0
                                                                       w)))
                                                              g8668)
                                                            (letrec ((x-cnd8669
                                                                      (equal?
                                                                       k
                                                                       "right")))
                                                              (if x-cnd8669
                                                                (letrec ((g8670
                                                                          (world-move
                                                                           1
                                                                           0
                                                                           w)))
                                                                  g8670)
                                                                (letrec ((x-cnd8671
                                                                          (equal?
                                                                           k
                                                                           "down")))
                                                                  (if x-cnd8671
                                                                    (letrec ((g8672
                                                                              (world-jump-down
                                                                               w)))
                                                                      g8672)
                                                                    (letrec ((x-cnd8673
                                                                              (equal?
                                                                               k
                                                                               "a")))
                                                                      (if x-cnd8673
                                                                        (letrec ((g8674
                                                                                  (world-rotate-ccw
                                                                                   w)))
                                                                          g8674)
                                                                        (letrec ((x-cnd8675
                                                                                  (equal?
                                                                                   k
                                                                                   "s")))
                                                                          (if x-cnd8675
                                                                            (letrec ((g8676
                                                                                      (world-rotate-cw
                                                                                       w)))
                                                                              g8676)
                                                                            (letrec ((g8677
                                                                                      w))
                                                                              g8677)))))))))))))
                                                g8666)))
                                           (image
                                            (lambda ()
                                              (letrec ((g8678
                                                        (orig-cons
                                                         'image
                                                         '())))
                                                g8678)))
                                           (image?
                                            (lambda (image7769)
                                              (letrec ((g8679
                                                        (letrec ((x8680
                                                                  (car
                                                                   image7769)))
                                                          (eq? x8680 'image))))
                                                g8679)))
                                           (image/c
                                            (lambda (j7421 k7422 v7420)
                                              (letrec ((g8681
                                                        (cons image '())))
                                                g8681)))
                                           (overlay
                                            (lambda (i₁ i₂)
                                              (letrec ((g8682 (image)))
                                                g8682)))
                                           (circle
                                            (lambda (r m c)
                                              (letrec ((g8683 (image)))
                                                g8683)))
                                           (rectangle
                                            (lambda (w h m c)
                                              (letrec ((g8684 (image)))
                                                g8684)))
                                           (place-image
                                            (lambda (i₁ r c i₂)
                                              (letrec ((g8685 (image)))
                                                g8685)))
                                           (empty-scene
                                            (lambda (w h)
                                              (letrec ((g8686 (image)))
                                                g8686)))
                                           (list-pick-random
                                            (lambda (xs)
                                              (letrec ((g8687
                                                        (letrec ((x-cnd8688
                                                                  (letrec ((x8689
                                                                            (cdr
                                                                             xs)))
                                                                    (null?
                                                                     x8689))))
                                                          (if x-cnd8688
                                                            (letrec ((g8690
                                                                      (car
                                                                       xs)))
                                                              g8690)
                                                            (letrec ((g8691
                                                                      (letrec ((x8692
                                                                                (cdr
                                                                                 xs)))
                                                                        (list-pick-random
                                                                         x8692))))
                                                              g8691)))))
                                                g8687)))
                                           (neg-1 (random 10))
                                           (world->image
                                            (lambda (w)
                                              (letrec ((g8693
                                                        (letrec ((x8697
                                                                  (letrec ((x8698
                                                                            (letrec ((x8702
                                                                                      (letrec ((x8703
                                                                                                (world-tetra
                                                                                                 w)))
                                                                                        (tetra-blocks
                                                                                         x8703)))
                                                                                     (x8699
                                                                                      (letrec ((x8701
                                                                                                (ghost-blocks
                                                                                                 w))
                                                                                               (x8700
                                                                                                (world-blocks
                                                                                                 w)))
                                                                                        (append
                                                                                         x8701
                                                                                         x8700))))
                                                                              (append
                                                                               x8702
                                                                               x8699))))
                                                                    (blocks->image
                                                                     x8698)))
                                                                 (x8694
                                                                  (letrec ((x8696
                                                                            (*
                                                                             board-width
                                                                             block-size))
                                                                           (x8695
                                                                            (*
                                                                             board-height
                                                                             block-size)))
                                                                    (empty-scene
                                                                     x8696
                                                                     x8695))))
                                                          (place-image
                                                           x8697
                                                           0
                                                           0
                                                           x8694))))
                                                g8693)))
                                           (blocks->image
                                            (lambda (bs)
                                              (letrec ((g8704
                                                        (letrec ((x8705
                                                                  (letrec ((x8708
                                                                            (letrec ((x8709
                                                                                      (*
                                                                                       board-width
                                                                                       block-size)))
                                                                              (add1
                                                                               x8709)))
                                                                           (x8706
                                                                            (letrec ((x8707
                                                                                      (*
                                                                                       board-height
                                                                                       block-size)))
                                                                              (add1
                                                                               x8707))))
                                                                    (empty-scene
                                                                     x8708
                                                                     x8706))))
                                                          (foldr
                                                           (lambda (b img)
                                                             (letrec ((g8710
                                                                       (letrec ((x-cnd8711
                                                                                 (letrec ((x8712
                                                                                           (block-y
                                                                                            b)))
                                                                                   (<=
                                                                                    0
                                                                                    x8712))))
                                                                         (if x-cnd8711
                                                                           (letrec ((g8713
                                                                                     (place-block
                                                                                      b
                                                                                      img)))
                                                                             g8713)
                                                                           (letrec ((g8714
                                                                                     img))
                                                                             g8714)))))
                                                               g8710))
                                                           x8705
                                                           bs))))
                                                g8704)))
                                           (block->image
                                            (lambda (b)
                                              (letrec ((g8715
                                                        (letrec ((x8719
                                                                  (letrec ((x8722
                                                                            (add1
                                                                             block-size))
                                                                           (x8721
                                                                            (add1
                                                                             block-size))
                                                                           (x8720
                                                                            (block-color
                                                                             b)))
                                                                    (rectangle
                                                                     x8722
                                                                     x8721
                                                                     'solid
                                                                     x8720)))
                                                                 (x8716
                                                                  (letrec ((x8718
                                                                            (add1
                                                                             block-size))
                                                                           (x8717
                                                                            (add1
                                                                             block-size)))
                                                                    (rectangle
                                                                     x8718
                                                                     x8717
                                                                     'outline
                                                                     'black))))
                                                          (overlay
                                                           x8719
                                                           x8716))))
                                                g8715)))
                                           (place-block
                                            (lambda (b scene)
                                              (letrec ((g8723
                                                        (letrec ((x8732
                                                                  (block->image
                                                                   b))
                                                                 (x8728
                                                                  (letrec ((x8730
                                                                            (letrec ((x8731
                                                                                      (block-x
                                                                                       b)))
                                                                              (*
                                                                               x8731
                                                                               block-size)))
                                                                           (x8729
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8730
                                                                     x8729)))
                                                                 (x8724
                                                                  (letrec ((x8726
                                                                            (letrec ((x8727
                                                                                      (block-y
                                                                                       b)))
                                                                              (*
                                                                               x8727
                                                                               block-size)))
                                                                           (x8725
                                                                            (/
                                                                             block-size
                                                                             2)))
                                                                    (+
                                                                     x8726
                                                                     x8725))))
                                                          (place-image
                                                           x8732
                                                           x8728
                                                           x8724
                                                           scene))))
                                                g8723)))
                                           (world0
                                            (lambda (tetras)
                                              (letrec ((g8733
                                                        (letrec ((x8734
                                                                  (list-pick-random
                                                                   tetras)))
                                                          (world x8734 null))))
                                                g8733))))
                                    (letrec ((g8735
                                              (parallel
                                               (parallel
                                                (letrec ((x8746
                                                          (letrec ((xj7424
                                                                    (loc
                                                                     'module))
                                                                   (xk7425
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8747
                                                                      ((lambda (j7428
                                                                                k7429
                                                                                f7430)
                                                                         (letrec ((g8748
                                                                                   (lambda (g7426
                                                                                            g7427)
                                                                                     (letrec ((g8749
                                                                                               (letrec ((x8750
                                                                                                         (letrec ((x8752
                                                                                                                   (POSN/C
                                                                                                                    j7428
                                                                                                                    k7429
                                                                                                                    g7426))
                                                                                                                  (x8751
                                                                                                                   (POSN/C
                                                                                                                    j7428
                                                                                                                    k7429
                                                                                                                    g7427)))
                                                                                                           (f7430
                                                                                                            x8752
                                                                                                            x8751))))
                                                                                                 (boolean?/c
                                                                                                  j7428
                                                                                                  k7429
                                                                                                  x8750))))
                                                                                       g8749))))
                                                                           g8748))
                                                                       xj7424
                                                                       xk7425
                                                                       posn=?)))
                                                              g8747)))
                                                         (x8741
                                                          (letrec ((x8742
                                                                    (letrec ((x8745
                                                                              (input))
                                                                             (x8743
                                                                              (letrec ((x8744
                                                                                        (input)))
                                                                                (cons
                                                                                 x8744
                                                                                 '()))))
                                                                      (cons
                                                                       x8745
                                                                       x8743))))
                                                            (cons
                                                             'posn
                                                             x8742)))
                                                         (x8736
                                                          (letrec ((x8737
                                                                    (letrec ((x8740
                                                                              (input))
                                                                             (x8738
                                                                              (letrec ((x8739
                                                                                        (input)))
                                                                                (cons
                                                                                 x8739
                                                                                 '()))))
                                                                      (cons
                                                                       x8740
                                                                       x8738))))
                                                            (cons
                                                             'posn
                                                             x8737))))
                                                  (x8746 x8741 x8736))
                                                (letrec ((xj7431 (loc 'module))
                                                         (xk7432
                                                          (loc 'importer)))
                                                  (letrec ((g8753
                                                            (any/c
                                                             xj7431
                                                             xk7432
                                                             COLOR/C)))
                                                    g8753))
                                                (letrec ((xj7433 (loc 'module))
                                                         (xk7434
                                                          (loc 'importer)))
                                                  (letrec ((g8754
                                                            (any/c
                                                             xj7433
                                                             xk7434
                                                             POSN/C)))
                                                    g8754))
                                                (letrec ((xj7435 (loc 'module))
                                                         (xk7436
                                                          (loc 'importer)))
                                                  (letrec ((g8755
                                                            (any/c
                                                             xj7435
                                                             xk7436
                                                             BLOCK/C)))
                                                    g8755))
                                                (letrec ((xj7437 (loc 'module))
                                                         (xk7438
                                                          (loc 'importer)))
                                                  (letrec ((g8756
                                                            (any/c
                                                             xj7437
                                                             xk7438
                                                             TETRA/C)))
                                                    g8756))
                                                (letrec ((xj7439 (loc 'module))
                                                         (xk7440
                                                          (loc 'importer)))
                                                  (letrec ((g8757
                                                            (any/c
                                                             xj7439
                                                             xk7440
                                                             WORLD/C)))
                                                    g8757))
                                                (letrec ((xj7441 (loc 'module))
                                                         (xk7442
                                                          (loc 'importer)))
                                                  (letrec ((g8758
                                                            (any/c
                                                             xj7441
                                                             xk7442
                                                             BSET/C)))
                                                    g8758))
                                                (letrec ((xj7443 (loc 'module))
                                                         (xk7444
                                                          (loc 'importer)))
                                                  (letrec ((g8759
                                                            (integer?/c
                                                             xj7443
                                                             xk7444
                                                             block-size)))
                                                    g8759))
                                                (letrec ((xj7445 (loc 'module))
                                                         (xk7446
                                                          (loc 'importer)))
                                                  (letrec ((g8760
                                                            (integer?/c
                                                             xj7445
                                                             xk7446
                                                             board-width)))
                                                    g8760))
                                                (letrec ((xj7447 (loc 'module))
                                                         (xk7448
                                                          (loc 'importer)))
                                                  (letrec ((g8761
                                                            (integer?/c
                                                             xj7447
                                                             xk7448
                                                             board-height)))
                                                    g8761))
                                                (letrec ((x8774
                                                          (letrec ((xj7449
                                                                    (loc
                                                                     'module))
                                                                   (xk7450
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8775
                                                                      ((lambda (j7453
                                                                                k7454
                                                                                f7455)
                                                                         (letrec ((g8776
                                                                                   (lambda (g7451
                                                                                            g7452)
                                                                                     (letrec ((g8777
                                                                                               (letrec ((x8778
                                                                                                         (letrec ((x8780
                                                                                                                   (POSN/C
                                                                                                                    j7453
                                                                                                                    k7454
                                                                                                                    g7451))
                                                                                                                  (x8779
                                                                                                                   (BLOCK/C
                                                                                                                    j7453
                                                                                                                    k7454
                                                                                                                    g7452)))
                                                                                                           (f7455
                                                                                                            x8780
                                                                                                            x8779))))
                                                                                                 (BLOCK/C
                                                                                                  j7453
                                                                                                  k7454
                                                                                                  x8778))))
                                                                                       g8777))))
                                                                           g8776))
                                                                       xj7449
                                                                       xk7450
                                                                       block-rotate-ccw)))
                                                              g8775)))
                                                         (x8769
                                                          (letrec ((x8770
                                                                    (letrec ((x8773
                                                                              (input))
                                                                             (x8771
                                                                              (letrec ((x8772
                                                                                        (input)))
                                                                                (cons
                                                                                 x8772
                                                                                 '()))))
                                                                      (cons
                                                                       x8773
                                                                       x8771))))
                                                            (cons
                                                             'posn
                                                             x8770)))
                                                         (x8762
                                                          (letrec ((x8763
                                                                    (letrec ((x8768
                                                                              (input))
                                                                             (x8764
                                                                              (letrec ((x8767
                                                                                        (input))
                                                                                       (x8765
                                                                                        (letrec ((x8766
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8766
                                                                                           '()))))
                                                                                (cons
                                                                                 x8767
                                                                                 x8765))))
                                                                      (cons
                                                                       x8768
                                                                       x8764))))
                                                            (cons
                                                             'block
                                                             x8763))))
                                                  (x8774 x8769 x8762))
                                                (letrec ((x8793
                                                          (letrec ((xj7456
                                                                    (loc
                                                                     'module))
                                                                   (xk7457
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8794
                                                                      ((lambda (j7460
                                                                                k7461
                                                                                f7462)
                                                                         (letrec ((g8795
                                                                                   (lambda (g7458
                                                                                            g7459)
                                                                                     (letrec ((g8796
                                                                                               (letrec ((x8797
                                                                                                         (letrec ((x8799
                                                                                                                   (POSN/C
                                                                                                                    j7460
                                                                                                                    k7461
                                                                                                                    g7458))
                                                                                                                  (x8798
                                                                                                                   (BLOCK/C
                                                                                                                    j7460
                                                                                                                    k7461
                                                                                                                    g7459)))
                                                                                                           (f7462
                                                                                                            x8799
                                                                                                            x8798))))
                                                                                                 (BLOCK/C
                                                                                                  j7460
                                                                                                  k7461
                                                                                                  x8797))))
                                                                                       g8796))))
                                                                           g8795))
                                                                       xj7456
                                                                       xk7457
                                                                       block-rotate-cw)))
                                                              g8794)))
                                                         (x8788
                                                          (letrec ((x8789
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
                                                             'posn
                                                             x8789)))
                                                         (x8781
                                                          (letrec ((x8782
                                                                    (letrec ((x8787
                                                                              (input))
                                                                             (x8783
                                                                              (letrec ((x8786
                                                                                        (input))
                                                                                       (x8784
                                                                                        (letrec ((x8785
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8785
                                                                                           '()))))
                                                                                (cons
                                                                                 x8786
                                                                                 x8784))))
                                                                      (cons
                                                                       x8787
                                                                       x8783))))
                                                            (cons
                                                             'block
                                                             x8782))))
                                                  (x8793 x8788 x8781))
                                                (letrec ((x8814
                                                          (letrec ((xj7463
                                                                    (loc
                                                                     'module))
                                                                   (xk7464
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8815
                                                                      ((lambda (j7467
                                                                                k7468
                                                                                f7469)
                                                                         (letrec ((g8816
                                                                                   (lambda (g7465
                                                                                            g7466)
                                                                                     (letrec ((g8817
                                                                                               (letrec ((x8818
                                                                                                         (letrec ((x8820
                                                                                                                   (BLOCK/C
                                                                                                                    j7467
                                                                                                                    k7468
                                                                                                                    g7465))
                                                                                                                  (x8819
                                                                                                                   (BLOCK/C
                                                                                                                    j7467
                                                                                                                    k7468
                                                                                                                    g7466)))
                                                                                                           (f7469
                                                                                                            x8820
                                                                                                            x8819))))
                                                                                                 (boolean?/c
                                                                                                  j7467
                                                                                                  k7468
                                                                                                  x8818))))
                                                                                       g8817))))
                                                                           g8816))
                                                                       xj7463
                                                                       xk7464
                                                                       block=?)))
                                                              g8815)))
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
                                                             x8808)))
                                                         (x8800
                                                          (letrec ((x8801
                                                                    (letrec ((x8806
                                                                              (input))
                                                                             (x8802
                                                                              (letrec ((x8805
                                                                                        (input))
                                                                                       (x8803
                                                                                        (letrec ((x8804
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8804
                                                                                           '()))))
                                                                                (cons
                                                                                 x8805
                                                                                 x8803))))
                                                                      (cons
                                                                       x8806
                                                                       x8802))))
                                                            (cons
                                                             'block
                                                             x8801))))
                                                  (x8814 x8807 x8800))
                                                (letrec ((x8830
                                                          (letrec ((xj7470
                                                                    (loc
                                                                     'module))
                                                                   (xk7471
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8831
                                                                      ((lambda (j7475
                                                                                k7476
                                                                                f7477)
                                                                         (letrec ((g8832
                                                                                   (lambda (g7472
                                                                                            g7473
                                                                                            g7474)
                                                                                     (letrec ((g8833
                                                                                               (letrec ((x8834
                                                                                                         (letrec ((x8837
                                                                                                                   (real?/c
                                                                                                                    j7475
                                                                                                                    k7476
                                                                                                                    g7472))
                                                                                                                  (x8836
                                                                                                                   (real?/c
                                                                                                                    j7475
                                                                                                                    k7476
                                                                                                                    g7473))
                                                                                                                  (x8835
                                                                                                                   (BLOCK/C
                                                                                                                    j7475
                                                                                                                    k7476
                                                                                                                    g7474)))
                                                                                                           (f7477
                                                                                                            x8837
                                                                                                            x8836
                                                                                                            x8835))))
                                                                                                 (BLOCK/C
                                                                                                  j7475
                                                                                                  k7476
                                                                                                  x8834))))
                                                                                       g8833))))
                                                                           g8832))
                                                                       xj7470
                                                                       xk7471
                                                                       block-move)))
                                                              g8831)))
                                                         (x8829 (input))
                                                         (x8828 (input))
                                                         (x8821
                                                          (letrec ((x8822
                                                                    (letrec ((x8827
                                                                              (input))
                                                                             (x8823
                                                                              (letrec ((x8826
                                                                                        (input))
                                                                                       (x8824
                                                                                        (letrec ((x8825
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8825
                                                                                           '()))))
                                                                                (cons
                                                                                 x8826
                                                                                 x8824))))
                                                                      (cons
                                                                       x8827
                                                                       x8823))))
                                                            (cons
                                                             'block
                                                             x8822))))
                                                  (x8830 x8829 x8828 x8821))
                                                (letrec ((x8846
                                                          (letrec ((xj7478
                                                                    (loc
                                                                     'module))
                                                                   (xk7479
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8847
                                                                      ((lambda (j7482
                                                                                k7483
                                                                                f7484)
                                                                         (letrec ((g8848
                                                                                   (lambda (g7480
                                                                                            g7481)
                                                                                     (letrec ((g8849
                                                                                               (letrec ((x8850
                                                                                                         (letrec ((x8852
                                                                                                                   (BSET/C
                                                                                                                    j7482
                                                                                                                    k7483
                                                                                                                    g7480))
                                                                                                                  (x8851
                                                                                                                   (BLOCK/C
                                                                                                                    j7482
                                                                                                                    k7483
                                                                                                                    g7481)))
                                                                                                           (f7484
                                                                                                            x8852
                                                                                                            x8851))))
                                                                                                 (boolean?/c
                                                                                                  j7482
                                                                                                  k7483
                                                                                                  x8850))))
                                                                                       g8849))))
                                                                           g8848))
                                                                       xj7478
                                                                       xk7479
                                                                       blocks-contains?)))
                                                              g8847)))
                                                         (x8845 (input))
                                                         (x8838
                                                          (letrec ((x8839
                                                                    (letrec ((x8844
                                                                              (input))
                                                                             (x8840
                                                                              (letrec ((x8843
                                                                                        (input))
                                                                                       (x8841
                                                                                        (letrec ((x8842
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x8842
                                                                                           '()))))
                                                                                (cons
                                                                                 x8843
                                                                                 x8841))))
                                                                      (cons
                                                                       x8844
                                                                       x8840))))
                                                            (cons
                                                             'block
                                                             x8839))))
                                                  (x8846 x8845 x8838))
                                                (letrec ((x8855
                                                          (letrec ((xj7485
                                                                    (loc
                                                                     'module))
                                                                   (xk7486
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8856
                                                                      ((lambda (j7489
                                                                                k7490
                                                                                f7491)
                                                                         (letrec ((g8857
                                                                                   (lambda (g7487
                                                                                            g7488)
                                                                                     (letrec ((g8858
                                                                                               (letrec ((x8859
                                                                                                         (letrec ((x8861
                                                                                                                   (BSET/C
                                                                                                                    j7489
                                                                                                                    k7490
                                                                                                                    g7487))
                                                                                                                  (x8860
                                                                                                                   (BSET/C
                                                                                                                    j7489
                                                                                                                    k7490
                                                                                                                    g7488)))
                                                                                                           (f7491
                                                                                                            x8861
                                                                                                            x8860))))
                                                                                                 (boolean?/c
                                                                                                  j7489
                                                                                                  k7490
                                                                                                  x8859))))
                                                                                       g8858))))
                                                                           g8857))
                                                                       xj7485
                                                                       xk7486
                                                                       blocks=?)))
                                                              g8856)))
                                                         (x8854 (input))
                                                         (x8853 (input)))
                                                  (x8855 x8854 x8853))
                                                (letrec ((x8864
                                                          (letrec ((xj7492
                                                                    (loc
                                                                     'module))
                                                                   (xk7493
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8865
                                                                      ((lambda (j7496
                                                                                k7497
                                                                                f7498)
                                                                         (letrec ((g8866
                                                                                   (lambda (g7494
                                                                                            g7495)
                                                                                     (letrec ((g8867
                                                                                               (letrec ((x8868
                                                                                                         (letrec ((x8870
                                                                                                                   (BSET/C
                                                                                                                    j7496
                                                                                                                    k7497
                                                                                                                    g7494))
                                                                                                                  (x8869
                                                                                                                   (BSET/C
                                                                                                                    j7496
                                                                                                                    k7497
                                                                                                                    g7495)))
                                                                                                           (f7498
                                                                                                            x8870
                                                                                                            x8869))))
                                                                                                 (boolean?/c
                                                                                                  j7496
                                                                                                  k7497
                                                                                                  x8868))))
                                                                                       g8867))))
                                                                           g8866))
                                                                       xj7492
                                                                       xk7493
                                                                       blocks-subset?)))
                                                              g8865)))
                                                         (x8863 (input))
                                                         (x8862 (input)))
                                                  (x8864 x8863 x8862))
                                                (letrec ((x8873
                                                          (letrec ((xj7499
                                                                    (loc
                                                                     'module))
                                                                   (xk7500
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8874
                                                                      ((lambda (j7503
                                                                                k7504
                                                                                f7505)
                                                                         (letrec ((g8875
                                                                                   (lambda (g7501
                                                                                            g7502)
                                                                                     (letrec ((g8876
                                                                                               (letrec ((x8877
                                                                                                         (letrec ((x8879
                                                                                                                   (BSET/C
                                                                                                                    j7503
                                                                                                                    k7504
                                                                                                                    g7501))
                                                                                                                  (x8878
                                                                                                                   (BSET/C
                                                                                                                    j7503
                                                                                                                    k7504
                                                                                                                    g7502)))
                                                                                                           (f7505
                                                                                                            x8879
                                                                                                            x8878))))
                                                                                                 (BSET/C
                                                                                                  j7503
                                                                                                  k7504
                                                                                                  x8877))))
                                                                                       g8876))))
                                                                           g8875))
                                                                       xj7499
                                                                       xk7500
                                                                       blocks-intersect)))
                                                              g8874)))
                                                         (x8872 (input))
                                                         (x8871 (input)))
                                                  (x8873 x8872 x8871))
                                                (letrec ((x8881
                                                          (letrec ((xj7506
                                                                    (loc
                                                                     'module))
                                                                   (xk7507
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8882
                                                                      ((lambda (j7509
                                                                                k7510
                                                                                f7511)
                                                                         (letrec ((g8883
                                                                                   (lambda (g7508)
                                                                                     (letrec ((g8884
                                                                                               (letrec ((x8885
                                                                                                         (letrec ((x8886
                                                                                                                   (BSET/C
                                                                                                                    j7509
                                                                                                                    k7510
                                                                                                                    g7508)))
                                                                                                           (f7511
                                                                                                            x8886))))
                                                                                                 (real?/c
                                                                                                  j7509
                                                                                                  k7510
                                                                                                  x8885))))
                                                                                       g8884))))
                                                                           g8883))
                                                                       xj7506
                                                                       xk7507
                                                                       blocks-count)))
                                                              g8882)))
                                                         (x8880 (input)))
                                                  (x8881 x8880))
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
                                                                                                 (boolean?/c
                                                                                                  j7515
                                                                                                  k7516
                                                                                                  x8892))))
                                                                                       g8891))))
                                                                           g8890))
                                                                       xj7512
                                                                       xk7513
                                                                       blocks-overflow?)))
                                                              g8889)))
                                                         (x8887 (input)))
                                                  (x8888 x8887))
                                                (letrec ((x8897
                                                          (letrec ((xj7518
                                                                    (loc
                                                                     'module))
                                                                   (xk7519
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8898
                                                                      ((lambda (j7523
                                                                                k7524
                                                                                f7525)
                                                                         (letrec ((g8899
                                                                                   (lambda (g7520
                                                                                            g7521
                                                                                            g7522)
                                                                                     (letrec ((g8900
                                                                                               (letrec ((x8901
                                                                                                         (letrec ((x8904
                                                                                                                   (real?/c
                                                                                                                    j7523
                                                                                                                    k7524
                                                                                                                    g7520))
                                                                                                                  (x8903
                                                                                                                   (real?/c
                                                                                                                    j7523
                                                                                                                    k7524
                                                                                                                    g7521))
                                                                                                                  (x8902
                                                                                                                   (BSET/C
                                                                                                                    j7523
                                                                                                                    k7524
                                                                                                                    g7522)))
                                                                                                           (f7525
                                                                                                            x8904
                                                                                                            x8903
                                                                                                            x8902))))
                                                                                                 (BSET/C
                                                                                                  j7523
                                                                                                  k7524
                                                                                                  x8901))))
                                                                                       g8900))))
                                                                           g8899))
                                                                       xj7518
                                                                       xk7519
                                                                       blocks-move)))
                                                              g8898)))
                                                         (x8896 (input))
                                                         (x8895 (input))
                                                         (x8894 (input)))
                                                  (x8897 x8896 x8895 x8894))
                                                (letrec ((x8911
                                                          (letrec ((xj7526
                                                                    (loc
                                                                     'module))
                                                                   (xk7527
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8912
                                                                      ((lambda (j7530
                                                                                k7531
                                                                                f7532)
                                                                         (letrec ((g8913
                                                                                   (lambda (g7528
                                                                                            g7529)
                                                                                     (letrec ((g8914
                                                                                               (letrec ((x8915
                                                                                                         (letrec ((x8917
                                                                                                                   (POSN/C
                                                                                                                    j7530
                                                                                                                    k7531
                                                                                                                    g7528))
                                                                                                                  (x8916
                                                                                                                   (BSET/C
                                                                                                                    j7530
                                                                                                                    k7531
                                                                                                                    g7529)))
                                                                                                           (f7532
                                                                                                            x8917
                                                                                                            x8916))))
                                                                                                 (BSET/C
                                                                                                  j7530
                                                                                                  k7531
                                                                                                  x8915))))
                                                                                       g8914))))
                                                                           g8913))
                                                                       xj7526
                                                                       xk7527
                                                                       blocks-rotate-cw)))
                                                              g8912)))
                                                         (x8906
                                                          (letrec ((x8907
                                                                    (letrec ((x8910
                                                                              (input))
                                                                             (x8908
                                                                              (letrec ((x8909
                                                                                        (input)))
                                                                                (cons
                                                                                 x8909
                                                                                 '()))))
                                                                      (cons
                                                                       x8910
                                                                       x8908))))
                                                            (cons
                                                             'posn
                                                             x8907)))
                                                         (x8905 (input)))
                                                  (x8911 x8906 x8905))
                                                (letrec ((x8924
                                                          (letrec ((xj7533
                                                                    (loc
                                                                     'module))
                                                                   (xk7534
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8925
                                                                      ((lambda (j7537
                                                                                k7538
                                                                                f7539)
                                                                         (letrec ((g8926
                                                                                   (lambda (g7535
                                                                                            g7536)
                                                                                     (letrec ((g8927
                                                                                               (letrec ((x8928
                                                                                                         (letrec ((x8930
                                                                                                                   (POSN/C
                                                                                                                    j7537
                                                                                                                    k7538
                                                                                                                    g7535))
                                                                                                                  (x8929
                                                                                                                   (BSET/C
                                                                                                                    j7537
                                                                                                                    k7538
                                                                                                                    g7536)))
                                                                                                           (f7539
                                                                                                            x8930
                                                                                                            x8929))))
                                                                                                 (BSET/C
                                                                                                  j7537
                                                                                                  k7538
                                                                                                  x8928))))
                                                                                       g8927))))
                                                                           g8926))
                                                                       xj7533
                                                                       xk7534
                                                                       blocks-rotate-ccw)))
                                                              g8925)))
                                                         (x8919
                                                          (letrec ((x8920
                                                                    (letrec ((x8923
                                                                              (input))
                                                                             (x8921
                                                                              (letrec ((x8922
                                                                                        (input)))
                                                                                (cons
                                                                                 x8922
                                                                                 '()))))
                                                                      (cons
                                                                       x8923
                                                                       x8921))))
                                                            (cons
                                                             'posn
                                                             x8920)))
                                                         (x8918 (input)))
                                                  (x8924 x8919 x8918))
                                                (letrec ((x8933
                                                          (letrec ((xj7540
                                                                    (loc
                                                                     'module))
                                                                   (xk7541
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8934
                                                                      ((lambda (j7544
                                                                                k7545
                                                                                f7546)
                                                                         (letrec ((g8935
                                                                                   (lambda (g7542
                                                                                            g7543)
                                                                                     (letrec ((g8936
                                                                                               (letrec ((x8937
                                                                                                         (letrec ((x8939
                                                                                                                   (BSET/C
                                                                                                                    j7544
                                                                                                                    k7545
                                                                                                                    g7542))
                                                                                                                  (x8938
                                                                                                                   (COLOR/C
                                                                                                                    j7544
                                                                                                                    k7545
                                                                                                                    g7543)))
                                                                                                           (f7546
                                                                                                            x8939
                                                                                                            x8938))))
                                                                                                 (BSET/C
                                                                                                  j7544
                                                                                                  k7545
                                                                                                  x8937))))
                                                                                       g8936))))
                                                                           g8935))
                                                                       xj7540
                                                                       xk7541
                                                                       blocks-change-color)))
                                                              g8934)))
                                                         (x8932 (input))
                                                         (x8931 (input)))
                                                  (x8933 x8932 x8931))
                                                (letrec ((x8942
                                                          (letrec ((xj7547
                                                                    (loc
                                                                     'module))
                                                                   (xk7548
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8943
                                                                      ((lambda (j7551
                                                                                k7552
                                                                                f7553)
                                                                         (letrec ((g8944
                                                                                   (lambda (g7549
                                                                                            g7550)
                                                                                     (letrec ((g8945
                                                                                               (letrec ((x8946
                                                                                                         (letrec ((x8948
                                                                                                                   (BSET/C
                                                                                                                    j7551
                                                                                                                    k7552
                                                                                                                    g7549))
                                                                                                                  (x8947
                                                                                                                   (real?/c
                                                                                                                    j7551
                                                                                                                    k7552
                                                                                                                    g7550)))
                                                                                                           (f7553
                                                                                                            x8948
                                                                                                            x8947))))
                                                                                                 (BSET/C
                                                                                                  j7551
                                                                                                  k7552
                                                                                                  x8946))))
                                                                                       g8945))))
                                                                           g8944))
                                                                       xj7547
                                                                       xk7548
                                                                       blocks-row)))
                                                              g8943)))
                                                         (x8941 (input))
                                                         (x8940 (input)))
                                                  (x8942 x8941 x8940))
                                                (letrec ((x8951
                                                          (letrec ((xj7554
                                                                    (loc
                                                                     'module))
                                                                   (xk7555
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8952
                                                                      ((lambda (j7558
                                                                                k7559
                                                                                f7560)
                                                                         (letrec ((g8953
                                                                                   (lambda (g7556
                                                                                            g7557)
                                                                                     (letrec ((g8954
                                                                                               (letrec ((x8955
                                                                                                         (letrec ((x8957
                                                                                                                   (BSET/C
                                                                                                                    j7558
                                                                                                                    k7559
                                                                                                                    g7556))
                                                                                                                  (x8956
                                                                                                                   (real?/c
                                                                                                                    j7558
                                                                                                                    k7559
                                                                                                                    g7557)))
                                                                                                           (f7560
                                                                                                            x8957
                                                                                                            x8956))))
                                                                                                 (boolean?/c
                                                                                                  j7558
                                                                                                  k7559
                                                                                                  x8955))))
                                                                                       g8954))))
                                                                           g8953))
                                                                       xj7554
                                                                       xk7555
                                                                       full-row?)))
                                                              g8952)))
                                                         (x8950 (input))
                                                         (x8949 (input)))
                                                  (x8951 x8950 x8949))
                                                (letrec ((x8960
                                                          (letrec ((xj7561
                                                                    (loc
                                                                     'module))
                                                                   (xk7562
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8961
                                                                      ((lambda (j7565
                                                                                k7566
                                                                                f7567)
                                                                         (letrec ((g8962
                                                                                   (lambda (g7563
                                                                                            g7564)
                                                                                     (letrec ((g8963
                                                                                               (letrec ((x8964
                                                                                                         (letrec ((x8966
                                                                                                                   (BSET/C
                                                                                                                    j7565
                                                                                                                    k7566
                                                                                                                    g7563))
                                                                                                                  (x8965
                                                                                                                   (BSET/C
                                                                                                                    j7565
                                                                                                                    k7566
                                                                                                                    g7564)))
                                                                                                           (f7567
                                                                                                            x8966
                                                                                                            x8965))))
                                                                                                 (BSET/C
                                                                                                  j7565
                                                                                                  k7566
                                                                                                  x8964))))
                                                                                       g8963))))
                                                                           g8962))
                                                                       xj7561
                                                                       xk7562
                                                                       blocks-union)))
                                                              g8961)))
                                                         (x8959 (input))
                                                         (x8958 (input)))
                                                  (x8960 x8959 x8958))
                                                (letrec ((x8968
                                                          (letrec ((xj7568
                                                                    (loc
                                                                     'module))
                                                                   (xk7569
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g8969
                                                                      ((lambda (j7571
                                                                                k7572
                                                                                f7573)
                                                                         (letrec ((g8970
                                                                                   (lambda (g7570)
                                                                                     (letrec ((g8971
                                                                                               (letrec ((x8972
                                                                                                         (letrec ((x8973
                                                                                                                   (BSET/C
                                                                                                                    j7571
                                                                                                                    k7572
                                                                                                                    g7570)))
                                                                                                           (f7573
                                                                                                            x8973))))
                                                                                                 (real?/c
                                                                                                  j7571
                                                                                                  k7572
                                                                                                  x8972))))
                                                                                       g8971))))
                                                                           g8970))
                                                                       xj7568
                                                                       xk7569
                                                                       blocks-max-x)))
                                                              g8969)))
                                                         (x8967 (input)))
                                                  (x8968 x8967))
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
                                                                       blocks-min-x)))
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
                                                                       blocks-max-y)))
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
                                                                                                 (BSET/C
                                                                                                  j7589
                                                                                                  k7590
                                                                                                  x8993))))
                                                                                       g8992))))
                                                                           g8991))
                                                                       xj7586
                                                                       xk7587
                                                                       eliminate-full-rows)))
                                                              g8990)))
                                                         (x8988 (input)))
                                                  (x8989 x8988))
                                                (letrec ((x9006
                                                          (letrec ((xj7592
                                                                    (loc
                                                                     'module))
                                                                   (xk7593
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9007
                                                                      ((lambda (j7597
                                                                                k7598
                                                                                f7599)
                                                                         (letrec ((g9008
                                                                                   (lambda (g7594
                                                                                            g7595
                                                                                            g7596)
                                                                                     (letrec ((g9009
                                                                                               (letrec ((x9010
                                                                                                         (letrec ((x9013
                                                                                                                   (integer?/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7594))
                                                                                                                  (x9012
                                                                                                                   (integer?/c
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7595))
                                                                                                                  (x9011
                                                                                                                   (TETRA/C
                                                                                                                    j7597
                                                                                                                    k7598
                                                                                                                    g7596)))
                                                                                                           (f7599
                                                                                                            x9013
                                                                                                            x9012
                                                                                                            x9011))))
                                                                                                 (TETRA/C
                                                                                                  j7597
                                                                                                  k7598
                                                                                                  x9010))))
                                                                                       g9009))))
                                                                           g9008))
                                                                       xj7592
                                                                       xk7593
                                                                       tetra-move)))
                                                              g9007)))
                                                         (x9005 (input))
                                                         (x9004 (input))
                                                         (x8995
                                                          (letrec ((x8996
                                                                    (letrec ((x8999
                                                                              (letrec ((x9000
                                                                                        (letrec ((x9003
                                                                                                  (input))
                                                                                                 (x9001
                                                                                                  (letrec ((x9002
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9002
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9003
                                                                                           x9001))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9000)))
                                                                             (x8997
                                                                              (letrec ((x8998
                                                                                        (input)))
                                                                                (cons
                                                                                 x8998
                                                                                 '()))))
                                                                      (cons
                                                                       x8999
                                                                       x8997))))
                                                            (cons
                                                             'tetra
                                                             x8996))))
                                                  (x9006 x9005 x9004 x8995))
                                                (letrec ((x9023
                                                          (letrec ((xj7600
                                                                    (loc
                                                                     'module))
                                                                   (xk7601
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9024
                                                                      ((lambda (j7603
                                                                                k7604
                                                                                f7605)
                                                                         (letrec ((g9025
                                                                                   (lambda (g7602)
                                                                                     (letrec ((g9026
                                                                                               (letrec ((x9027
                                                                                                         (letrec ((x9028
                                                                                                                   (TETRA/C
                                                                                                                    j7603
                                                                                                                    k7604
                                                                                                                    g7602)))
                                                                                                           (f7605
                                                                                                            x9028))))
                                                                                                 (TETRA/C
                                                                                                  j7603
                                                                                                  k7604
                                                                                                  x9027))))
                                                                                       g9026))))
                                                                           g9025))
                                                                       xj7600
                                                                       xk7601
                                                                       tetra-rotate-ccw)))
                                                              g9024)))
                                                         (x9014
                                                          (letrec ((x9015
                                                                    (letrec ((x9018
                                                                              (letrec ((x9019
                                                                                        (letrec ((x9022
                                                                                                  (input))
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
                                                                                 'posn
                                                                                 x9019)))
                                                                             (x9016
                                                                              (letrec ((x9017
                                                                                        (input)))
                                                                                (cons
                                                                                 x9017
                                                                                 '()))))
                                                                      (cons
                                                                       x9018
                                                                       x9016))))
                                                            (cons
                                                             'tetra
                                                             x9015))))
                                                  (x9023 x9014))
                                                (letrec ((x9038
                                                          (letrec ((xj7606
                                                                    (loc
                                                                     'module))
                                                                   (xk7607
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9039
                                                                      ((lambda (j7609
                                                                                k7610
                                                                                f7611)
                                                                         (letrec ((g9040
                                                                                   (lambda (g7608)
                                                                                     (letrec ((g9041
                                                                                               (letrec ((x9042
                                                                                                         (letrec ((x9043
                                                                                                                   (TETRA/C
                                                                                                                    j7609
                                                                                                                    k7610
                                                                                                                    g7608)))
                                                                                                           (f7611
                                                                                                            x9043))))
                                                                                                 (TETRA/C
                                                                                                  j7609
                                                                                                  k7610
                                                                                                  x9042))))
                                                                                       g9041))))
                                                                           g9040))
                                                                       xj7606
                                                                       xk7607
                                                                       tetra-rotate-cw)))
                                                              g9039)))
                                                         (x9029
                                                          (letrec ((x9030
                                                                    (letrec ((x9033
                                                                              (letrec ((x9034
                                                                                        (letrec ((x9037
                                                                                                  (input))
                                                                                                 (x9035
                                                                                                  (letrec ((x9036
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9036
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9037
                                                                                           x9035))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9034)))
                                                                             (x9031
                                                                              (letrec ((x9032
                                                                                        (input)))
                                                                                (cons
                                                                                 x9032
                                                                                 '()))))
                                                                      (cons
                                                                       x9033
                                                                       x9031))))
                                                            (cons
                                                             'tetra
                                                             x9030))))
                                                  (x9038 x9029))
                                                (letrec ((x9054
                                                          (letrec ((xj7612
                                                                    (loc
                                                                     'module))
                                                                   (xk7613
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9055
                                                                      ((lambda (j7616
                                                                                k7617
                                                                                f7618)
                                                                         (letrec ((g9056
                                                                                   (lambda (g7614
                                                                                            g7615)
                                                                                     (letrec ((g9057
                                                                                               (letrec ((x9058
                                                                                                         (letrec ((x9060
                                                                                                                   (TETRA/C
                                                                                                                    j7616
                                                                                                                    k7617
                                                                                                                    g7614))
                                                                                                                  (x9059
                                                                                                                   (BSET/C
                                                                                                                    j7616
                                                                                                                    k7617
                                                                                                                    g7615)))
                                                                                                           (f7618
                                                                                                            x9060
                                                                                                            x9059))))
                                                                                                 (boolean?/c
                                                                                                  j7616
                                                                                                  k7617
                                                                                                  x9058))))
                                                                                       g9057))))
                                                                           g9056))
                                                                       xj7612
                                                                       xk7613
                                                                       tetra-overlaps-blocks?)))
                                                              g9055)))
                                                         (x9045
                                                          (letrec ((x9046
                                                                    (letrec ((x9049
                                                                              (letrec ((x9050
                                                                                        (letrec ((x9053
                                                                                                  (input))
                                                                                                 (x9051
                                                                                                  (letrec ((x9052
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9052
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9053
                                                                                           x9051))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9050)))
                                                                             (x9047
                                                                              (letrec ((x9048
                                                                                        (input)))
                                                                                (cons
                                                                                 x9048
                                                                                 '()))))
                                                                      (cons
                                                                       x9049
                                                                       x9047))))
                                                            (cons
                                                             'tetra
                                                             x9046)))
                                                         (x9044 (input)))
                                                  (x9054 x9045 x9044))
                                                (letrec ((x9072
                                                          (letrec ((xj7619
                                                                    (loc
                                                                     'module))
                                                                   (xk7620
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9073
                                                                      ((lambda (j7632
                                                                                k7633
                                                                                f7634)
                                                                         (letrec ((g9074
                                                                                   (lambda (g7621
                                                                                            g7622
                                                                                            g7623
                                                                                            g7624
                                                                                            g7625
                                                                                            g7626
                                                                                            g7627
                                                                                            g7628
                                                                                            g7629
                                                                                            g7630
                                                                                            g7631)
                                                                                     (letrec ((g9075
                                                                                               (letrec ((x9076
                                                                                                         (letrec ((x9087
                                                                                                                   (COLOR/C
                                                                                                                    j7632
                                                                                                                    k7633
                                                                                                                    g7621))
                                                                                                                  (x9086
                                                                                                                   (real?/c
                                                                                                                    j7632
                                                                                                                    k7633
                                                                                                                    g7622))
                                                                                                                  (x9085
                                                                                                                   (real?/c
                                                                                                                    j7632
                                                                                                                    k7633
                                                                                                                    g7623))
                                                                                                                  (x9084
                                                                                                                   (integer?/c
                                                                                                                    j7632
                                                                                                                    k7633
                                                                                                                    g7624))
                                                                                                                  (x9083
                                                                                                                   (integer?/c
                                                                                                                    j7632
                                                                                                                    k7633
                                                                                                                    g7625))
                                                                                                                  (x9082
                                                                                                                   (integer?/c
                                                                                                                    j7632
                                                                                                                    k7633
                                                                                                                    g7626))
                                                                                                                  (x9081
                                                                                                                   (integer?/c
                                                                                                                    j7632
                                                                                                                    k7633
                                                                                                                    g7627))
                                                                                                                  (x9080
                                                                                                                   (integer?/c
                                                                                                                    j7632
                                                                                                                    k7633
                                                                                                                    g7628))
                                                                                                                  (x9079
                                                                                                                   (integer?/c
                                                                                                                    j7632
                                                                                                                    k7633
                                                                                                                    g7629))
                                                                                                                  (x9078
                                                                                                                   (integer?/c
                                                                                                                    j7632
                                                                                                                    k7633
                                                                                                                    g7630))
                                                                                                                  (x9077
                                                                                                                   (integer?/c
                                                                                                                    j7632
                                                                                                                    k7633
                                                                                                                    g7631)))
                                                                                                           (f7634
                                                                                                            x9087
                                                                                                            x9086
                                                                                                            x9085
                                                                                                            x9084
                                                                                                            x9083
                                                                                                            x9082
                                                                                                            x9081
                                                                                                            x9080
                                                                                                            x9079
                                                                                                            x9078
                                                                                                            x9077))))
                                                                                                 (TETRA/C
                                                                                                  j7632
                                                                                                  k7633
                                                                                                  x9076))))
                                                                                       g9075))))
                                                                           g9074))
                                                                       xj7619
                                                                       xk7620
                                                                       build-tetra-blocks)))
                                                              g9073)))
                                                         (x9071 (input))
                                                         (x9070 (input))
                                                         (x9069 (input))
                                                         (x9068 (input))
                                                         (x9067 (input))
                                                         (x9066 (input))
                                                         (x9065 (input))
                                                         (x9064 (input))
                                                         (x9063 (input))
                                                         (x9062 (input))
                                                         (x9061 (input)))
                                                  (x9072
                                                   x9071
                                                   x9070
                                                   x9069
                                                   x9068
                                                   x9067
                                                   x9066
                                                   x9065
                                                   x9064
                                                   x9063
                                                   x9062
                                                   x9061))
                                                (letrec ((x9098
                                                          (letrec ((xj7635
                                                                    (loc
                                                                     'module))
                                                                   (xk7636
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9099
                                                                      ((lambda (j7639
                                                                                k7640
                                                                                f7641)
                                                                         (letrec ((g9100
                                                                                   (lambda (g7637
                                                                                            g7638)
                                                                                     (letrec ((g9101
                                                                                               (letrec ((x9102
                                                                                                         (letrec ((x9104
                                                                                                                   (TETRA/C
                                                                                                                    j7639
                                                                                                                    k7640
                                                                                                                    g7637))
                                                                                                                  (x9103
                                                                                                                   (COLOR/C
                                                                                                                    j7639
                                                                                                                    k7640
                                                                                                                    g7638)))
                                                                                                           (f7641
                                                                                                            x9104
                                                                                                            x9103))))
                                                                                                 (TETRA/C
                                                                                                  j7639
                                                                                                  k7640
                                                                                                  x9102))))
                                                                                       g9101))))
                                                                           g9100))
                                                                       xj7635
                                                                       xk7636
                                                                       tetra-change-color)))
                                                              g9099)))
                                                         (x9089
                                                          (letrec ((x9090
                                                                    (letrec ((x9093
                                                                              (letrec ((x9094
                                                                                        (letrec ((x9097
                                                                                                  (input))
                                                                                                 (x9095
                                                                                                  (letrec ((x9096
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9096
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9097
                                                                                           x9095))))
                                                                                (cons
                                                                                 'posn
                                                                                 x9094)))
                                                                             (x9091
                                                                              (letrec ((x9092
                                                                                        (input)))
                                                                                (cons
                                                                                 x9092
                                                                                 '()))))
                                                                      (cons
                                                                       x9093
                                                                       x9091))))
                                                            (cons
                                                             'tetra
                                                             x9090)))
                                                         (x9088 (input)))
                                                  (x9098 x9089 x9088))
                                                (letrec ((x9119
                                                          (letrec ((xj7642
                                                                    (loc
                                                                     'module))
                                                                   (xk7643
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9120
                                                                      ((lambda (j7646
                                                                                k7647
                                                                                f7648)
                                                                         (letrec ((g9121
                                                                                   (lambda (g7644
                                                                                            g7645)
                                                                                     (letrec ((g9122
                                                                                               (letrec ((x9123
                                                                                                         (letrec ((x9125
                                                                                                                   (WORLD/C
                                                                                                                    j7646
                                                                                                                    k7647
                                                                                                                    g7644))
                                                                                                                  (x9124
                                                                                                                   (string?/c
                                                                                                                    j7646
                                                                                                                    k7647
                                                                                                                    g7645)))
                                                                                                           (f7648
                                                                                                            x9125
                                                                                                            x9124))))
                                                                                                 (WORLD/C
                                                                                                  j7646
                                                                                                  k7647
                                                                                                  x9123))))
                                                                                       g9122))))
                                                                           g9121))
                                                                       xj7642
                                                                       xk7643
                                                                       world-key-move)))
                                                              g9120)))
                                                         (x9106
                                                          (letrec ((x9107
                                                                    (letrec ((x9110
                                                                              (letrec ((x9111
                                                                                        (letrec ((x9114
                                                                                                  (letrec ((x9115
                                                                                                            (letrec ((x9118
                                                                                                                      (input))
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
                                                                                                     'posn
                                                                                                     x9115)))
                                                                                                 (x9112
                                                                                                  (letrec ((x9113
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9113
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9114
                                                                                           x9112))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9111)))
                                                                             (x9108
                                                                              (letrec ((x9109
                                                                                        (input)))
                                                                                (cons
                                                                                 x9109
                                                                                 '()))))
                                                                      (cons
                                                                       x9110
                                                                       x9108))))
                                                            (cons
                                                             'world
                                                             x9107)))
                                                         (x9105 (input)))
                                                  (x9119 x9106 x9105))
                                                (letrec ((x9140
                                                          (letrec ((xj7649
                                                                    (loc
                                                                     'module))
                                                                   (xk7650
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9141
                                                                      ((lambda (j7653
                                                                                k7654
                                                                                f7655)
                                                                         (letrec ((g9142
                                                                                   (lambda (g7651
                                                                                            g7652)
                                                                                     (letrec ((g9143
                                                                                               (letrec ((x9144
                                                                                                         (letrec ((x9148
                                                                                                                   (WORLD/C
                                                                                                                    j7653
                                                                                                                    k7654
                                                                                                                    g7651))
                                                                                                                  (x9145
                                                                                                                   (letrec ((x9146
                                                                                                                             (letrec ((x9147
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9147))))
                                                                                                                     (x9146
                                                                                                                      j7653
                                                                                                                      k7654
                                                                                                                      g7652))))
                                                                                                           (f7655
                                                                                                            x9148
                                                                                                            x9145))))
                                                                                                 (WORLD/C
                                                                                                  j7653
                                                                                                  k7654
                                                                                                  x9144))))
                                                                                       g9143))))
                                                                           g9142))
                                                                       xj7649
                                                                       xk7650
                                                                       next-world)))
                                                              g9141)))
                                                         (x9127
                                                          (letrec ((x9128
                                                                    (letrec ((x9131
                                                                              (letrec ((x9132
                                                                                        (letrec ((x9135
                                                                                                  (letrec ((x9136
                                                                                                            (letrec ((x9139
                                                                                                                      (input))
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
                                                                                                     'posn
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
                                                                                 'tetra
                                                                                 x9132)))
                                                                             (x9129
                                                                              (letrec ((x9130
                                                                                        (input)))
                                                                                (cons
                                                                                 x9130
                                                                                 '()))))
                                                                      (cons
                                                                       x9131
                                                                       x9129))))
                                                            (cons
                                                             'world
                                                             x9128)))
                                                         (x9126 (input)))
                                                  (x9140 x9127 x9126))
                                                (letrec ((x9162
                                                          (letrec ((xj7656
                                                                    (loc
                                                                     'module))
                                                                   (xk7657
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9163
                                                                      ((lambda (j7659
                                                                                k7660
                                                                                f7661)
                                                                         (letrec ((g9164
                                                                                   (lambda (g7658)
                                                                                     (letrec ((g9165
                                                                                               (letrec ((x9166
                                                                                                         (letrec ((x9167
                                                                                                                   (WORLD/C
                                                                                                                    j7659
                                                                                                                    k7660
                                                                                                                    g7658)))
                                                                                                           (f7661
                                                                                                            x9167))))
                                                                                                 (BSET/C
                                                                                                  j7659
                                                                                                  k7660
                                                                                                  x9166))))
                                                                                       g9165))))
                                                                           g9164))
                                                                       xj7656
                                                                       xk7657
                                                                       ghost-blocks)))
                                                              g9163)))
                                                         (x9149
                                                          (letrec ((x9150
                                                                    (letrec ((x9153
                                                                              (letrec ((x9154
                                                                                        (letrec ((x9157
                                                                                                  (letrec ((x9158
                                                                                                            (letrec ((x9161
                                                                                                                      (input))
                                                                                                                     (x9159
                                                                                                                      (letrec ((x9160
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9160
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9161
                                                                                                               x9159))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9158)))
                                                                                                 (x9155
                                                                                                  (letrec ((x9156
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9156
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9157
                                                                                           x9155))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9154)))
                                                                             (x9151
                                                                              (letrec ((x9152
                                                                                        (input)))
                                                                                (cons
                                                                                 x9152
                                                                                 '()))))
                                                                      (cons
                                                                       x9153
                                                                       x9151))))
                                                            (cons
                                                             'world
                                                             x9150))))
                                                  (x9162 x9149))
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
                                                                                                                   (any/c
                                                                                                                    j7665
                                                                                                                    k7666
                                                                                                                    g7664)))
                                                                                                           (f7667
                                                                                                            x9174))))
                                                                                                 (boolean?/c
                                                                                                  j7665
                                                                                                  k7666
                                                                                                  x9173))))
                                                                                       g9172))))
                                                                           g9171))
                                                                       xj7662
                                                                       xk7663
                                                                       image?)))
                                                              g9170)))
                                                         (x9168 (input)))
                                                  (x9169 x9168))
                                                (letrec ((x9177
                                                          (letrec ((xj7668
                                                                    (loc
                                                                     'module))
                                                                   (xk7669
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9178
                                                                      ((lambda (j7672
                                                                                k7673
                                                                                f7674)
                                                                         (letrec ((g9179
                                                                                   (lambda (g7670
                                                                                            g7671)
                                                                                     (letrec ((g9180
                                                                                               (letrec ((x9181
                                                                                                         (letrec ((x9183
                                                                                                                   (image?
                                                                                                                    j7672
                                                                                                                    k7673
                                                                                                                    g7670))
                                                                                                                  (x9182
                                                                                                                   (image?
                                                                                                                    j7672
                                                                                                                    k7673
                                                                                                                    g7671)))
                                                                                                           (f7674
                                                                                                            x9183
                                                                                                            x9182))))
                                                                                                 (image?
                                                                                                  j7672
                                                                                                  k7673
                                                                                                  x9181))))
                                                                                       g9180))))
                                                                           g9179))
                                                                       xj7668
                                                                       xk7669
                                                                       overlay)))
                                                              g9178)))
                                                         (x9176 (input))
                                                         (x9175 (input)))
                                                  (x9177 x9176 x9175))
                                                (letrec ((x9187
                                                          (letrec ((xj7675
                                                                    (loc
                                                                     'module))
                                                                   (xk7676
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9188
                                                                      ((lambda (j7680
                                                                                k7681
                                                                                f7682)
                                                                         (letrec ((g9189
                                                                                   (lambda (g7677
                                                                                            g7678
                                                                                            g7679)
                                                                                     (letrec ((g9190
                                                                                               (letrec ((x9191
                                                                                                         (letrec ((x9194
                                                                                                                   (real?/c
                                                                                                                    j7680
                                                                                                                    k7681
                                                                                                                    g7677))
                                                                                                                  (x9193
                                                                                                                   (real?/c
                                                                                                                    j7680
                                                                                                                    k7681
                                                                                                                    g7678))
                                                                                                                  (x9192
                                                                                                                   (string?/c
                                                                                                                    j7680
                                                                                                                    k7681
                                                                                                                    g7679)))
                                                                                                           (f7682
                                                                                                            x9194
                                                                                                            x9193
                                                                                                            x9192))))
                                                                                                 (image?
                                                                                                  j7680
                                                                                                  k7681
                                                                                                  x9191))))
                                                                                       g9190))))
                                                                           g9189))
                                                                       xj7675
                                                                       xk7676
                                                                       circle)))
                                                              g9188)))
                                                         (x9186 (input))
                                                         (x9185 (input))
                                                         (x9184 (input)))
                                                  (x9187 x9186 x9185 x9184))
                                                (letrec ((x9199
                                                          (letrec ((xj7683
                                                                    (loc
                                                                     'module))
                                                                   (xk7684
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9200
                                                                      ((lambda (j7689
                                                                                k7690
                                                                                f7691)
                                                                         (letrec ((g9201
                                                                                   (lambda (g7685
                                                                                            g7686
                                                                                            g7687
                                                                                            g7688)
                                                                                     (letrec ((g9202
                                                                                               (letrec ((x9203
                                                                                                         (letrec ((x9207
                                                                                                                   (real?/c
                                                                                                                    j7689
                                                                                                                    k7690
                                                                                                                    g7685))
                                                                                                                  (x9206
                                                                                                                   (real?/c
                                                                                                                    j7689
                                                                                                                    k7690
                                                                                                                    g7686))
                                                                                                                  (x9205
                                                                                                                   (COLOR/C
                                                                                                                    j7689
                                                                                                                    k7690
                                                                                                                    g7687))
                                                                                                                  (x9204
                                                                                                                   (COLOR/C
                                                                                                                    j7689
                                                                                                                    k7690
                                                                                                                    g7688)))
                                                                                                           (f7691
                                                                                                            x9207
                                                                                                            x9206
                                                                                                            x9205
                                                                                                            x9204))))
                                                                                                 (image?
                                                                                                  j7689
                                                                                                  k7690
                                                                                                  x9203))))
                                                                                       g9202))))
                                                                           g9201))
                                                                       xj7683
                                                                       xk7684
                                                                       rectangle)))
                                                              g9200)))
                                                         (x9198 (input))
                                                         (x9197 (input))
                                                         (x9196 (input))
                                                         (x9195 (input)))
                                                  (x9199
                                                   x9198
                                                   x9197
                                                   x9196
                                                   x9195))
                                                (letrec ((x9212
                                                          (letrec ((xj7692
                                                                    (loc
                                                                     'module))
                                                                   (xk7693
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9213
                                                                      ((lambda (j7698
                                                                                k7699
                                                                                f7700)
                                                                         (letrec ((g9214
                                                                                   (lambda (g7694
                                                                                            g7695
                                                                                            g7696
                                                                                            g7697)
                                                                                     (letrec ((g9215
                                                                                               (letrec ((x9216
                                                                                                         (letrec ((x9220
                                                                                                                   (image/c
                                                                                                                    j7698
                                                                                                                    k7699
                                                                                                                    g7694))
                                                                                                                  (x9219
                                                                                                                   (real?/c
                                                                                                                    j7698
                                                                                                                    k7699
                                                                                                                    g7695))
                                                                                                                  (x9218
                                                                                                                   (real?/c
                                                                                                                    j7698
                                                                                                                    k7699
                                                                                                                    g7696))
                                                                                                                  (x9217
                                                                                                                   (image/c
                                                                                                                    j7698
                                                                                                                    k7699
                                                                                                                    g7697)))
                                                                                                           (f7700
                                                                                                            x9220
                                                                                                            x9219
                                                                                                            x9218
                                                                                                            x9217))))
                                                                                                 (image/c
                                                                                                  j7698
                                                                                                  k7699
                                                                                                  x9216))))
                                                                                       g9215))))
                                                                           g9214))
                                                                       xj7692
                                                                       xk7693
                                                                       place-image)))
                                                              g9213)))
                                                         (x9211
                                                          (cons 'image '()))
                                                         (x9210 (input))
                                                         (x9209 (input))
                                                         (x9208
                                                          (cons 'image '())))
                                                  (x9212
                                                   x9211
                                                   x9210
                                                   x9209
                                                   x9208))
                                                (letrec ((x9223
                                                          (letrec ((xj7701
                                                                    (loc
                                                                     'module))
                                                                   (xk7702
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9224
                                                                      ((lambda (j7705
                                                                                k7706
                                                                                f7707)
                                                                         (letrec ((g9225
                                                                                   (lambda (g7703
                                                                                            g7704)
                                                                                     (letrec ((g9226
                                                                                               (letrec ((x9227
                                                                                                         (letrec ((x9229
                                                                                                                   (real?/c
                                                                                                                    j7705
                                                                                                                    k7706
                                                                                                                    g7703))
                                                                                                                  (x9228
                                                                                                                   (real?/c
                                                                                                                    j7705
                                                                                                                    k7706
                                                                                                                    g7704)))
                                                                                                           (f7707
                                                                                                            x9229
                                                                                                            x9228))))
                                                                                                 (image?
                                                                                                  j7705
                                                                                                  k7706
                                                                                                  x9227))))
                                                                                       g9226))))
                                                                           g9225))
                                                                       xj7701
                                                                       xk7702
                                                                       empty-scene)))
                                                              g9224)))
                                                         (x9222 (input))
                                                         (x9221 (input)))
                                                  (x9223 x9222 x9221))
                                                (letrec ((x9231
                                                          (letrec ((xj7708
                                                                    (loc
                                                                     'module))
                                                                   (xk7709
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9232
                                                                      ((lambda (j7711
                                                                                k7712
                                                                                f7713)
                                                                         (letrec ((g9233
                                                                                   (lambda (g7710)
                                                                                     (letrec ((g9234
                                                                                               (letrec ((x9235
                                                                                                         (letrec ((x9236
                                                                                                                   (letrec ((x9237
                                                                                                                             (letrec ((x9238
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9238))))
                                                                                                                     (x9237
                                                                                                                      j7711
                                                                                                                      k7712
                                                                                                                      g7710))))
                                                                                                           (f7713
                                                                                                            x9236))))
                                                                                                 (TETRA/C
                                                                                                  j7711
                                                                                                  k7712
                                                                                                  x9235))))
                                                                                       g9234))))
                                                                           g9233))
                                                                       xj7708
                                                                       xk7709
                                                                       list-pick-random)))
                                                              g9232)))
                                                         (x9230 (input)))
                                                  (x9231 x9230))
                                                (letrec ((xj7714 (loc 'module))
                                                         (xk7715
                                                          (loc 'importer)))
                                                  (letrec ((g9239
                                                            (integer?/c
                                                             xj7714
                                                             xk7715
                                                             neg-1)))
                                                    g9239))
                                                (letrec ((x9253
                                                          (letrec ((xj7716
                                                                    (loc
                                                                     'module))
                                                                   (xk7717
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9254
                                                                      ((lambda (j7719
                                                                                k7720
                                                                                f7721)
                                                                         (letrec ((g9255
                                                                                   (lambda (g7718)
                                                                                     (letrec ((g9256
                                                                                               (letrec ((x9257
                                                                                                         (letrec ((x9258
                                                                                                                   (WORLD/C
                                                                                                                    j7719
                                                                                                                    k7720
                                                                                                                    g7718)))
                                                                                                           (f7721
                                                                                                            x9258))))
                                                                                                 (image/c
                                                                                                  j7719
                                                                                                  k7720
                                                                                                  x9257))))
                                                                                       g9256))))
                                                                           g9255))
                                                                       xj7716
                                                                       xk7717
                                                                       world->image)))
                                                              g9254)))
                                                         (x9240
                                                          (letrec ((x9241
                                                                    (letrec ((x9244
                                                                              (letrec ((x9245
                                                                                        (letrec ((x9248
                                                                                                  (letrec ((x9249
                                                                                                            (letrec ((x9252
                                                                                                                      (input))
                                                                                                                     (x9250
                                                                                                                      (letrec ((x9251
                                                                                                                                (input)))
                                                                                                                        (cons
                                                                                                                         x9251
                                                                                                                         '()))))
                                                                                                              (cons
                                                                                                               x9252
                                                                                                               x9250))))
                                                                                                    (cons
                                                                                                     'posn
                                                                                                     x9249)))
                                                                                                 (x9246
                                                                                                  (letrec ((x9247
                                                                                                            (input)))
                                                                                                    (cons
                                                                                                     x9247
                                                                                                     '()))))
                                                                                          (cons
                                                                                           x9248
                                                                                           x9246))))
                                                                                (cons
                                                                                 'tetra
                                                                                 x9245)))
                                                                             (x9242
                                                                              (letrec ((x9243
                                                                                        (input)))
                                                                                (cons
                                                                                 x9243
                                                                                 '()))))
                                                                      (cons
                                                                       x9244
                                                                       x9242))))
                                                            (cons
                                                             'world
                                                             x9241))))
                                                  (x9253 x9240))
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
                                                                                                                   (BSET/C
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
                                                                       blocks->image)))
                                                              g9261)))
                                                         (x9259 (input)))
                                                  (x9260 x9259))
                                                (letrec ((x9273
                                                          (letrec ((xj7728
                                                                    (loc
                                                                     'module))
                                                                   (xk7729
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9274
                                                                      ((lambda (j7731
                                                                                k7732
                                                                                f7733)
                                                                         (letrec ((g9275
                                                                                   (lambda (g7730)
                                                                                     (letrec ((g9276
                                                                                               (letrec ((x9277
                                                                                                         (letrec ((x9278
                                                                                                                   (BLOCK/C
                                                                                                                    j7731
                                                                                                                    k7732
                                                                                                                    g7730)))
                                                                                                           (f7733
                                                                                                            x9278))))
                                                                                                 (image/c
                                                                                                  j7731
                                                                                                  k7732
                                                                                                  x9277))))
                                                                                       g9276))))
                                                                           g9275))
                                                                       xj7728
                                                                       xk7729
                                                                       block->image)))
                                                              g9274)))
                                                         (x9266
                                                          (letrec ((x9267
                                                                    (letrec ((x9272
                                                                              (input))
                                                                             (x9268
                                                                              (letrec ((x9271
                                                                                        (input))
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
                                                                       x9272
                                                                       x9268))))
                                                            (cons
                                                             'block
                                                             x9267))))
                                                  (x9273 x9266))
                                                (letrec ((x9287
                                                          (letrec ((xj7734
                                                                    (loc
                                                                     'module))
                                                                   (xk7735
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9288
                                                                      ((lambda (j7738
                                                                                k7739
                                                                                f7740)
                                                                         (letrec ((g9289
                                                                                   (lambda (g7736
                                                                                            g7737)
                                                                                     (letrec ((g9290
                                                                                               (letrec ((x9291
                                                                                                         (letrec ((x9293
                                                                                                                   (BLOCK/C
                                                                                                                    j7738
                                                                                                                    k7739
                                                                                                                    g7736))
                                                                                                                  (x9292
                                                                                                                   (image/c
                                                                                                                    j7738
                                                                                                                    k7739
                                                                                                                    g7737)))
                                                                                                           (f7740
                                                                                                            x9293
                                                                                                            x9292))))
                                                                                                 (image/c
                                                                                                  j7738
                                                                                                  k7739
                                                                                                  x9291))))
                                                                                       g9290))))
                                                                           g9289))
                                                                       xj7734
                                                                       xk7735
                                                                       place-block)))
                                                              g9288)))
                                                         (x9280
                                                          (letrec ((x9281
                                                                    (letrec ((x9286
                                                                              (input))
                                                                             (x9282
                                                                              (letrec ((x9285
                                                                                        (input))
                                                                                       (x9283
                                                                                        (letrec ((x9284
                                                                                                  (input)))
                                                                                          (cons
                                                                                           x9284
                                                                                           '()))))
                                                                                (cons
                                                                                 x9285
                                                                                 x9283))))
                                                                      (cons
                                                                       x9286
                                                                       x9282))))
                                                            (cons
                                                             'block
                                                             x9281)))
                                                         (x9279
                                                          (cons 'image '())))
                                                  (x9287 x9280 x9279))
                                                (letrec ((x9295
                                                          (letrec ((xj7741
                                                                    (loc
                                                                     'module))
                                                                   (xk7742
                                                                    (loc
                                                                     'importer)))
                                                            (letrec ((g9296
                                                                      ((lambda (j7744
                                                                                k7745
                                                                                f7746)
                                                                         (letrec ((g9297
                                                                                   (lambda (g7743)
                                                                                     (letrec ((g9298
                                                                                               (letrec ((x9299
                                                                                                         (letrec ((x9300
                                                                                                                   (letrec ((x9301
                                                                                                                             (letrec ((x9302
                                                                                                                                       (listof
                                                                                                                                        TETRA/C)))
                                                                                                                               (and/c
                                                                                                                                cons?/c
                                                                                                                                x9302))))
                                                                                                                     (x9301
                                                                                                                      j7744
                                                                                                                      k7745
                                                                                                                      g7743))))
                                                                                                           (f7746
                                                                                                            x9300))))
                                                                                                 (WORLD/C
                                                                                                  j7744
                                                                                                  k7745
                                                                                                  x9299))))
                                                                                       g9298))))
                                                                           g9297))
                                                                       xj7741
                                                                       xk7742
                                                                       world0)))
                                                              g9296)))
                                                         (x9294 (input)))
                                                  (x9295 x9294))))))
                                      g8735))))
                          g7783))))
              g7781)))
    g7780))
